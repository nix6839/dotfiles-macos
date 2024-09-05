#!/usr/bin/env /bin/zsh

# Why comment this line? https://stackoverflow.com/a/75722775
# TODO: find better solution
# pip3.12 install --upgrade pip && pip3.12 install autopep8 pylint &&
pipx install poetry

curl -sSf https://rye.astral.sh/get | RYE_INSTALL_OPTION="--yes" bash
