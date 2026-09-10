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
# Synchronizes the content of the icons already present in the OUDS iOS themes' Icons.xcassets/Icons/
# folder against a designer-provided ZIP archive. This script does NOT import the whole icon library:
# it only refreshes icons that are already used by the project (i.e. already have an .imageset under
# Icons.xcassets/Icons/). It never adds a new icon and never deletes an existing one, to keep the
# asset catalog limited to what is actually used in the code (memory footprint).
#
# The ZIP is expected to contain (at any depth) one root folder per theme:
#   orange/, sosh/, wireframe/
# each containing an arbitrary folder/subfolder hierarchy of .svg files (e.g. communication/,
# Component/, functional/, product/, with nested subfolders).
#
# For each theme found in the ZIP, this script:
#   1. Builds a lookup table "flattened-name -> svg path" from every .svg found in the ZIP for that
#      theme, using the same flattening rule as the icon names already in the project, e.g.:
#        Component/alert/important-fill.svg -> Component-alert-important-fill
#   2. For every .imageset already present under Icons.xcassets/Icons/ (i.e. every icon currently
#      used by the project — adding a new icon to the project is a manual step, done once by a
#      developer when they start using it):
#        - if a matching entry exists in the ZIP and its content differs -> the project's svg is
#          replaced with the ZIP's version, and this is logged ("updated").
#        - if a matching entry exists in the ZIP and its content is identical -> nothing happens.
#        - if no matching entry exists in the ZIP anymore -> the project's icon is left UNTOUCHED,
#          and this is logged ("missing in zip") so it can be followed up with the design team.
#   3. Never touches any other folder of Icons.xcassets (e.g. legacy "Components/", "_/"), and never
#      adds or removes any .imageset anywhere.
#
# Note: "OrangeCompact" theme is NOT processed: it has no Icons.xcassets of its own and reuses Orange's.
#
# Usage:
#   ./scripts/import-icons.sh /path/to/OUDS_Icons.zip
#

set -euo pipefail

SECONDS=0

# Exit codes
# ----------

EXIT_OK=0
EXIT_BAD_PARAMETERS=1
EXIT_NOT_ZIP_FILE=2
EXIT_CANNOT_COMPARE=3
EXIT_EMPTY_SOURCE=4

# Arguments
# ---------

if [ $# -ne 1 ]; then
    echo "Usage: $0 <path-to-icons.zip>"
    exit $EXIT_BAD_PARAMETERS
fi

ZIP_PATH="$1"

if [ ! -f "$ZIP_PATH" ]; then
    echo "error: file not found: $ZIP_PATH"
    exit $EXIT_NOT_ZIP_FILE
fi

# Configuration, logs and errors
# ------------------------------

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
    exit $EXIT_CANNOT_COMPARE
fi

# Functions
# ---------

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

# Syncs one theme: $1 = lowercase theme folder name expected in the zip, $2 = destination Icons.xcassets path
sync_theme() {
    local theme_name="$1"
    local dest_xcassets="$2"
    local icons_group_dir="$dest_xcassets/Icons"

    local src_dir
    src_dir="$(find "$TMP_DIR" -type d -iname "$theme_name" -not -path "*/__MACOSX/*" | head -1)"

    if [ -z "$src_dir" ]; then
        echo "warning: no '$theme_name' folder found in the zip, skipping."
        return
    fi

    if [ ! -d "$icons_group_dir" ]; then
        echo "warning: destination not found: $icons_group_dir, skipping."
        return
    fi

    # Safety guard: refuse to sync from an empty/corrupted source (wrong folder matched, __MACOSX
    # decoy, etc.) rather than silently doing nothing or, worse, comparing against garbage.
    local src_svg_count
    src_svg_count=$(find "$src_dir" -type f -iname "*.svg" | wc -l | tr -d ' ')
    if [ "$src_svg_count" -eq 0 ]; then
        echo "error: source folder '$src_dir' contains no .svg file, aborting for theme '$theme_name' (destination left untouched)."
        exit $EXIT_EMPTY_SOURCE
    fi

    echo ""
    echo "=== Syncing theme '$theme_name' ==="
    echo "Source:      $src_dir"
    echo "Destination: $icons_group_dir"

    # 1. Build a lookup table "flattened-name<TAB>svg-path" from every svg found in the zip
    local zip_map
    zip_map="$TMP_DIR/${theme_name}-zip-map.tsv"
    : > "$zip_map"

    while IFS= read -r -d '' svg; do
        local rel flat
        rel="${svg#"$src_dir"/}"
        flat="${rel%.svg}"
        flat="${flat//\//-}"
        printf '%s\t%s\n' "$flat" "$svg" >> "$zip_map"
    done < <(find "$src_dir" -type f -iname "*.svg" -print0)

    # 2. Prepare the report
    local report_dir="$LOGS_ROOT/${theme_name}-${RUN_TIMESTAMP}"
    mkdir -p "$report_dir"
    local updated_file="$report_dir/updated.txt"
    local missing_file="$report_dir/missing_in_zip.txt"
    : > "$updated_file"
    : > "$missing_file"

    local updated_count=0
    local unchanged_count=0
    local missing_count=0

    # 3. For every icon already used by the project (i.e. already an .imageset under Icons/),
    #    sync its content from the zip if a match is found and differs. Never add, never remove.
    while IFS= read -r -d '' imageset_dir; do
        local name current_svg zip_line zip_svg zip_hash current_hash

        name="$(basename "$imageset_dir" .imageset)"
        zip_line="$(awk -F '\t' -v key="$name" '$1 == key { print; exit }' "$zip_map")"

        if [ -z "$zip_line" ]; then
            missing_count=$((missing_count + 1))
            echo "$name" >> "$missing_file"
            continue
        fi

        zip_svg="${zip_line#*$'\t'}"
        zip_hash="$(sha256_of "$zip_svg")"

        current_svg="$(find "$imageset_dir" -maxdepth 1 -iname "*.svg" | head -1)"
        if [ -n "$current_svg" ]; then
            current_hash="$(sha256_of "$current_svg")"
        else
            current_hash=""
        fi

        if [ "$current_hash" = "$zip_hash" ]; then
            unchanged_count=$((unchanged_count + 1))
            continue
        fi

        # Content differs (or no svg yet): replace the svg(s) in place and refresh Contents.json
        find "$imageset_dir" -maxdepth 1 -iname "*.svg" -delete
        local zip_basename
        zip_basename="$(basename "$zip_svg")"
        cp "$zip_svg" "$imageset_dir/$zip_basename"
        write_imageset_contents_json "$imageset_dir" "$zip_basename"

        updated_count=$((updated_count + 1))
        echo "$name" >> "$updated_file"
    done < <(find "$icons_group_dir" -type d -iname "*.imageset" -print0)

    echo "Updated:        $updated_count"
    echo "Unchanged:      $unchanged_count"
    echo "Missing in zip: $missing_count (kept as-is in the project — check with the design team)"
    echo "Detailed report: $report_dir"
}

# Service
# --------

echo "Unzipping '$ZIP_PATH'..."
unzip -q "$ZIP_PATH" -d "$TMP_DIR"

sync_theme "orange" "$THEMES_ROOT/Orange/Sources/Resources/Icons.xcassets"
sync_theme "sosh" "$THEMES_ROOT/Sosh/Sources/Resources/Icons.xcassets"
sync_theme "wireframe" "$THEMES_ROOT/Wireframe/Sources/Resources/Icons.xcassets"

echo ""
echo "Done. Note: OrangeCompact reuses Orange's Icons.xcassets and was not processed."

ELAPSED=$SECONDS
printf "Elapsed time: %dm%02ds\n" $((ELAPSED / 60)) $((ELAPSED % 60))
