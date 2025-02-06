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

git clone https://github.com/Akiyamov/BadAppleBash.git /tmp/badapple

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
