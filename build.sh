#!/bin/bash

# Install Quarto locally
echo "Downloading quarto"
curl -o quarto.tar.gz -L 'https://github.com/quarto-dev/quarto-cli/releases/download/v1.2.475/quarto-1.2.475-linux-amd64.tar.gz'

# Create the .quarto directory if it doesn't exist
mkdir -p .quarto

# Extract the contents of the tarball into the .quarto directory
echo "Installing quarto"
tar -zxf quarto.tar.gz -C .quarto --strip-components=1

# Symlink the quarto binary to a folder that is in $PATH
ln -s "$(pwd)"/.quarto/bin/quarto /opt/buildhome/.binrc/bin

# Run your build commands
nbdev_docs