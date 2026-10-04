#!/bin/bash
# Root-level entrypoint for pstack-skydive: fetch the real installer and run it
set -e
curl -fsSL https://raw.githubusercontent.com/samuelpullen15-droid/pstack-skydive/main/pstack/install.sh -o /tmp/pstack-install-inner.sh
bash /tmp/pstack-install-inner.sh "$@"
