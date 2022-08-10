#!/usr/bin/env /bin/zsh

export CHEZMOI_RESOURCES_PATH="$(dirname "$0")"
INIT_SCRIPT_PATH="$CHEZMOI_RESOURCES_PATH/init-scripts"

"$INIT_SCRIPT_PATH/install.zsh"
