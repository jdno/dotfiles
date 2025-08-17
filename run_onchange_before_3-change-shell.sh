#!/usr/bin/env bash

# Change shell
#
# This script changes the user's default shell to zsh.

sudo chsh -s $(which zsh) $(whoami)
