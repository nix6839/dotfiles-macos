#!/usr/bin/env /bin/zsh

curl --proto '=https' --tlsv1.2 -sSf 'https://sh.rustup.rs' |
  sh -s -- -y --no-modify-path
