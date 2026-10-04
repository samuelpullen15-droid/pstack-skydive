#!/bin/bash
# pstack-skydive installer — usage: install.sh <full|research|prose>
ROLE="${1:-prose}"
REPO_DIR="$HOME/workspace/pstack-skydive"
SKILLS_DST="$HOME/.pi/agent/skills"
mkdir -p "$SKILLS_DST"
[ -d "$REPO_DIR" ] || git clone --depth 1 --filter=blob:none https://github.com/samuelpullen15-droid/pstack-skydive "$REPO_DIR"
cd "$REPO_DIR" || exit 1

FULL="poteto-mode how architect swarm arena interrogate tdd unslop technical-writing show-me-your-work no-comments reflect recall why figure-it-out create-verification-skill maintain-verification-skill benchmark-checklist blast-radius correct principle-fix-root-causes principle-prove-it-works principle-model-the-domain principle-type-system-discipline principle-test-behavior-not-implementation principle-guard-the-context-window principle-subtract-before-you-add principle-sequence-verifiable-units principle-make-operations-idempotent principle-never-block-on-the-human principle-outcome-oriented-execution principle-minimize-reader-load principle-exhaust-the-design-space principle-redesign-from-first-principles principle-separate-before-serializing-shared-state principle-migrate-callers-then-delete-legacy-apis principle-encode-lessons-in-structure principle-boundary-discipline principle-build-the-lever principle-attack-the-premise principle-experience-first principle-explain-the-number principle-foundational-thinking principle-laziness-protocol"
RESEARCH="how interrogate unslop technical-writing reflect recall why figure-it-out principle-prove-it-works principle-exhaust-the-design-space principle-attack-the-premise principle-explain-the-number principle-foundational-thinking principle-boundary-discipline principle-minimize-reader-load principle-guard-the-context-window"
PROSE="unslop"

case "$ROLE" in
  full) LIST="$FULL" ;;
  research) LIST="$RESEARCH" ;;
  prose) LIST="$PROSE" ;;
  *) echo "role must be full|research|prose"; exit 1 ;;
esac

count=0; missing=""
for s in $LIST; do
  if [ -d "skills/$s" ]; then cp -r "skills/$s" "$SKILLS_DST/"; count=$((count+1)); else missing="$missing $s"; fi
done
echo "installed $count skills for role: $ROLE"
[ -n "$missing" ] && echo "MISSING (not in repo):$missing"
