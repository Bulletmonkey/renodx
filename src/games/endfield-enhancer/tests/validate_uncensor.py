"""Validate the Uncensor guards against an installed, unmodified game build."""
import hashlib
import pathlib
import re
import struct
import sys
from inspect_quality_native import PE

game = pathlib.Path(sys.argv[1])
assert hashlib.sha256((game / 'GameAssembly.dll').read_bytes()).hexdigest().upper() in {
    '593D0B905F793E6BEBD25EC3432AF3F7FF0F4F0C24399EC49C3DDBB129BDC86C',
    'C24495E51B406F03B03890C4788EE618AE022C991405BE5D5B8B787CB775AE89',
}
pe = PE(str(game / 'GameAssembly.dll'))
source = (pathlib.Path(__file__).resolve().parents[1] / 'uncensor.hpp').read_text()
for name, rva in {'kPitchEntry': 0x3BE6640, 'kClearEntry': 0x3569AF0}.items():
    body = re.search(rf'{name}\[\] = \{{(.*?)\}};', source, re.S).group(1)
    signature = bytes(int(x, 16) for x in re.findall(r'0x([0-9A-F]+)', body))
    offset = pe.offset(pe.base + rva)
    assert pe.data[offset:offset + len(signature)] == signature
    assert list(pe.refs(signature)) == [offset], (name, 'nonunique signature')
    print(name, hex(rva), 'unique signature verified')
print('Supported GameAssembly SHA256 verified')
