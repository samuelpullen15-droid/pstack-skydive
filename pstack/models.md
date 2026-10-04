# pstack-skydive — org model map

Replaces `~/.cursor/rules/pstack-models.mdc`. Role names follow pstack's roles; model ids are Skydive-catalogued. Agents: read this file instead of a Cursor rules dir. If a model id is rejected by your harness, fall back to `anthropic/claude-opus-4-8` and say so.

# budget
unlimited — keep max

# roles
default: anthropic/claude-opus-4-8
how: anthropic/claude-opus-4-8
how critics: z-ai/glm-5.3-flash
architect: anthropic/claude-opus-4-8
arena runners: anthropic/claude-opus-4-8
interrogate reviewers: anthropic/claude-opus-4-8
swarm workers: z-ai/glm-5.3-flash
reflect: anthropic/claude-opus-4-8
why: z-ai/glm-5.3-flash
unslop: z-ai/glm-5.3-flash
