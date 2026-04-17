#!/bin/bash
DIR="$(cd "$(dirname "$0")" && pwd)/img"
for f in "$DIR"/*.HEIC "$DIR"/*.heic; do
  [ -f "$f" ] || continue
  sips -s format png "$f" --out "${f%.*}.png"
  rm "$f"
done
