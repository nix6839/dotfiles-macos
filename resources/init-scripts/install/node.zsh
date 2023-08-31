#!/usr/bin/env /bin/zsh

NVM_SCRIPT_URL='https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh'

declare -a NODE_PACKAGES
NODE_PACKAGES=(
    'create-next-app' 'create-astro' 'create-vite' 'create-svelte'
    'create-nx-workspace' 'nx' 'create-turbo' '@nestjs/cli' 'nodemon'
    'typescript' 'ts-node' 'npm-check-updates' 'sort-package-json'
)

curl -o- "$NVM_SCRIPT_URL" | bash && . "$NVM_DIR/nvm.sh" &&
    nvm install --lts --latest-npm && npm i -g corepack && corepack enable &&
    corepack install -g pnpm@latest && pnpm i -g $NODE_PACKAGES
