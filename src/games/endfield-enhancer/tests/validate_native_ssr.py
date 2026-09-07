"""Check the native SSR guards against an installed, unmodified game build."""
import pathlib
import re
import struct
import sys

source = (pathlib.Path(__file__).resolve().parents[1] / "enhancer.hpp").read_text()
game = pathlib.Path(sys.argv[1])


def load_pe(path):
    data = path.read_bytes()
    pe = struct.unpack_from("<I", data, 0x3c)[0]
    machine, count, timestamp = struct.unpack_from("<HHI", data, pe + 4)
    optional_size = struct.unpack_from("<H", data, pe + 20)[0]
    image_size = struct.unpack_from("<I", data, pe + 24 + 56)[0]
    sections = []
    for i in range(count):
        off = pe + 24 + optional_size + i * 40
        _, rva, size, raw = struct.unpack_from("<4I", data, off + 8)
        flags = struct.unpack_from("<I", data, off + 36)[0]
        sections.append((rva, size, raw, flags))
    return data, (machine, timestamp, image_size), sections


data, identity, sections = load_pe(game / "UnityPlayer.dll")
assert identity in ((0x8664, 0x6A85914F, 0x208B000),
                    (0x8664, 0x6A85914F, 0x208A000)), identity
checks = {"kExpectedPrologue": 0x4A7D70}
checks.update({name: int(rva, 16) for rva, name in re.findall(
    r"std::memcmp\(base \+ (0x[0-9A-F]+), (k(?:V|Ssr)\w+),", source)})
assert len(checks) == 10, checks
for name, rva in checks.items():
    values = re.search(r"constexpr uint8_t " + name + r"\[\] = \{([^}]+)\}", source)[1]
    expected = bytes(int(v, 16) for v in re.findall(r"0x[0-9A-F]+", values))
    section_rva, size, raw, flags = next(s for s in sections if s[0] <= rva < s[0] + s[1])
    assert flags & 0x20000000, name
    offset = raw + rva - section_rva
    actual = data[offset:offset + len(expected)]
    assert actual == expected, (name, actual.hex(), expected.hex())
    corrupted = bytearray(actual)
    corrupted[0] ^= 1
    assert bytes(corrupted) != expected
    if name in ("kExpectedPrologue", "kSsrReset"):
        assert sum(data[p:p+n].count(expected) for _, n, p, f in sections
                   if f & 0x20000000) == 1
    print(f"{name}: exact bytes match at UnityPlayer+{rva:X}; mutation rejected")
print("Native SSR identity, unique entry signature, router calls and full-size branches verified.")

depth_source = (pathlib.Path(__file__).resolve().parents[1] / "ssr_depth_guard.hpp").read_text()
depth_checks = re.findall(r"Guard\{(0x[0-9A-F]+), (k\w+), sizeof\(\w+\), (true|false)\}", depth_source)
assert len(depth_checks) == 7
for address, name, unique in depth_checks:
    rva = int(address, 16)
    values = re.search(r"constexpr uint8_t " + name + r"\[\] = \{([^}]+)\}", depth_source)[1]
    expected = bytes(int(v, 16) for v in re.findall(r"0x[0-9A-F]+", values))
    section_rva, size, raw, flags = next(s for s in sections if s[0] <= rva < s[0] + s[1])
    assert flags & 0x20000000
    offset = raw + rva - section_rva
    assert data[offset:offset + len(expected)] == expected, name
    if unique == "true":
        assert sum(data[p:p+n].count(expected) for _, n, p, f in sections
                   if f & 0x20000000) == 1, name
    print(f"Depth {name}: exact bytes at UnityPlayer+{rva:X}; unique={unique}")
