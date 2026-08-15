#!/usr/bin/env bash

set -euo pipefail

OUTPUT="${1:-icepick_snapshot.txt}"
ROOT="${2:-.}"

# Resolve absolute paths (important for comparison)
OUTPUT_ABS="$(realpath "$OUTPUT")"
ROOT_ABS="$(realpath "$ROOT")"

echo "Creating snapshot of: $ROOT_ABS"
echo "Output file: $OUTPUT_ABS"

{
    echo "===== ICEPICK SNAPSHOT ====="
    echo "Generated: $(date)"
    echo "Root: $ROOT_ABS"
    echo

    echo "===== DIRECTORY TREE ====="
    tree -a \
        -I '.git|node_modules|dist|build|__pycache__|*.pyc' \
        "$ROOT_ABS"
    echo

    echo "===== FILE CONTENTS ====="

    find "$ROOT_ABS" -type f \
        ! -path "*/.git/*" \
        ! -path "*/node_modules/*" \
        ! -path "*/dist/*" \
        ! -path "*/build/*" \
        ! -name "*.pyc" \
        | sort \
        | while read -r file; do

            # Skip the output file itself
            FILE_ABS="$(realpath "$file")"
            if [[ "$FILE_ABS" == "$OUTPUT_ABS" ]]; then
                continue
            fi

            echo
            echo "----- FILE: $file -----"

            if file "$file" | grep -q "text"; then
                cat "$file"
            else
                echo "[[ BINARY FILE SKIPPED ]]"
            fi

            echo
            echo "----- END FILE: $file -----"
            echo
        done

    echo "===== END SNAPSHOT ====="

} > "$OUTPUT_ABS"

echo "Snapshot complete."
