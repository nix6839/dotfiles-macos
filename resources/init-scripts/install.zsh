#!/usr/bin/env /bin/zsh

INSTALL_SCRIPT_PATH="$(dirname "$0")/install"
declare -a INSTALL_SCRIPTS
INSTALL_SCRIPTS=(
    'brew.zsh'
    'zsh.zsh'
    'nvim.zsh'
    'node.zsh'
    'rust.zsh'
    'golang.zsh'
    'python.zsh'
    'code.zsh'
)

for INSTALL_SCRIPT in $INSTALL_SCRIPTS; do
    "$INSTALL_SCRIPT_PATH/$INSTALL_SCRIPT"
done
