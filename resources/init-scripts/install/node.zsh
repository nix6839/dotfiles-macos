#!/usr/bin/env /bin/zsh

NVM_SCRIPT_URL='https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh'

declare -a NODE_PACKAGES
NODE_PACKAGES=(
    'create-next-app' 'create-vite' 'create-turbo' '@nestjs/cli'
    'typescript' 'ts-node' 'nodemon' 'localtunnel' 'npm-check-updates'
    'sort-package-json'
)

mkdir "$NVM_DIR" && curl -o- "$NVM_SCRIPT_URL" |
    bash && . "$NVM_DIR/nvm.sh" && nvm install --lts --latest-npm &&
    corepack enable && corepack prepare pnpm@7.9.0 --activate &&
    pnpm i -g $NODE_PACKAGES