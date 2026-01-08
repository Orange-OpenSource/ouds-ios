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

OUDS_VERSION_SWIFT_FILE="../OUDS/Core/ThemesContract/Sources/TokenatorConstants.swift"
OUDS_README_FILE="../README.md"
RAW_TOKENS_MARKDOWN_FILE="../OUDS/Core/Tokens/RawTokens/Sources/_OUDSTokensRaw.docc/OUDSTokensRaw.md"
SEMANTIC_TOKENS_MARKDOWN_FILE="../OUDS/Core/Tokens/SemanticTokens/Sources/_OUDSTokensSemantic.docc/OUDSTokensSemantic.md"
COMPONENT_TOKENS_MARKDOWN_FILE="../OUDS/Core/Tokens/ComponentTokens/Sources/_OUDSTokensComponent.docc/OUDSTokensComponent.md"
CORE_THEME_MARKDOWN_FILE="../OUDS/Core/ThemesContract/Sources/_ThemesContract.docc/_ThemesContract.md"
ORANGE_THEME_MARKDOWN_FILE="../OUDS/Core/Themes/Orange/Sources/_OUDSThemesOrange.docc/OUDSThemesOrange.md"
ORANGE_BUSINESS_TOOLS_THEME_MARKDOWN_FILE="../OUDS/Core/Themes/OrangeBusinessTools/Sources/_OUDSThemesOrangeBusinessTools.docc/OUDSThemesOrangeBusinessTools.md"
SOSH_THEME_MARKDOWN_FILE="../OUDS/Core/Themes/Sosh/Sources/_OUDSThemesSosh.docc/OUDSThemesSosh.md"
WIREFRAME_THEME_MARKDOWN_FILE="../OUDS/Core/Themes/Wireframe/Sources/_OUDSThemesWireframe.docc/OUDSThemesWireframe.md"

ORANGE_THEME_SWIFT_FILE="../OUDS/Core/Themes/Orange/Sources/OrangeTheme.swift"
ORANGEBUSINESSTOOLS_THEME_SWIFT_FILE="../OUDS/Core/Themes/OrangeBusinessTools/Sources/OrangeBusinessToolsTheme.swift"
SOSH_THEME_SWIFT_FILE="../OUDS/Core/Themes/Sosh/Sources/SoshTheme.swift"
WIREFRAME_THEME_SWIFT_FILE="../OUDS/Core/Themes/Wireframe/Sources/WireframeTheme.swift"

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

themeCoreOudsVersion=$(extract_version $OUDS_VERSION_SWIFT_FILE themeCoreVersion)
themeCoreOrangeVersion=$(extract_version $OUDS_VERSION_SWIFT_FILE themeOrangeCoreVersion)
themeCoreSoshVersion=$(extract_version $OUDS_VERSION_SWIFT_FILE themeSoshCoreVersion)
themeCoreWireframeVersion=$(extract_version $OUDS_VERSION_SWIFT_FILE themeWireframeCoreVersion)
themeBrandOrangeVersion=$(extract_version $OUDS_VERSION_SWIFT_FILE themeOrangeBrandVersion)
themeBrandOrangeBusinessToolsVersion=$(extract_version $OUDS_VERSION_SWIFT_FILE themeOrangeBusinessToolsBrandVersion)
themeBrandSoshVersion=$(extract_version $OUDS_VERSION_SWIFT_FILE themeSoshBrandVersion)
themeBrandWireframeVersion=$(extract_version $OUDS_VERSION_SWIFT_FILE themeWireframeBrandVersion)

# Get component versions
# TODO

# Update files
# ------------

# README

test_existence_of_file "$OUDS_README_FILE"
udpate_value_at_pattern_in_file $themeCoreOudsVersion "- Core OUDS version: " "$OUDS_README_FILE"
udpate_value_at_pattern_in_file $themeCoreOrangeVersion "- Core Orange version: " "$OUDS_README_FILE"
udpate_value_at_pattern_in_file $themeCoreSoshVersion "- Core Sosh version: " "$OUDS_README_FILE"
udpate_value_at_pattern_in_file $themeCoreWireframeVersion "- Core Wireframe version: " "$OUDS_README_FILE"
udpate_value_at_pattern_in_file $themeBrandOrangeVersion "- Brand Orange version: " "$OUDS_README_FILE"
udpate_value_at_pattern_in_file $themeBrandOrangeBusinessToolsVersion "- Brand Orange Business Tools version: " "$OUDS_README_FILE"
udpate_value_at_pattern_in_file $themeBrandSoshVersion "- Brand Sosh version: " "$OUDS_README_FILE"
udpate_value_at_pattern_in_file $themeBrandWireframeVersion "- Brand Wireframe version: " "$OUDS_README_FILE"

# Markdown files

test_existence_of_file "$RAW_TOKENS_MARKDOWN_FILE"
udpate_value_at_pattern_in_file $themeCoreOudsVersion "🧬 Core version: " "$RAW_TOKENS_MARKDOWN_FILE"

test_existence_of_file "$SEMANTIC_TOKENS_MARKDOWN_FILE"
udpate_value_at_pattern_in_file $themeCoreOudsVersion "🧬 Core version: " "$SEMANTIC_TOKENS_MARKDOWN_FILE"

test_existence_of_file "$COMPONENT_TOKENS_MARKDOWN_FILE"
udpate_value_at_pattern_in_file $themeCoreOudsVersion "🧬 Core version: " "$COMPONENT_TOKENS_MARKDOWN_FILE"

test_existence_of_file "$CORE_THEME_MARKDOWN_FILE"
udpate_value_at_pattern_in_file $themeCoreOudsVersion "🧬 Core version: " "$CORE_THEME_MARKDOWN_FILE"

test_existence_of_file "$ORANGE_THEME_MARKDOWN_FILE"
udpate_value_at_pattern_in_file $themeBrandOrangeVersion "🧬 Theme version: " "$ORANGE_THEME_MARKDOWN_FILE"

test_existence_of_file "$ORANGE_BUSINESS_TOOLS_THEME_MARKDOWN_FILE"
udpate_value_at_pattern_in_file $themeBrandOrangeBusinessToolsVersion "🧬 Theme version: " "$ORANGE_BUSINESS_TOOLS_THEME_MARKDOWN_FILE"

test_existence_of_file "$SOSH_THEME_MARKDOWN_FILE"
udpate_value_at_pattern_in_file $themeBrandSoshVersion "🧬 Theme version: " "$SOSH_THEME_MARKDOWN_FILE"

test_existence_of_file "$WIREFRAME_THEME_MARKDOWN_FILE"
udpate_value_at_pattern_in_file $themeBrandWireframeVersion "🧬 Theme version: " "$WIREFRAME_THEME_MARKDOWN_FILE"

# Swift files

test_existence_of_file "$ORANGE_THEME_SWIFT_FILE"
udpate_value_at_pattern_in_file $themeCoreOudsVersion "- Core OUDS version: " "$ORANGE_THEME_SWIFT_FILE"
udpate_value_at_pattern_in_file $themeCoreOrangeVersion "- Core Orange version: " "$ORANGE_THEME_SWIFT_FILE"
udpate_value_at_pattern_in_file $themeBrandOrangeVersion "- Brand Orange version: " "$ORANGE_THEME_SWIFT_FILE"

test_existence_of_file "$ORANGEBUSINESSTOOLS_THEME_SWIFT_FILE"
udpate_value_at_pattern_in_file $themeCoreOudsVersion "- Core OUDS version: " "$ORANGEBUSINESSTOOLS_THEME_SWIFT_FILE"
udpate_value_at_pattern_in_file $themeCoreOrangeVersion "- Core Orange version: " "$ORANGEBUSINESSTOOLS_THEME_SWIFT_FILE"
udpate_value_at_pattern_in_file $themeBrandOrangeBusinessToolsVersion "- Brand Orange Business Tools version: " "$ORANGEBUSINESSTOOLS_THEME_SWIFT_FILE"

test_existence_of_file "$SOSH_THEME_SWIFT_FILE"
udpate_value_at_pattern_in_file $themeCoreOudsVersion "- Core OUDS version: " "$SOSH_THEME_SWIFT_FILE"
udpate_value_at_pattern_in_file $themeCoreSoshVersion "- Core Sosh version: " "$SOSH_THEME_SWIFT_FILE"
udpate_value_at_pattern_in_file $themeBrandSoshVersion "- Brand Sosh version: " "$SOSH_THEME_SWIFT_FILE"

test_existence_of_file "$WIREFRAME_THEME_SWIFT_FILE"
udpate_value_at_pattern_in_file $themeCoreOudsVersion "- Core OUDS version: " "$WIREFRAME_THEME_SWIFT_FILE"
udpate_value_at_pattern_in_file $themeCoreWireframeVersion "- Core Wireframe version: " "$WIREFRAME_THEME_SWIFT_FILE"
udpate_value_at_pattern_in_file $themeBrandWireframeVersion "- Brand Wireframe version: " "$WIREFRAME_THEME_SWIFT_FILE"

echo "👋 Bye!"
exit $EXIT_OK
