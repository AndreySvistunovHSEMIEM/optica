#!/bin/bash
for f in /img/*.HEIC /img/*.heic; do
  [ -f "$f" ] || continue
  sips -s format png "$f" --out "${f%.*}.png"
  rm "$f"
done
