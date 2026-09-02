#!/bin/bash
#
# Software Name: OUDS iOS
# SPDX-FileCopyrightText: Copyright (c) Orange SA
# SPDX-License-Identifier: MIT
#
# This software is distributed under the MIT license,
# the text of which is available at https://opensource.org/license/MIT/
# or see the "LICENSE" file for more details.
#
# Software description: A SwiftUI components library with code examples for Orange Unified Design System
#

#
# import-icons.sh
#
# Imports icons from a designer-provided ZIP archive into the OUDS iOS themes' Icons.xcassets.
#
# The ZIP is expected to contain (at any depth) one root folder per theme:
#   orange/, sosh/, wireframe/
# each containing an arbitrary folder/subfolder hierarchy of .svg files (e.g. communication/,
# Component/, functional/, product/, with nested subfolders).
#
# For each theme found in the ZIP, this script:
#   1. Wipes the theme's Icons.xcassets/Icons/ folder (creates it if missing). This folder is
#      dedicated to icons imported from the designer ZIP; any other folder in Icons.xcassets
#      (e.g. legacy "Components/", "_/") is left untouched and never modified by this script.
#   2. Recreates the exact same folder hierarchy as in the ZIP under Icons.xcassets/Icons/
#   3. Creates one .imageset per .svg file, named after its full relative path (flattened with '-')
#      to guarantee uniqueness across the whole asset catalog namespace, e.g.:
#        Component/accordion/expanded-true.svg -> Icons/Component/accordion/Component-accordion-expanded-true.imageset
#   4. Compares the previous and new set of icons (by name and by SVG content) and logs added,
#      removed and modified icons, both as a console summary and as detailed report files under
#      scripts/.icon-import-logs/<theme>-<timestamp>/.
#
# Note: "OrangeCompact" theme is NOT processed: it has no Icons.xcassets of its own and reuses Orange's.
#
# Usage:
#   ./scripts/import-icons.sh /path/to/OUDS_Icons.zip
#

set -euo pipefail

# MARK: - Arguments

if [ $# -ne 1 ]; then
    echo "Usage: $0 <path-to-icons.zip>"
    exit 1
fi

ZIP_PATH="$1"

if [ ! -f "$ZIP_PATH" ]; then
    echo "error: file not found: $ZIP_PATH"
    exit 1
fi

# MARK: - Setup

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
REPO_ROOT="$(cd "$SCRIPT_DIR/.." && pwd)"

THEMES_ROOT="$REPO_ROOT/OUDS/Core/Themes"
LOGS_ROOT="$SCRIPT_DIR/.icon-import-logs"
RUN_TIMESTAMP="$(date +%Y%m%d-%H%M%S)"

TMP_DIR="$(mktemp -d)"
trap 'rm -rf "$TMP_DIR"' EXIT

# sha256 tool detection (macOS ships shasum, Linux usually has sha256sum)
if command -v shasum >/dev/null 2>&1; then
    sha256_of() { shasum -a 256 "$1" | awk '{print $1}'; }
elif command -v sha256sum >/dev/null 2>&1; then
    sha256_of() { sha256sum "$1" | awk '{print $1}'; }
else
    echo "error: neither 'shasum' nor 'sha256sum' is available on this system."
    exit 1
fi

echo "Unzipping '$ZIP_PATH'..."
unzip -q "$ZIP_PATH" -d "$TMP_DIR"

# MARK: - Helpers

# Writes a minimal group Contents.json (used for the root and every intermediate folder)
write_group_contents_json() {
    local dir="$1"
    cat > "$dir/Contents.json" <<'EOF'
{
  "info" : {
    "author" : "xcode",
    "version" : 1
  }
}
EOF
}

# Writes the Contents.json of an .imageset, referencing the given svg filename
write_imageset_contents_json() {
    local imageset_dir="$1"
    local svg_filename="$2"
    cat > "$imageset_dir/Contents.json" <<EOF
{
  "images" : [
    {
      "filename" : "$svg_filename",
      "idiom" : "universal"
    }
  ],
  "info" : {
    "author" : "xcode",
    "version" : 1
  }
}
EOF
}

# Snapshots the current state of an Icons.xcassets folder as "<imageset-name><TAB><sha256-of-svg>",
# one line per imageset, sorted by name. Used to compute added/removed/modified icons.
snapshot_state() {
    local xcassets_dir="$1"
    local out_file="$2"

    : > "$out_file"

    if [ ! -d "$xcassets_dir" ]; then
        return
    fi

    while IFS= read -r -d '' imageset_dir; do
        local name svg_file hash
        name="$(basename "$imageset_dir" .imageset)"
        svg_file="$(find "$imageset_dir" -maxdepth 1 -iname "*.svg" | head -1)"
        if [ -n "$svg_file" ]; then
            hash="$(sha256_of "$svg_file")"
        else
            hash="no-svg"
        fi
        printf '%s\t%s\n' "$name" "$hash" >> "$out_file"
    done < <(find "$xcassets_dir" -type d -iname "*.imageset" -print0)

    sort -o "$out_file" "$out_file"
}

# Compares two snapshot files ($1 = before, $2 = after) and logs a summary + detailed report files
# under $LOGS_ROOT/<theme>-<timestamp>/.
report_diff() {
    local theme_name="$1"
    local before_file="$2"
    local after_file="$3"

    local report_dir="$LOGS_ROOT/${theme_name}-${RUN_TIMESTAMP}"
    mkdir -p "$report_dir"

    local added_file="$report_dir/added.txt"
    local removed_file="$report_dir/removed.txt"
    local modified_file="$report_dir/modified.txt"

    # Added: names present in "after" but not in "before"
    join -t "$(printf '\t')" -v 2 -1 1 -2 1 \
        <(cut -f1 "$before_file") \
        "$after_file" \
        | cut -f1 > "$added_file"

    # Removed: names present in "before" but not in "after"
    join -t "$(printf '\t')" -v 1 -1 1 -2 1 \
        "$before_file" \
        <(cut -f1 "$after_file") \
        | cut -f1 > "$removed_file"

    # Modified: names present in both, with a different hash
    join -t "$(printf '\t')" -1 1 -2 1 "$before_file" "$after_file" \
        | awk -F '\t' '$2 != $3 { print $1 }' > "$modified_file"

    local added_count removed_count modified_count total_before total_after unchanged_count
    added_count=$(wc -l < "$added_file" | tr -d ' ')
    removed_count=$(wc -l < "$removed_file" | tr -d ' ')
    modified_count=$(wc -l < "$modified_file" | tr -d ' ')
    total_before=$(wc -l < "$before_file" | tr -d ' ')
    total_after=$(wc -l < "$after_file" | tr -d ' ')
    unchanged_count=$((total_after - added_count - modified_count))

    echo ""
    echo "--- Icon diff for theme '$theme_name' ---"
    echo "Before: $total_before icon(s), After: $total_after icon(s)"
    echo "Added:    $added_count"
    echo "Removed:  $removed_count"
    echo "Modified: $modified_count"
    echo "Unchanged: $unchanged_count"
    echo "Detailed report: $report_dir"
}

# Imports one theme: $1 = lowercase theme folder name expected in the zip, $2 = destination Icons.xcassets path
import_theme() {
    local theme_name="$1"
    local dest_xcassets="$2"
    local icons_group_dir="$dest_xcassets/Icons"

    local src_dir
    src_dir="$(find "$TMP_DIR" -type d -iname "$theme_name" | head -1)"

    if [ -z "$src_dir" ]; then
        echo "warning: no '$theme_name' folder found in the zip, skipping."
        return
    fi

    if [ ! -d "$dest_xcassets" ]; then
        echo "warning: destination not found: $dest_xcassets, skipping."
        return
    fi

    echo ""
    echo "=== Importing theme '$theme_name' ==="
    echo "Source:      $src_dir"
    echo "Destination: $icons_group_dir"

    # 0. Snapshot the current state (name -> svg hash) before wiping anything
    local before_snapshot after_snapshot
    before_snapshot="$TMP_DIR/${theme_name}-before.tsv"
    after_snapshot="$TMP_DIR/${theme_name}-after.tsv"
    snapshot_state "$icons_group_dir" "$before_snapshot"

    # 1. Wipe the Icons/ group only (never touch other folders of Icons.xcassets, e.g. legacy "Components/", "_/")
    rm -rf "$icons_group_dir"
    mkdir -p "$icons_group_dir"
    write_group_contents_json "$icons_group_dir"

    # 2. Copy every svg found, rebuilding the same hierarchy under Icons/
    local count=0
    local skipped=0

    while IFS= read -r -d '' svg; do
        local rel reldir base flat target_group_dir imageset_dir

        rel="${svg#"$src_dir"/}"
        reldir="$(dirname "$rel")"
        base="$(basename "$rel" .svg)"

        # Flatten the full relative path (without extension) to build a globally unique imageset name
        flat="${rel%.svg}"
        flat="${flat//\//-}"

        if [ "$reldir" = "." ]; then
            target_group_dir="$icons_group_dir"
        else
            target_group_dir="$icons_group_dir/$reldir"
        fi

        mkdir -p "$target_group_dir"

        imageset_dir="$target_group_dir/$flat.imageset"
        mkdir -p "$imageset_dir"

        cp "$svg" "$imageset_dir/$base.svg"
        write_imageset_contents_json "$imageset_dir" "$base.svg"

        count=$((count + 1))
    done < <(find "$src_dir" -type f -iname "*.svg" -print0)

    # 3. Warn about any non-svg, non-hidden file found in the source (e.g. leftover .DS_Store are ignored silently)
    while IFS= read -r -d '' other; do
        local name
        name="$(basename "$other")"
        if [ "$name" != ".DS_Store" ]; then
            echo "warning: ignored non-svg file: ${other#"$src_dir"/}"
            skipped=$((skipped + 1))
        fi
    done < <(find "$src_dir" -type f ! -iname "*.svg" -print0)

    # 4. Ensure every intermediate group folder under Icons/ has a Contents.json
    while IFS= read -r -d '' dir; do
        if [ ! -f "$dir/Contents.json" ]; then
            write_group_contents_json "$dir"
        fi
    done < <(find "$icons_group_dir" -type d ! -iname "*.imageset" -print0)

    echo "Imported $count icon(s) for theme '$theme_name' (ignored $skipped non-svg file(s))."

    # 5. Snapshot the new state and report the diff against the previous state
    snapshot_state "$icons_group_dir" "$after_snapshot"
    report_diff "$theme_name" "$before_snapshot" "$after_snapshot"
}

# MARK: - Run

import_theme "orange" "$THEMES_ROOT/Orange/Sources/Resources/Icons.xcassets"
import_theme "sosh" "$THEMES_ROOT/Sosh/Sources/Resources/Icons.xcassets"
import_theme "wireframe" "$THEMES_ROOT/Wireframe/Sources/Resources/Icons.xcassets"

echo ""
echo "Done. Note: OrangeCompact reuses Orange's Icons.xcassets and was not processed."
