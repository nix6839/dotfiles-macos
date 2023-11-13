#!/usr/bin/env /bin/zsh

# Install brew
BREW_SCRIPT_URL='https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh'
/bin/bash -c "$(curl -fsSL ${BREW_SCRIPT_URL})"

brew bundle --file "$CHEZMOI_RESOURCES_PATH/Brewfile"
