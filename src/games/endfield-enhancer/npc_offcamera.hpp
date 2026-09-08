#pragma once
#include "./npc_distance.hpp"
#include "./npc_loading.hpp"
#include <unordered_set>
#include <TlHelp32.h>
#include <unordered_map>

namespace endfield::npc_offcamera {
inline float enabled = 0.f, delay = 2.f, margin = 25.f, protection = 15.f;
inline float npcs_enabled = 0.f, refresh_interval = 0.1f;
inline float closest_first = 1.f;
inline bool unavailable = false;
namespace detail {
using namespace enhancer::detail;
struct Vec3 { float x, y, z; };
using Check = bool (*)(void*, void*);
using Demote = void (*)(void*, void*, void*);
inline Check blocked = nullptr, in_dialog = nullptr, can_load = nullptr, can_unload = nullptr;
inline Demote downgrade = nullptr;
using Cache = bool (*)(void*, const void*, float, void*);
inline Cache rebuild_cache = nullptr;
inline thread_local uint64_t last_reevaluate = 0;
inline thread_local void* reevaluate_manager = nullptr;
inline void* (*main_camera)() = nullptr;
inline void (*project)(void*, const Vec3*, int, Vec3*) = nullptr;
inline size_t lod_offset = 0;
inline bool installed = false;
inline std::atomic_bool active{false}, npc_active{false}, failed{false};
inline std::atomic<float> requested_refresh{0.1f};
inline std::atomic<float> requested_delay{2}, requested_margin{25}, requested_protection{15};
inline std::atomic_uint64_t generation{1}, calls{0}, rejected{0}, demotions{0}, faults{0}, projections{0};
inline std::atomic_uint64_t loaded_checks{0}, loaded_rejected{0}, near_kept{0}, missing_crowd{0}, missing_lod{0}, locked_kept{0}, forced_kept{0}, dialogue_kept{0}, downgrade_calls{0}, cache_full{0};
inline std::atomic_uint64_t recovery_until{0}, loading_kept{0};
inline uint64_t last_report = 0;
struct Entry {
  uintptr_t agent = 0, data = 0, camera = 0, lod = 0;
  int id = 0;
  uint64_t seen = 0, since = 0, checked = 0;
  bool outside = false, denying = false, model_hidden = false;
  uint64_t transition = 0;
};
inline thread_local std::unordered_map<uintptr_t, Entry> entries;
inline thread_local std::unordered_map<uintptr_t, uintptr_t> lod_agents;
inline std::atomic_uint64_t lod_load_denied{0}, lod_unload_requested{0};
inline thread_local uint64_t local_generation = 0;
inline thread_local std::unordered_map<uintptr_t, Entry> model_entries;
using LodTick = void (*)(void*, float, void*, int, void*);
inline LodTick lod_tick = nullptr;
using ModelTransition = void (*)(void*, void*);
inline ModelTransition hide_model = nullptr, show_model = nullptr;
inline void* (*get_avatar)(void*, void*) = nullptr;
inline Check avatar_visible = nullptr;
inline std::atomic_uint64_t model_hide_calls{0}, model_hidden_readback{0}, model_restore_calls{0}, model_hide_failed{0};
inline std::atomic_uint64_t npc_rejected{0}, fast_checks{0};

// Native Dictionary<int, reference>.Enumerator (exact supported IL2CPP build).
struct QueueEnumerator {
  void* dictionary; int version, index, key, padding; void* value; int kind, tail;
};
static_assert(sizeof(QueueEnumerator) == 40 && offsetof(QueueEnumerator,value) == 24);
using QueueTick = void (*)(void*, void*);
using MoveNext = bool (*)(QueueEnumerator*, void*);
using Fade = void (*)(void*, int, float, void*);
inline QueueTick process_queue = nullptr;
inline MoveNext move_next = nullptr;
inline Fade avatar_fade = nullptr;
inline std::atomic_bool nearest{true};
inline thread_local void* pending_queue = nullptr;
inline thread_local void* creating_queue = nullptr;
inline thread_local bool restoring_model = false;
struct QueueSelection {
  void* dictionary = nullptr;
  QueueEnumerator* enumerator = nullptr;
  int version = 0;
  std::unordered_set<int> visited;
};
inline thread_local QueueSelection queue_selection;
// Identity tokens only: never keep managed references or dereference them later.
inline thread_local std::unordered_map<int, uintptr_t> serviced_jobs;
inline thread_local void* serviced_controller = nullptr;
inline thread_local uint64_t serviced_generation = 0;
inline std::atomic_uint64_t queue_selected{0}, queue_rounds{0}, fade_skipped{0}, restore_blocked{0};

inline bool SelectQueueNext(QueueEnumerator* iterator, void* method) {
  if (!iterator || !iterator->dictionary || (iterator->dictionary != pending_queue && iterator->dictionary != creating_queue))
    return move_next(iterator,method);
  // Bound scanning to the supported queue size; large/foreign collections stay native.
  const int count = *reinterpret_cast<int*>(static_cast<uint8_t*>(iterator->dictionary)+0x20);
  if (count < 0 || count > 4096) return move_next(iterator,method);
  auto& selection = queue_selection;
  if (!iterator->index || selection.dictionary != iterator->dictionary || selection.enumerator != iterator || selection.version != iterator->version) {
    selection.dictionary = iterator->dictionary; selection.enumerator = iterator;
    selection.version = iterator->version; selection.visited.clear();
  }
  // Enumerate through the native method so version checks and entry validity
  // remain intact. Never reorder or mutate the actual dictionary.
  QueueEnumerator scan = *iterator, best{}, end{};
  scan.index = 0;
  bool found = false, best_serviced = true;
  float best_distance = std::numeric_limits<float>::infinity();
  while (move_next(&scan,method)) {
    if (selection.visited.contains(scan.key)) continue;
    auto* agent = static_cast<uint8_t*>(scan.value);
    const bool creating = iterator->dictionary == creating_queue;
    if (creating && agent) agent = *reinterpret_cast<uint8_t**>(agent+0x10);
    float distance = agent ? *reinterpret_cast<float*>(agent+0x58) : std::numeric_limits<float>::infinity();
    if (!std::isfinite(distance) || distance < 0) distance = std::numeric_limits<float>::infinity();
    const auto serviced_entry = serviced_jobs.find(scan.key);
    const bool serviced = creating && serviced_entry != serviced_jobs.end()
        && serviced_entry->second == reinterpret_cast<uintptr_t>(scan.value);
    if (!found || serviced < best_serviced
        || (serviced == best_serviced && nearest.load() && distance < best_distance)) {
      best = scan; best_distance = distance; best_serviced = serviced; found = true;
    }
  }
  end = scan;
  if (!found) { *iterator = end; return false; }
  if (iterator->dictionary == creating_queue) {
    if (best_serviced) { serviced_jobs.clear(); ++queue_rounds; }
    if (serviced_jobs.size() >= 4096) serviced_jobs.clear();
    serviced_jobs.insert_or_assign(best.key,reinterpret_cast<uintptr_t>(best.value));
  }
  selection.visited.insert(best.key);
  *iterator = best; ++queue_selected;
  return true;
}
inline bool HookedMoveNext(QueueEnumerator* iterator, void* method) {
  if (failed.load() || (!pending_queue && !creating_queue)) return move_next(iterator,method);
  bool result = false;
  __try { result = SelectQueueNext(iterator,method); }
  __except (EXCEPTION_EXECUTE_HANDLER) { ++faults; failed = true; return move_next(iterator,method); }
  return result;
}
inline void HookedProcessQueue(void* self, void* method) {
  if (pending_queue || creating_queue) { process_queue(self,method); return; }
  if (!active.load() || failed.load() || !self) {
    serviced_jobs.clear(); serviced_controller = nullptr;
    process_queue(self,method); return;
  }
  if (serviced_controller != self || serviced_generation != generation.load()) {
    serviced_jobs.clear(); serviced_controller = self; serviced_generation = generation.load();
  }
  __try {
    pending_queue = *reinterpret_cast<void**>(static_cast<uint8_t*>(self)+0x148);
    creating_queue = *reinterpret_cast<void**>(static_cast<uint8_t*>(self)+0x188);
  } __except (EXCEPTION_EXECUTE_HANDLER) { ++faults; failed = true; }
  queue_selection.visited.clear(); queue_selection.enumerator = nullptr;
  __try { process_queue(self,method); }
  __finally { pending_queue = nullptr; creating_queue = nullptr; queue_selection.visited.clear(); }
}
inline void HookedAvatarFade(void* self, int visible, float seconds, void* method) {
  if (restoring_model && visible > 0) { seconds = 0.f; ++fade_skipped; }
  avatar_fade(self,visible,seconds,method);
}
inline void SyncGeneration() {
  const auto current = generation.load();
  if (local_generation == current) return;
  entries.clear(); lod_agents.clear();
  // Keep ownership of model transitions until that NPC returns through its tick.
  for (auto& [key, entry] : model_entries) {
    entry.since = 0; entry.checked = 0; entry.outside = false; entry.denying = false;
  }
  local_generation = current;
}
// The map retains identities, never dereferenced pointers across callbacks.
inline Entry* IdentityEntry(std::unordered_map<uintptr_t, Entry>* map, void* object, void* data, int id, uint64_t now) {
  const auto key = reinterpret_cast<uintptr_t>(object);
  if (map->size() >= 4096 && !map->contains(key)) {
    std::erase_if(*map, [now](const auto& item) { return now - item.second.seen > 2000 && !item.second.model_hidden; });
    if (map->size() >= 4096) { ++cache_full; return nullptr; }
  }
  auto& entry = (*map)[key];
  if (entry.agent != key || entry.data != reinterpret_cast<uintptr_t>(data) || entry.id != id
      || (entry.seen && now - entry.seen > 2000 && !entry.model_hidden)) {
    entry = {}; entry.agent = key; entry.data = reinterpret_cast<uintptr_t>(data); entry.id = id;
  }
  entry.seen = now;
  return &entry;
}

// Bounded identity map: allocator address patterns must not overwrite other NPC timers.
inline Entry* FindEntry(uintptr_t address, bool create, uint64_t now) {
  auto found = entries.find(address);
  if (found != entries.end()) return &found->second;
  if (!create) return nullptr;
  if (entries.size() >= 4096) {
    std::erase_if(entries, [now](const auto& item) { return now - item.second.seen > 2000; });
    if (entries.size() >= 4096) { ++cache_full; return nullptr; }
  }
  return &entries.try_emplace(address).first->second;
}

// Conservative bounds: retain a crowd if its padded volume intersects the view.
inline bool Outside(const std::array<Vec3, 8>& points, float padding) {
  bool behind = true, left = true, right = true, below = true, above = true;
  for (const auto& p : points) {
    if (!std::isfinite(p.x) || !std::isfinite(p.y) || !std::isfinite(p.z)) return false;
    behind &= p.z < -0.1f;
    left &= p.x < -padding; right &= p.x > 1.f + padding;
    below &= p.y < -padding; above &= p.y > 1.f + padding;
  }
  if (behind) return true;
  for (const auto& p : points) if (p.z <= 0.1f) return false;
  return left || right || below || above;
}
inline bool Advance(Entry* entry, bool outside, uint64_t now, uint64_t delay_ms) {
  if (!outside) { entry->since = 0; entry->denying = false; return false; }
  if (!entry->since) entry->since = now;
  entry->denying = now - entry->since >= delay_ms;
  return entry->denying;
}
inline bool ProjectEntry(Entry* entry, const Vec3& position, float extent, uint64_t now) {
  void* camera = main_camera();
  if (!camera) return Advance(entry, false, now, 0);
  if (entry->camera != reinterpret_cast<uintptr_t>(camera)) {
    entry->camera = reinterpret_cast<uintptr_t>(camera); entry->checked = 0; entry->since = 0;
  }
  if (!entry->checked || now - entry->checked >= static_cast<uint64_t>(requested_refresh.load() * 1000.f)) {
    if (!std::isfinite(position.x) || !std::isfinite(position.y) || !std::isfinite(position.z))
      return Advance(entry, false, now, 0);
    std::array<Vec3, 8> viewport;
    for (size_t i = 0; i < viewport.size(); ++i) {
      const Vec3 corner{position.x + (i & 1 ? extent : -extent), position.y + (i & 2 ? extent * 2.f : -0.5f), position.z + (i & 4 ? extent : -extent)};
      project(camera, &corner, 2, &viewport[i]);
    }
    ++projections;
    entry->outside = Outside(viewport, requested_margin.load() * 0.01f);
    entry->checked = now;
  }
  return Advance(entry, entry->outside, now, static_cast<uint64_t>(requested_delay.load() * 1000.f));
}
inline bool Reject(void* agent) {
  ++calls;
  SyncGeneration();
  if (!agent) return false;
  auto* bytes = static_cast<uint8_t*>(agent);
  auto* data = *reinterpret_cast<uint8_t**>(bytes + 0x28);
  if (!data || bytes[0x51]) return false; // Creatures keep vanilla behavior.
  const auto address = reinterpret_cast<uintptr_t>(agent);
  const uint64_t now = GetTickCount64();
  auto* timer = FindEntry(address, true, now);
  if (!timer) return false;
  auto& entry = *timer;
  const bool loaded = *reinterpret_cast<void**>(bytes + 0x30) != nullptr;
  if (loaded) ++loaded_checks;
  const int id = *reinterpret_cast<int*>(bytes + 0x18);
  if (entry.agent != address || entry.data != reinterpret_cast<uintptr_t>(data) || entry.id != id
      || (entry.seen && now - entry.seen > 2000)) {
    entry = {}; entry.agent = address; entry.data = reinterpret_cast<uintptr_t>(data); entry.id = id;
  }
  entry.seen = now;
  // A preload handle can remain after creation; only protect agents without an entity.
  if (!loaded && (*reinterpret_cast<void**>(bytes + 0x40) || *reinterpret_cast<void**>(bytes + 0x68))) {
    ++loading_kept; return Advance(&entry, false, now, 0);
  }
  const float distance_sq = *reinterpret_cast<float*>(bytes + 0x58);
  const float near_distance = requested_protection.load();
  if (!std::isfinite(distance_sq) || distance_sq < 0 || distance_sq <= near_distance * near_distance) {
    ++near_kept; return Advance(&entry, false, now, 0);
  }
  if (loaded) {
    auto* crowd = *reinterpret_cast<uint8_t**>(bytes + 0x48);
    if (!crowd) crowd = *reinterpret_cast<uint8_t**>(*reinterpret_cast<uint8_t**>(bytes + 0x30) + 0x218);
    if (!crowd) { ++missing_crowd; return Advance(&entry, false, now, 0); }
    auto* lod = *reinterpret_cast<uint8_t**>(crowd + lod_offset);
    if (!lod) { ++missing_lod; return Advance(&entry, false, now, 0); }
    if (entry.lod && entry.lod != reinterpret_cast<uintptr_t>(lod)) lod_agents.erase(entry.lod);
    entry.lod = reinterpret_cast<uintptr_t>(lod);
    if (lod_agents.size() >= 4096 && !lod_agents.contains(entry.lod)) lod_agents.clear();
    lod_agents.insert_or_assign(entry.lod, address);
    if (lod[0x38]) { ++locked_kept; return Advance(&entry, false, now, 0); }
    if (lod[0x4f]) { ++forced_kept; return Advance(&entry, false, now, 0); }
    if (in_dialog(lod, nullptr)) { ++dialogue_kept; return Advance(&entry, false, now, 0); }
  }
  Vec3 position;
  std::memcpy(&position, data + 0x3c, sizeof(position));
  const bool result = ProjectEntry(&entry, position, 1.5f, now);
  if (result && loaded) ++loaded_rejected;
  return result;
}
inline bool HookedBlocked(void* agent, void* method) {
  const bool original = blocked(agent, method);
  if (original || !active.load() || failed.load()) return original;
  bool result = false;
  __try { result = Reject(agent); }
  __except (EXCEPTION_EXECUTE_HANDLER) { ++faults; failed = true; }
  if (result) ++rejected;
  return original || result;
}
inline void HookedDowngrade(void* self, void* agent, void* method) {
  if (active.load()) ++downgrade_calls;
  if (active.load() && !failed.load() && agent && local_generation == generation.load()) {
    const auto address = reinterpret_cast<uintptr_t>(agent);
    const auto* entry = FindEntry(address, false, GetTickCount64());
    if (entry && entry->agent == address && entry->denying && GetTickCount64() - entry->seen < 2000) ++demotions;
  }
  downgrade(self, agent, method);
}
inline bool HookedCache(void* self, const void* position, float radius, void* method) {
  const bool original = rebuild_cache(self, position, radius, method);
  const uint64_t now = GetTickCount64();
  if (failed.load() || (!active.load() && now >= recovery_until.load())) return original;
  if (original || self != reevaluate_manager || now - last_reevaluate >= static_cast<uint64_t>(requested_refresh.load() * 1000.f)) {
    last_reevaluate = now; reevaluate_manager = self;
    // Tick uses this result to bypass its player-movement-only early return.
    // Reuse the cached nearby list; do not force a spatial query or mutate it.
    return true;
  }
  return false;
}
inline bool RejectModel(void* self) {
  SyncGeneration();
  if (!self) return false;
  auto* bytes = static_cast<uint8_t*>(self);
  const bool atmospheric = bytes[0x4c] != 0;
  if (!(atmospheric ? active.load() : npc_active.load())) return false;
  auto* comp = *reinterpret_cast<uint8_t**>(bytes + 0x20);
  if (!comp) return false;
  const uint64_t now = GetTickCount64();
  auto* entry = IdentityEntry(&model_entries, self, comp, 0, now);
  if (!entry) return false;
  const float distance = *reinterpret_cast<float*>(bytes + 0x2c);
  if (bytes[0x38] || bytes[0x4f] || in_dialog(self, nullptr)
      || !std::isfinite(distance) || distance <= requested_protection.load())
    return Advance(entry, false, now, 0);
  // Same Entity -> transform component -> world position chain as PreUpdateLOD.
  auto* entity = *reinterpret_cast<uint8_t**>(comp + 0x50);
  auto* transform = entity ? *reinterpret_cast<uint8_t**>(entity + 0xb0) : nullptr;
  if (!transform) return Advance(entry, false, now, 0);
  Vec3 position;
  std::memcpy(&position, transform + 0x90, sizeof(position));
  const bool result = ProjectEntry(entry, position, 1.5f, now);
  if (result && !atmospheric) ++npc_rejected;
  return result;
}
inline bool CameraRejectsLod(void* self) {
  if (failed.load() || (!active.load() && !npc_active.load())) return false;
  __try {
    if (active.load() && local_generation == generation.load()) {
      const auto found = lod_agents.find(reinterpret_cast<uintptr_t>(self));
      if (found != lod_agents.end()) {
        const auto* entry = FindEntry(found->second, false, GetTickCount64());
        if (entry && entry->lod == reinterpret_cast<uintptr_t>(self) && GetTickCount64() - entry->seen < 2000) {
          auto* bytes = static_cast<uint8_t*>(self);
          return entry->denying && !bytes[0x38] && !bytes[0x4f] && !in_dialog(self,nullptr);
        }
      }
    }
    return RejectModel(self);
  }
  __except (EXCEPTION_EXECUTE_HANDLER) { ++faults; failed = true; return false; }
}
inline void ApplyModelTransition(void* self) {
  SyncGeneration();
  auto* bytes = static_cast<uint8_t*>(self);
  if (!bytes) return;
  if (bytes[0x4c]) return;
  const auto pending = model_entries.find(reinterpret_cast<uintptr_t>(self));
  if (pending != model_entries.end() && pending->second.model_hidden) pending->second.checked = 0;
  const bool reject = !failed.load() && npc_active.load() && RejectModel(self);
  const auto found = model_entries.find(reinterpret_cast<uintptr_t>(self));
  if (found == model_entries.end()) return;
  auto& entry = found->second;
  if (entry.data != reinterpret_cast<uintptr_t>(*reinterpret_cast<void**>(bytes + 0x20))) return;
  void* avatar = get_avatar(self,nullptr);
  if (!avatar) return;
  const uint64_t now = GetTickCount64();
  if (reject) {
    // PreUpdateLOD2 can return before CanLoadModel/_CanUnloadModel. Commit the
    // native immediate transition after that pass, including a pending fade.
    if ((!entry.model_hidden || bytes[0x3d] || avatar_visible(avatar,nullptr))
        && (!entry.transition || now - entry.transition >= 100)) {
      hide_model(self,nullptr);
      entry.model_hidden = true; entry.transition = now; ++model_hide_calls;
      if (!bytes[0x3d] && !avatar_visible(avatar,nullptr)) ++model_hidden_readback;
      else ++model_hide_failed;
    }
  } else if (entry.model_hidden) {
    // Return an NPC hidden by this mode within the native unload hysteresis.
    // Keep native rank limits: _CanUnloadModel also checks the population ceiling.
    if (can_load(self,nullptr) || !can_unload(self,nullptr)) {
      const bool previous = restoring_model; restoring_model = true;
      __try { show_model(self,nullptr); }
      __finally { restoring_model = previous; }
      ++model_restore_calls;
      if (bytes[0x3d]) { entry.model_hidden = false; entry.transition = 0; }
      else ++restore_blocked;
    } else ++restore_blocked;
  }
}
inline void HookedLodTick(void* self, float delta, void* camera, int rank, void* method) {
  if (!failed.load() && self) {
    __try {
      auto* bytes = static_cast<uint8_t*>(self);
      const bool selected = bytes[0x4c] ? active.load() : npc_active.load();
      if (selected || GetTickCount64() < recovery_until.load()) {
        // This timer is a relative countdown, decremented by PreUpdateLOD2.
        // Cap the delay instead of forcing a load through distance/population checks.
        auto* countdown = reinterpret_cast<float*>(bytes + 0x14);
        const float interval = requested_refresh.load();
        if (std::isfinite(*countdown) && *countdown > interval) {
          *countdown = interval; ++fast_checks;
        }
        CameraRejectsLod(self);
      }
    } __except (EXCEPTION_EXECUTE_HANDLER) { ++faults; failed = true; }
  }
  lod_tick(self, delta, camera, rank, method);
  __try { ApplyModelTransition(self); }
  __except (EXCEPTION_EXECUTE_HANDLER) { ++faults; failed = true; }
}
inline bool HookedCanLoad(void* self, void* method) {
  const bool original = can_load(self, method);
  if (original && CameraRejectsLod(self)) { ++lod_load_denied; return false; }
  return original;
}
inline bool HookedCanUnload(void* self, void* method) {
  const bool original = can_unload(self, method);
  if (!original && CameraRejectsLod(self)) { ++lod_unload_requested; return true; }
  return original;
}
inline bool UpdateHooks(bool attach) {
  std::vector<HANDLE> threads;
  HANDLE snapshot = CreateToolhelp32Snapshot(TH32CS_SNAPTHREAD, 0);
  THREADENTRY32 entry{sizeof(entry)};
  bool ok = snapshot != INVALID_HANDLE_VALUE && Thread32First(snapshot, &entry);
  if (ok) do {
    if (entry.th32OwnerProcessID != GetCurrentProcessId() || entry.th32ThreadID == GetCurrentThreadId()) continue;
    HANDLE thread = OpenThread(THREAD_SUSPEND_RESUME | THREAD_GET_CONTEXT | THREAD_SET_CONTEXT | THREAD_QUERY_INFORMATION, FALSE, entry.th32ThreadID);
    if (!thread) { if (GetLastError() != ERROR_INVALID_PARAMETER) { ok = false; break; } }
    else threads.push_back(thread);
  } while (Thread32Next(snapshot, &entry));
  if (snapshot != INVALID_HANDLE_VALUE) CloseHandle(snapshot);
  if (ok && DetourTransactionBegin() == NO_ERROR) {
    for (HANDLE thread : threads) if (DetourUpdateThread(thread) != NO_ERROR) { ok = false; break; }
    if (ok) ok = (attach ? DetourAttach(&blocked, HookedBlocked) : DetourDetach(&blocked, HookedBlocked)) == NO_ERROR;
    if (ok) ok = (attach ? DetourAttach(&downgrade, HookedDowngrade) : DetourDetach(&downgrade, HookedDowngrade)) == NO_ERROR;
    if (ok) ok = (attach ? DetourAttach(&rebuild_cache, HookedCache) : DetourDetach(&rebuild_cache, HookedCache)) == NO_ERROR;
    if (ok) ok = (attach ? DetourAttach(&can_load, HookedCanLoad) : DetourDetach(&can_load, HookedCanLoad)) == NO_ERROR;
    if (ok) ok = (attach ? DetourAttach(&can_unload, HookedCanUnload) : DetourDetach(&can_unload, HookedCanUnload)) == NO_ERROR;
    if (ok) ok = (attach ? DetourAttach(&lod_tick, HookedLodTick) : DetourDetach(&lod_tick, HookedLodTick)) == NO_ERROR;
    if (ok) ok = (attach ? DetourAttach(&process_queue, HookedProcessQueue) : DetourDetach(&process_queue, HookedProcessQueue)) == NO_ERROR;
    if (ok) ok = (attach ? DetourAttach(&move_next, HookedMoveNext) : DetourDetach(&move_next, HookedMoveNext)) == NO_ERROR;
    if (ok) ok = (attach ? DetourAttach(&avatar_fade, HookedAvatarFade) : DetourDetach(&avatar_fade, HookedAvatarFade)) == NO_ERROR;
    if (ok) ok = DetourTransactionCommit() == NO_ERROR;
    else DetourTransactionAbort();
  } else ok = false;
  for (HANDLE thread : threads) CloseHandle(thread);
  return ok;
}
inline bool Resolve() {
  if (!npc_distance::detail::SupportedBuild()) return false;
  auto module = GetModuleHandleW(L"GameAssembly.dll");
  auto* base = reinterpret_cast<uint8_t*>(module);
  constexpr uint8_t process_queue_bytes[] = {0x4c,0x8b,0xdc,0x49,0x89,0x4b,0x08,0x53,0x56,0x57,0x41,0x54,0x41,0x55,0x41,0x56,0x41,0x57,0x48,0x81,0xec,0x40,0x01,0x00,0x00,0x41,0x0f,0x29,0x73,0xb8,0x4c,0x8b,0xe9};
  if (std::memcmp(base + 0x3284de0, process_queue_bytes, sizeof(process_queue_bytes))) return false;
  process_queue = reinterpret_cast<decltype(process_queue)>(base + 0x3284de0);
  constexpr uint8_t move_next_bytes[] = {0x48,0x89,0x5c,0x24,0x18,0x56,0x57,0x41,0x56,0x48,0x83,0xec,0x30,0x48,0x8b,0x39,0x48,0x8b,0xd9,0x8b,0x71,0x08,0x48,0x85,0xff,0x0f,0x84,0x5a,0x01,0x00,0x00,0x3b,0x77,0x2c,0x0f,0x85,0x49,0x01,0x00,0x00,0x48,0x89,0x6c,0x24,0x58,0x0f,0x1f,0x00,0x48,0x8b,0x03,0x48,0x85,0xc0,0x0f,0x84,0x4f,0x01,0x00,0x00,0x48,0x8b,0xc8,0x8b,0x40,0x20,0x39,0x43,0x0c,0x0f,0x83,0x13,0x01,0x00,0x00,0x48,0x63,0x73,0x0c,0x48,0x8b,0x79,0x18,0x8d,0x46,0x01,0x89,0x43,0x0c,0x48,0x85,0xff,0x0f,0x84,0x1d,0x01,0x00,0x00,0x3b,0x77,0x18,0x0f,0x83,0x1a,0x01,0x00,0x00,0x48,0x8d,0x0c,0x76,0x83,0x7c,0xcf,0x20,0x00,0x48,0x8d,0x2c,0xcf,0x7c,0xb6,0x48,0x8b,0x4a,0x20,0x8b,0x7d,0x28};
  if (std::memcmp(base + 0x2ed1410, move_next_bytes, sizeof(move_next_bytes))) return false;
  move_next = reinterpret_cast<decltype(move_next)>(base + 0x2ed1410);
  constexpr uint8_t avatar_fade_bytes[] = {0x48,0x89,0x5c,0x24,0x10,0x56,0x48,0x83,0xec,0x40,0x8b,0xf2,0x0f,0x29,0x74,0x24,0x30,0x48,0x8b,0xd9,0x33,0xd2,0xb9,0x9b,0x08,0x00,0x00,0x0f,0x28,0xf2,0xe8,0xbd,0x72,0x5a,0xff};
  if (std::memcmp(base + 0x36f0690, avatar_fade_bytes, sizeof(avatar_fade_bytes))) return false;
  avatar_fade = reinterpret_cast<decltype(avatar_fade)>(base + 0x36f0690);
  constexpr uint8_t hide_model_bytes[] = {0x48,0x89,0x5c,0x24,0x08,0x57,0x48,0x83,0xec,0x20,0x48,0x8b,0xd9,0x33,0xd2,0xb9,0x4f,0x06,0x00,0x00,0xe8,0x87,0x1d,0xc3,0xff,0x33,0xd2,0x84,0xc0,0x0f,0x85,0x63,0x07,0xc8,0x01};
  if (std::memcmp(base + 0x3065bd0, hide_model_bytes, sizeof(hide_model_bytes))) return false;
  hide_model = reinterpret_cast<decltype(hide_model)>(base + 0x3065bd0);
  constexpr uint8_t show_model_bytes[] = {0x48,0x89,0x5c,0x24,0x08,0x57,0x48,0x83,0xec,0x30,0x48,0x8b,0xd9,0x0f,0x29,0x74,0x24,0x20,0xb9,0x92,0x08,0x00,0x00,0x33,0xd2,0xe8,0x02,0x1f,0xc3,0xff,0x84,0xc0};
  if (std::memcmp(base + 0x3065a50, show_model_bytes, sizeof(show_model_bytes))) return false;
  show_model = reinterpret_cast<decltype(show_model)>(base + 0x3065a50);
  constexpr uint8_t get_avatar_bytes[] = {0x40,0x53,0x48,0x83,0xec,0x20,0x48,0x8b,0xd9,0x48,0x8b,0x0d,0x70,0x80,0x31,0x0a,0x83,0xb9,0xe0,0x00,0x00,0x00,0x00,0x74,0x32,0x48,0x8b,0x81,0xb8,0x00,0x00,0x00};
  if (std::memcmp(base + 0x2cdb510, get_avatar_bytes, sizeof(get_avatar_bytes))) return false;
  get_avatar = reinterpret_cast<decltype(get_avatar)>(base + 0x2cdb510);
  constexpr uint8_t avatar_visible_bytes[] = {0x40,0x53,0x48,0x83,0xec,0x30,0x48,0x8b,0xd9,0x48,0x8b,0x0d,0x50,0x1f,0x90,0x09,0x83,0xb9,0xe0,0x00,0x00,0x00,0x00,0x0f,0x84,0xc9,0x00,0x00,0x00,0x48,0x8b,0x81,0xb8,0x00,0x00,0x00};
  if (std::memcmp(base + 0x36f1630, avatar_visible_bytes, sizeof(avatar_visible_bytes))) return false;
  avatar_visible = reinterpret_cast<decltype(avatar_visible)>(base + 0x36f1630);
  constexpr uint8_t lod_tick_bytes[] = {0x48,0x8b,0xc4,0x53,0x57,0x48,0x83,0xec,0x78,0x0f,0x29,0x70,0xd8,0x33,0xd2,0x44,0x0f,0x29,0x40,0xb8,0x49,0x8b,0xf8,0x45,0x0f,0x57,0xc0,0xc7,0x40,0x20,0x00,0x00,0x00,0x00};
  if (std::memcmp(base + 0x2cdb7a0, lod_tick_bytes, sizeof(lod_tick_bytes))) return false;
  lod_tick = reinterpret_cast<decltype(lod_tick)>(base + 0x2cdb7a0);
  constexpr uint8_t load_bytes[] = {0x40,0x53,0x48,0x83,0xec,0x30,0x48,0x8b,0xd9,0x33,0xd2,0xb9,0x8f,0x08,0x00,0x00,0xe8,0x1b,0x1a,0xc3,0xff,0x84,0xc0,0x0f,0x85,0xfd,0x04,0xc8,0x01,0x38,0x43,0x4f};
  constexpr uint8_t unload_bytes[] = {0x40,0x53,0x48,0x83,0xec,0x30,0x80,0x3d,0x87,0x34,0xb0,0x09,0x00,0x48,0x8b,0xd9,0x74,0x67,0x33,0xd2,0xb9,0xb6,0x08,0x00,0x00,0xe8,0x42,0x3d,0x8f,0xfe,0x33,0xd2};
  constexpr uint8_t cache_bytes[] = {0x48,0x8b,0xc4,0x48,0x89,0x58,0x08,0x48,0x89,0x70,0x10,0x48,0x89,0x78,0x18,0x4c,0x89,0x60,0x20,0x41,0x55,0x41,0x56,0x41,0x57,0x48,0x81,0xec,0xe0,0x00,0x00,0x00,0x0f,0x29,0x70,0xd8,0x0f,0x29,0x78,0xc8,0x44,0x0f,0x29,0x40,0xb8,0x44,0x0f,0x28,0xc2};
  constexpr uint8_t blocked_bytes[] = {0x40,0x53,0x48,0x83,0xec,0x20,0x80,0x3d,0x1d,0xd8,0xc5,0x0a,0x00,0x48,0x8b,0xd9,0x74,0x4c,0x33,0xd2,0xb9,0xee,0xeb,0x00,0x00,0xe8,0xf2,0x0c,0xa5,0xff,0x84,0xc0};
  constexpr uint8_t downgrade_bytes[] = {0x48,0x89,0x5c,0x24,0x08,0x48,0x89,0x74,0x24,0x10,0x48,0x89,0x7c,0x24,0x18,0x41,0x54,0x41,0x56,0x41,0x57,0x48,0x83,0xec,0x50,0x48,0x8b,0xfa,0x4c,0x8b,0xf9,0x33,0xd2};
  constexpr uint8_t dialog_bytes[] = {0x40,0x53,0x48,0x83,0xec,0x20,0x48,0x8b,0x05,0xe3,0x81,0x31,0x0a,0x48,0x8b,0xd9,0x83,0xb8,0xe0,0x00,0x00,0x00,0x00,0x0f,0x84,0xd4,0x00,0x00,0x00,0x48,0x8b,0x90,0xb8,0x00,0x00,0x00};
  if (std::memcmp(base + 0x3065f40, load_bytes, sizeof(load_bytes))
      || std::memcmp(base + 0x43a3c10, unload_bytes, sizeof(unload_bytes))
      || std::memcmp(base + 0x34203c0, cache_bytes, sizeof(cache_bytes))
      || std::memcmp(base + 0x3246c60, blocked_bytes, sizeof(blocked_bytes))
      || std::memcmp(base + 0x403f870, downgrade_bytes, sizeof(downgrade_bytes))
      || std::memcmp(base + 0x2cdb3a0, dialog_bytes, sizeof(dialog_bytes))) return false;
  void* (*resolve_icall)(const char*) = nullptr;
  if (!ResolveExport(module, "il2cpp_resolve_icall", &resolve_icall)) return false;
  main_camera = reinterpret_cast<decltype(main_camera)>(resolve_icall("UnityEngine.Camera::get_main()"));
  project = reinterpret_cast<decltype(project)>(resolve_icall("UnityEngine.Camera::WorldToViewportPoint_Injected(UnityEngine.Vector3&,UnityEngine.Camera/MonoOrStereoscopicEye,UnityEngine.Vector3&)"));
  auto image = FindImage("Gameplay.Beyond.dll");
  if (!image || !main_camera || !project) return false;
  // Agent and controller are nested classes: namespace-based lookup cannot find them.
  size_t (*class_count)(void*) = nullptr;
  void* (*image_class)(void*, size_t) = nullptr;
  const char* (*class_name)(void*) = nullptr;
  void* (*declaring_class)(void*) = nullptr;
  int (*field_flags)(void*) = nullptr;
  if (!ResolveExport(module,"il2cpp_image_get_class_count",&class_count)
      || !ResolveExport(module,"il2cpp_image_get_class",&image_class)
      || !ResolveExport(module,"il2cpp_class_get_name",&class_name)
      || !ResolveExport(module,"il2cpp_class_get_declaring_type",&declaring_class)
      || !ResolveExport(module,"il2cpp_field_get_flags",&field_flags)) return false;
  void* agent = nullptr;
  void* creation_job = nullptr;
  for (size_t i = 0, count = class_count(image); i < count; ++i) {
    void* candidate = image_class(image,i);
    if (candidate && std::strcmp(class_name(candidate),"AtmosphereNpcCpuCreateJob") == 0) {
      if (creation_job) return false;
      creation_job = candidate;
    }
    if (candidate && std::strcmp(class_name(candidate),"AtmosphereNpcAoiAgent") == 0) {
      void* owner = declaring_class(candidate);
      if (agent || !owner || std::strcmp(class_name(owner),"AtmosphereNpcAoiController") != 0) return false;
      agent = candidate;
    }
  }
  auto lod_type = class_from_name(image, "Beyond.NPC.Lod", "NPCCrowdLOD");
  if (!lod_type) return false;
  for (const auto& field : {std::pair{"<nextRenderLODTick>k__BackingField",0x14},
       std::pair{"<npcComp>k__BackingField",0x20}, std::pair{"<playerDistance>k__BackingField",0x2c},
       std::pair{"<isLockLOD>k__BackingField",0x38}, std::pair{"<isLoadedModel>k__BackingField",0x3d}, std::pair{"<isAtmospheric>k__BackingField",0x4c},
       std::pair{"m_tempCloseUnloadMode",0x4f}}) {
    auto handle = class_get_field_from_name(lod_type,field.first);
    if (!handle || (field_flags(handle) & 0x10) || field_get_offset(handle) != field.second) return false;
  }
  if (!agent || !creation_job) return false;
  auto job_agent = class_get_field_from_name(creation_job,"agent");
  if (!job_agent || (field_flags(job_agent) & 0x10) || field_get_offset(job_agent) != 0x10) return false;
  void* controller = declaring_class(agent);
  if (!controller) return false;
  for (const auto& field : {std::pair{"m_agentsToCreate",0x148}, std::pair{"m_agentsCreating",0x188}}) {
    auto handle = class_get_field_from_name(controller,field.first);
    if (!handle || (field_flags(handle) & 0x10) || field_get_offset(handle) != field.second) return false;
  }
  auto crowd = class_from_name(image, "Beyond.NPC", "NPCCrowdEntityComponent");
  if (!agent || !crowd) return false;
  struct Field { const char* name; size_t offset; };
  for (auto field : {Field{"nameHash",0x18}, Field{"runtimeData",0x28}, Field{"entity",0x30}, Field{"m_cachedCrowd",0x48}, Field{"m_cpuCreateJob",0x40}, Field{"preloadHandle",0x68}, Field{"isCreature",0x51}, Field{"currentDistanceSq",0x58}}) {
    auto handle = class_get_field_from_name(agent, field.name);
    if (!handle || (field_flags(handle) & 0x10) || field_get_offset(handle) != field.offset) return false;
  }
  auto entity_type = class_from_name(image, "Beyond.Gameplay.Core", "Entity");
  if (!entity_type) return false;
  auto crowd_field = class_get_field_from_name(entity_type, "<npcCrowd>k__BackingField");
  if (!crowd_field || (field_flags(crowd_field) & 0x10) || field_get_offset(crowd_field) != 0x218) return false;
  auto lod_field = class_get_field_from_name(crowd, "lod");
  if (!lod_field) return false;
  lod_offset = field_get_offset(lod_field);
  if (lod_offset < 0x100 || lod_offset > 0x400 || lod_offset % 8) return false;
  rebuild_cache = reinterpret_cast<Cache>(base + 0x34203c0);
  can_load = reinterpret_cast<Check>(base + 0x3065f40);
  can_unload = reinterpret_cast<Check>(base + 0x43a3c10);
  blocked = reinterpret_cast<Check>(base + 0x3246c60);
  downgrade = reinterpret_cast<Demote>(base + 0x403f870);
  in_dialog = reinterpret_cast<Check>(base + 0x2cdb3a0);
  return true;
}
} // namespace detail
inline void OnPresent() {
  using namespace detail;
  nearest = closest_first >= 0.5f;
  npc_loading::automatic_loading = false;
  static std::array<float, 6> previous{-1,-1,-1,-1,-1,-1};
  const std::array<float, 6> values{enabled,delay,margin,protection,npcs_enabled,refresh_interval};
  if (values != previous) {
    if ((previous[0] >= 0.5f && enabled < 0.5f) || (previous[4] >= 0.5f && npcs_enabled < 0.5f)) recovery_until = GetTickCount64() + 5000;
    active = false; npc_active = false;
    requested_refresh = std::isfinite(refresh_interval) ? std::clamp(refresh_interval,0.05f,1.f) : 0.1f;
    requested_delay = std::isfinite(delay) ? std::clamp(delay,0.5f,10.f) : 2.f;
    requested_margin = std::isfinite(margin) ? std::clamp(margin,0.f,100.f) : 25.f;
    requested_protection = std::isfinite(protection) ? std::clamp(protection,5.f,100.f) : 15.f;
    ++generation; previous = values;
  }
  if (failed) {
    if (!unavailable) Log(reshade::log::level::warning,"Endfield enhancer: off-camera entity override stopped after an invalid runtime read; vanilla eligibility restored.");
    unavailable = true; active = false; npc_active = false; return;
  }
  if (enabled < 0.5f && npcs_enabled < 0.5f) { active = false; npc_active = false; return; }
  if (!installed) {
    if (!enhancer::detail::ResolveApi()) return;
    bool ok = false;
    __try { ok = Resolve(); } __except (EXCEPTION_EXECUTE_HANDLER) {}
    if (!ok || !UpdateHooks(true)) {
      failed = true; unavailable = true;
      Log(reshade::log::level::warning,"Endfield enhancer: off-camera entity unload refused unsupported build, fields or hooks.");
      return;
    }
    installed = true;
    Log(reshade::log::level::info,"Endfield enhancer: experimental off-camera crowd and NPC model eligibility hooks installed.");
  }
  active = enabled >= 0.5f; npc_active = npcs_enabled >= 0.5f;
  npc_loading::automatic_loading = active.load();
  if (GetTickCount64() - last_report >= 5000) {
    last_report = GetTickCount64();
    char text[256];
    std::snprintf(text,sizeof(text),"Endfield enhancer: off-camera crowd 5s checks=%llu bounds=%llu rejected=%llu matched_downgrades=%llu faults=%llu.",
        calls.exchange(0),projections.exchange(0),rejected.exchange(0),demotions.exchange(0),faults.exchange(0));
    Log(reshade::log::level::info,text);
    char reasons[384];
    std::snprintf(reasons,sizeof(reasons),"Endfield enhancer: off-camera reasons 5s loaded=%llu loaded_rejected=%llu near=%llu missing_crowd=%llu missing_lod=%llu locked=%llu unload_protected=%llu dialogue=%llu all_downgrades=%llu cache_full=%llu loading_kept=%llu.",
        loaded_checks.exchange(0),loaded_rejected.exchange(0),near_kept.exchange(0),missing_crowd.exchange(0),missing_lod.exchange(0),locked_kept.exchange(0),forced_kept.exchange(0),dialogue_kept.exchange(0),downgrade_calls.exchange(0),cache_full.exchange(0),loading_kept.exchange(0));
    Log(reshade::log::level::info,reasons);
    std::snprintf(reasons,sizeof(reasons),"Endfield enhancer: off-camera LOD 5s load_denied=%llu unload_requested=%llu.",lod_load_denied.exchange(0),lod_unload_requested.exchange(0));
    Log(reshade::log::level::info,reasons);
    std::snprintf(reasons,sizeof(reasons),"Endfield enhancer: off-camera extensions 5s npc_rejected=%llu fast_checks=%llu.",
        npc_rejected.exchange(0),fast_checks.exchange(0));
    Log(reshade::log::level::info,reasons);
    std::snprintf(reasons,sizeof(reasons),"Endfield enhancer: off-camera transitions 5s npc_hide=%llu npc_hidden=%llu npc_hide_failed=%llu npc_restore=%llu.",
        model_hide_calls.exchange(0),model_hidden_readback.exchange(0),model_hide_failed.exchange(0),model_restore_calls.exchange(0));
    Log(reshade::log::level::info,reasons);
    std::snprintf(reasons,sizeof(reasons),"Endfield enhancer: reload queue 5s selected=%llu rounds=%llu fade_skipped=%llu restore_blocked=%llu.",
        queue_selected.exchange(0),queue_rounds.exchange(0),fade_skipped.exchange(0),restore_blocked.exchange(0));
    Log(reshade::log::level::info,reasons);
  }
}
inline void Shutdown() {
  npc_loading::automatic_loading = false;
  detail::active = false; detail::npc_active = false;
  if (detail::installed && !detail::UpdateHooks(false))
    enhancer::detail::Log(reshade::log::level::error,"Endfield enhancer: off-camera entity hook detach failed.");
  else detail::installed = false;
}
} // namespace endfield::npc_offcamera
