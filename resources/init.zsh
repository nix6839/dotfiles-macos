#!/usr/bin/env /bin/zsh

export CHEZMOI_RESOURCES_PATH="$(dirname "$0")/resources"
INIT_SCRIPT_PATH="$CHEZMOI_RESOURCES_PATH/init-scripts"

"$CHEZMOI_INIT_SCRIPTS_PATH/install.zsh"
