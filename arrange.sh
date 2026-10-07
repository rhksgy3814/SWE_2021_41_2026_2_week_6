#!/bin/bash
cd "$(dirname "$0")"

for f in files/*; do
  [ -f "$f" ] || continue
  name=$(basename "$f")
  first=$(echo "${name:0:1}" | tr 'A-Z' 'a-z')
  if [ -d "$first" ]; then
    mv "$f" "$first/"
  else
    echo "건너뜀: $name (대상 폴더 없음)"
  fi
done
