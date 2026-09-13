# First-person conversation model switching

Build `endfield-enhancer` with the `clang-x64-release` build preset. Inspect
`build/Release/renodx-endfield-enhancer.addon64`.

Normal NPC conversations use `DialogManager.m_mainEntity` as the first-person
camera's character, with the gameplay character as the fallback when that field
is empty. The field is resolved and checked against the supported game's Entity
type and offset. Model changes refresh the cached head and mesh bindings. A
temporarily unavailable model keeps the saved view eligible for a later retry.

The camera retains `DialogManager.get_interactNpc` as its focus target, finds
that NPC's head using the same hierarchy search as first-person anchoring, and
blends from the incoming view over 0.65 seconds with smooth easing. It then
centers the head from the final camera position, including camera offsets.
On exit, the final focused view is transferred to the gameplay camera's yaw
and pitch controls using its pitch-to-vertical-value curve. The incoming view
is only restored when no NPC focus was acquired.

NPC model lookup uses `Entity.get_iModelCom` and virtual dispatch of
`IModelComponent.GetModelGo`, covering crowd NPCs whose `modelCom` is absent.
The log reports `conversation focus: blending/tracking NPC head` or the exact
missing component/head when focus cannot start.

Manual verification after restarting with the candidate:

1. Enable Camera Controls, First Person, and First Person Conversations. Start
   as a character of a different height from the Endministrator.
2. Enter a normal conversation that substitutes the Endministrator. Verify the
   camera follows the new head position, including after any loading transition.
3. With Hide Head enabled, verify it applies to the substituted model.
   Check that the initiating NPC's head moves smoothly to the center of the
   screen, including NPCs taller or shorter than the player. Other speakers
   must not change the focus target. Check repeated chats and loading gaps.
4. Exit the conversation. Verify the camera follows the gameplay character again
   and retains the final focused viewing direction. Move the mouse to verify
   normal camera control resumes from that angle. Repeat the conversation.
5. Check a conversation without a character swap, then disable First Person
   Conversations and verify native dialogue framing. Cinematic dialogue should
   retain its native camera.

The user confirmed the model-switch correction in-game. Mocked dialogue tests
cover focus easing, centering, target retention, model replacement, loading,
degenerate targets, and cleanup. Release validation passes. The user confirmed
the NPC focus blend and retained exit angle work correctly in-game.
