#!/usr/bin/env /bin/zsh

# # Install brew
BREW_SCRIPT_URL='https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh'
/bin/bash -c "$(curl -fsSL ${BREW_SCRIPT_URL})"

# Enable brew font cask
brew tap homebrew/cask-fonts

# Font & CLI
declare -a FONT_PACKAGES
declare -a CLI_PACKAGES
FONT_PACKAGES=(
    'font-d2coding' 'font-jetbrains-mono' 'font-jetbrains-mono-nerd-font'
    'font-pretendard'
)
CLI_PACKAGES=(
    'git' 'neovim' 'chezmoi' 'lsd' 'bat' 'fd' 'tealdeer' 'git-delta' 'gnupg'
    'pinentry-mac' 'shellcheck' 'go' 'golangci-lint' 'mas' 'python@3.10'
    'mkcert'
)

brew install $FONT_PACKAGES $CLI_PACKAGES

# Cask
declare -a CASK_PACKAGES
CASK_PACKAGES=(
    'gureumkim' 'microsoft-edge' 'alacritty' 'discord' 'bitwarden'
    'visual-studio-code' 'notion' 'slack' 'spotify' 'telegram-desktop'
    'dropbox' 'remix-ide' 'firefox' 'figma'
    # Does not support m1 native
    'tutanota'
)

brew install --cask $CASK_PACKAGES

CASK_NO_QUARANTINE_PACKAGES=(
    'chromium'
)

brew install --cask --no-quarantine $CASK_NO_QUARANTINE_PACKAGES
