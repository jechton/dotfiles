#!/usr/bin/env bash

html=$(curl -s "$1")
page_title=$(echo "$html" | grep -o '<title>.*</title>' | sed 's/<[^>]*>//g')
title_string=$(echo "$page_title" | tr -cd '[:alnum:] -/' | sed 's/  */ /g' | tr ' ' '-' | tr '/' '-' | sed 's/--*/-/g' | tr '[:upper:]' '[:lower:]')

file="$HOME/Obsidian/Vault/$title_string.md"
touch "$file"
cat >"$file" <<EOF
---
tags: website
---
[$page_title]($1)
EOF
