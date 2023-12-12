#!/usr/bin/env /bin/zsh

declare -a NODE_PACKAGES
NODE_PACKAGES=(
	'create-next-app' 'create-astro' 'create-vite' 'create-svelte'
	'create-nx-workspace' 'nx' 'create-turbo' '@nestjs/cli' 'nodemon'
	'typescript' 'ts-node' 'npm-check-updates' 'sort-package-json'
)

eval "$(fnm env --use-on-cd)" && fnm install 18 --corepack-enabled &&
	fnm default 18 && npm i -g npm corepack &&
	corepack install -g pnpm@latest && pnpm i -g $NODE_PACKAGES
