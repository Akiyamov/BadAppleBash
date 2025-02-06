#!/bin/bash
# Original code: Nguyen Khac Trung Kien
# Fork by: Felipe Avelar

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" >/dev/null 2>&1 && pwd)"

usage() {
    echo
    echo "Usage: $0"
    echo "  -h, --help  Display this help message"
    echo
    exit 1
}

if [[ "$1" == "-h" || "$1" == "--help" ]]; then
    usage
fi

mkdir -p /tmp/badapple

for i in {0001..6575}; do
  wget -qO /tmp/badapple/out$i https://raw.githubusercontent.com/Akiyamov/BadAppleBash/refs/heads/main/frames-ascii/out$i.jpg.txt
done

dir="/tmp/badapple"

clear

for filename in $(ls -v "$dir"); do
    tput cup 0 0
    file="$dir/$filename"
    if [ -f "$file" ]; then
        cat "$file"
    fi

    sleep 0.024
done
