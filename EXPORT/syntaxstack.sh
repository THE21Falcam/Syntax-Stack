#!/bin/sh
printf '\033c\033]0;%s\a' Syntax-Stack
base_path="$(dirname "$(realpath "$0")")"
"$base_path/syntaxstack.x86_64" "$@"
