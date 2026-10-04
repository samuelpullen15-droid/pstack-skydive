# pstack-skydive — adaptation notes

This is the DesignSpark Studio fork of [cursor/plugins pstack](https://github.com/cursor/plugins/tree/main/pstack), adapted for the Skydive agent platform.

## What was changed from upstream
1. **Spawn primitive:** Cursor's `Task` tool (`subagent_type: generalPurpose`, `environment: "cloud"`) → Skydive's `subagent` tool (`{ tasks: [{ task, title, persona?, model?, timeoutMinutes? }] }`). Multi-worker = multiple task objects in one call; each rewakes the caller.
2. **Model config:** `~/.cursor/rules/pstack-models.mdc` → this repo's `models.md`. Slugs are Skydive-catalogued ids.
3. **`AskQuestion`** → Skydive's `platform ask` (structured multiple-choice picker).
4. **`cursor-team-kit` skills:** `deslop` → in-repo `unslop`; `control-cli`/`control-ui` → the environment's own drivers (agent-browser for web UIs, direct CLI runs otherwise).

## Who installs what
- **full** (eng five: Hermione, Romeo, Vigil, Paige, Matt): poteto-mode + principles + architect/swarm/arena/interrogate/tdd/unslop/technical-writing/no-comments + verification scaffolding.
- **research** (Vera, Bun, Flute): how, interrogate, unslop, technical-writing, reflect/recall/why, principle-prove-it-works, principle-exhaust-the-design-space, principle-attack-the-premise, principle-explain-the-number, principle-foundational-thinking, principle-boundary-discipline, principle-minimize-reader-load, principle-guard-the-context-window.
- **prose** (Marco, Ren, Babs, Maverick, Herald): unslop.

## Install (each agent runs in its own sandbox)
```
bash <(curl -fsSL https://raw.githubusercontent.com/samuelpullen15-droid/pstack-skydive/main/install.sh) <full|research|prose>
```
