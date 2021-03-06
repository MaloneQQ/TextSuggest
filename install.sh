#!/bin/sh

set -e

# Script to install TextSuggest
# Assumes all dependencies are installed
# Should be run with sudo

echo "Copying dictionaries"
mkdir -p /usr/share/textsuggest/
cp -R textsuggest/* /usr/share/textsuggest/

echo "Copying configuration files"
mkdir -p ~/.config/textsuggest

echo "Installing libraries"
cp languages.py /usr/lib/python3.5/languages.py
cp fonts.py /usr/lib/python3.5/fonts.py

echo "Installing textsuggest script to /usr/bin/textsuggest"
cp TextSuggest.py /usr/bin/textsuggest
chmod +x /usr/bin/textsuggest

echo "Installing manual page"
cp textsuggest.1 /usr/local/man/textsuggest.1
