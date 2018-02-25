#!/bin/bash

USER_NAME='Evan Liomain'
USER_EMAIL='evan.liomain@gmail.com'

# Configure global git information
git config --global user.email $USER_EMAIL
git config --global user.name "$USER_NAME"

# Configure git with descend values
git config --global push.default "simple"
git config --global branch.autosetuprebase "always"
git config --global core.autocrlf "false"
