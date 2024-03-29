#!/usr/bin/env /bin/zsh

declare -a RUST_PACKAGES
RUST_PACKAGES=(
	'cargo-update' 'cargo-expand' 'cargo-tarpaulin' 'cargo-license' 'cargo-audit'
	'sqlx-cli'
)

curl --proto '=https' --tlsv1.2 -sSf 'https://sh.rustup.rs' |
	sh -s -- -y --no-modify-path && cargo install $RUST_PACKAGES
