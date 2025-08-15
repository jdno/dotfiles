# syntax=docker/dockerfile:1

FROM ubuntu:plucky-20250714

ENV DEBIAN_FRONTEND=noninteractive

# Install base OS packages
RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        curl \
        git \
        just \
        jq \
        nodejs \
        npm \
        parallel \
        python3 \
        python3-pip \
    && rm -rf /var/lib/apt/lists/*

# Install global developer tools as root
RUN npm install -g prettier markdownlint-cli \
    && pip3 install --no-cache-dir --break-system-packages pre-commit yamllint

# Create a non-root user for development
RUN groupadd vscode && useradd --create-home --gid vscode -s /bin/bash vscode \
    && echo vscode ALL=\(root\) NOPASSWD:ALL > /etc/sudoers

# Create workspace directory and set permissions
RUN mkdir -p /workspaces/dotfiles \
    && chown -R vscode:vscode /workspaces/dotfiles

# Run commands in the container as the vscode user
USER vscode

# Set working directory inside container
WORKDIR /workspaces/dotfiles

# Default command
CMD ["sleep", "infinity"]
