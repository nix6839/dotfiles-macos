#!/usr/bin/env /bin/zsh

xargs -L 1 code --install-extension < \
    "$CHEZMOI_RESOURCES_PATH/code-extensions.list"
