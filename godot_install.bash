#!/bin/bash
set -e

VERSION="3.2.1"
FILENAME="Godot_v$VERSION-stable_x11.64"
URL="https://downloads.tuxfamily.org/godotengine/$VERSION/$FILENAME.zip"
INSTALL_DIR="$HOME/opt/godot-$VERSION"
TEMP_DIR=$(mktemp -d)

cd "$TEMP_DIR"
echo "Downloading Godot version $VERSION ..."
wget --quiet --show-progress "$URL" -O godot.zip

mkdir -p "$INSTALL_DIR"
mkdir -p "$HOME/bin"
unzip godot.zip -d "$INSTALL_DIR"
ln -s "$INSTALL_DIR/$FILENAME" "$HOME/bin/godot"

echo "Godot Installed to:"
echo "$INSTALL_DIR"
