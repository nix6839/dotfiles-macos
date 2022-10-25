#!/usr/bin/env /bin/zsh

NVM_SCRIPT_URL='https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.2/install.sh'

declare -a NODE_PACKAGES
NODE_PACKAGES=(
    'create-next-app' 'create-vite' 'create-svelte' 'create-turbo' '@nestjs/cli'
    'typescript' 'ts-node' 'nodemon' 'localtunnel' 'npm-check-updates'
    'sort-package-json'
)

curl -o- "$NVM_SCRIPT_URL" | bash && . "$NVM_DIR/nvm.sh" &&
    nvm install --lts --latest-npm && npm i -g corepack && corepack enable &&
    corepack prepare pnpm@7.14.0 --activate && pnpm i -g $NODE_PACKAGES
