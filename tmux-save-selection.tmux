#!/usr/bin/env bash

CURRENT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
tmux bind-key -tvi-copy ">" copy-pipe "sh $CURRENT_DIR/scripts/pipe-selection.sh"
