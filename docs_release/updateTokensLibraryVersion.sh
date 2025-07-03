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
# Authors: See CONTRIBUTORS.txt
# Software description: A SwiftUI components library with code examples for Orange Unified Design System
#

set -euo pipefail

# Configuration
# -------------

OUDS_VERSION_SWIFT_FILE="../OUDS/Core/OUDS/Sources/OUDSVersions.swift"
OUDS_README_FILE="../README.md"
RAW_TOKENS_MARKDOWN_FILE="../OUDS/Core/Tokens/RawTokens/Sources/_OUDSTokensRaw.docc/OUDSTokensRaw.md"
SEMANTIC_TOKENS_MARKDOWN_FILE="../OUDS/Core/Tokens/SemanticTokens/Sources/_OUDSTokensSemantic.docc/OUDSTokensSemantic.md"
COMPONENT_TOKENS_MARKDOWN_FILE="../OUDS/Core/Tokens/ComponentTokens/Sources/_OUDSTokensComponent.docc/OUDSTokensComponent.md"
CORE_THEME_MARKDOWN_FILE="../OUDS/Core/OUDS/Sources/_OUDS.docc/_OUDS.md"
ORANGE_THEME_MARKDOWN_FILE="../OUDS/Core/Themes/Orange/Sources/_OUDSThemesOrange.docc/OUDSThemesOrange.md"

CORE_VERSION_PATTERN="🧱 Core version: "
THEME_VERSION_PATTERN="🧱 Theme version: "

# Errors
# ------

EXIT_OK=0
EXIT_ERROR_BAD_PARAMETER_COUNT=1
EXIT_MISSING_VERSIONS_FILE=2
EXIT_MISSING_FILE=3
EXIT_MISSING_VERSION=4

# Utils
# -----

function display_help {
    echo "Usage: $0"
    echo
    echo "This script parses versions values from one Swift file and update documentation files"
}

function test_existence_of_file {
    if [ ! -e "$1" ]; then
        echo "❌ Error: Cannot find file '$1' to process"
        exit $EXIT_MISSING_FILE
    fi
}

function extract_version {
    local versionFile="$1"
    local versionSymbol="$2"
    local result

    result=$(grep "$versionSymbol" "$versionFile" | sed -E 's/.*= \"([^\"]*)\".*/\1/')

    if [ -z "$result" ]; then
        echo "❌ Error: No version found for '$versionSymbol' in '$versionFile'" >&2
        exit $EXIT_MISSING_VERSION
    else
        echo "$result"
    fi
}

function udpate_value_at_pattern_in_file {
    local valueForUpdate="$1"
    local patternToSearch="$2"
    local fileToProcess="$3"

    # Find the patern with the semver version, repalce by value for given file
    sed -i '' -E "s/(${patternToSearch})([0-9]+\.[0-9]+\.[0-9]+)/\1${valueForUpdate}/" "$fileToProcess"
    echo "✔️ Updated file '$fileToProcess' with value '$valueForUpdate'"
}

# Service
# --------

# Check parameters

if [[ "$#" -ne 0 ]]; then
    display_help
    echo "❌ Error: Too many arguments"
    exit $EXIT_ERROR_BAD_PARAMETER_COUNT
fi

# Check prerequisites

test_existence_of_file "$OUDS_VERSION_SWIFT_FILE"

# Get themes versions

themeCoreVersion=$(extract_version $OUDS_VERSION_SWIFT_FILE themeCoreVersion)
themeOrangeVersion=$(extract_version $OUDS_VERSION_SWIFT_FILE themeOrangeVersion)

# Get component versions
# TODO

# Update files
# ------------

test_existence_of_file "$OUDS_README_FILE"
udpate_value_at_pattern_in_file $themeCoreVersion "- Core version: " "$OUDS_README_FILE"
udpate_value_at_pattern_in_file $themeOrangeVersion "- Orange theme version: " "$OUDS_README_FILE"

test_existence_of_file "$RAW_TOKENS_MARKDOWN_FILE"
udpate_value_at_pattern_in_file $themeCoreVersion "$CORE_VERSION_PATTERN" "$RAW_TOKENS_MARKDOWN_FILE"

test_existence_of_file "$SEMANTIC_TOKENS_MARKDOWN_FILE"
udpate_value_at_pattern_in_file $themeCoreVersion "$CORE_VERSION_PATTERN" "$SEMANTIC_TOKENS_MARKDOWN_FILE"

test_existence_of_file "$COMPONENT_TOKENS_MARKDOWN_FILE"
udpate_value_at_pattern_in_file $themeCoreVersion "$CORE_VERSION_PATTERN" "$COMPONENT_TOKENS_MARKDOWN_FILE"

test_existence_of_file "$CORE_THEME_MARKDOWN_FILE"
udpate_value_at_pattern_in_file $themeCoreVersion "$CORE_VERSION_PATTERN " "$CORE_THEME_MARKDOWN_FILE"

test_existence_of_file "$ORANGE_THEME_MARKDOWN_FILE"
udpate_value_at_pattern_in_file $themeOrangeVersion "$THEME_VERSION_PATTERN" "$ORANGE_THEME_MARKDOWN_FILE"

echo "👋 Bye!"
exit $EXIT_OK
