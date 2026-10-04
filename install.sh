#!/bin/bash
# Root-level entrypoint — delegates to pstack/install.sh
exec bash "$(dirname "$0")/pstack/install.sh" "$@"
