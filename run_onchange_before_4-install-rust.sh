#!/usr/bin/env bash

# Install Rust
#
# Run the script to install Rustup. See https://rust-lang.org/tools/install/

curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y --no-modify-path
