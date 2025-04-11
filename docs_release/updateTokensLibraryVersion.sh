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

TEMPLATE_TO_LOOK_FOR="Tokens version: "

FILES_TO_PROCESS=(

     # For Design Toolbox app
    "../DesignToolbox/DesignToolbox/Utils/Bundle+extension.swift"

    # For generated documentation
    "../OUDS/Core/Tokens/ComponentTokens/Sources/_OUDSTokensComponent.docc/OUDSTokensComponent.md"
    "../OUDS/Core/Tokens/RawTokens/Sources/_OUDSTokensRaw.docc/OUDSTokensRaw.md"
    "../OUDS/Core/Tokens/SemanticTokens/Sources/_OUDSTokensSemantic.docc/OUDSTokensSemantic.md"

    # For raw tokens generated files (common)
	"../OUDS/Core/Tokens/RawTokens/Sources/Values/BorderRawTokens+Values.swift"
	"../OUDS/Core/Tokens/RawTokens/Sources/Values/ColorRawTokens+Values.swift"
	"../OUDS/Core/Tokens/RawTokens/Sources/Values/DimensionRawTokens+Values.swift"
	"../OUDS/Core/Tokens/RawTokens/Sources/Values/ElevationRawTokens+Values.swift"
	"../OUDS/Core/Tokens/RawTokens/Sources/Values/FontRawTokens+Values.swift"
	"../OUDS/Core/Tokens/RawTokens/Sources/Values/GridRawTokens+Values.swift"
	"../OUDS/Core/Tokens/RawTokens/Sources/Values/OpacityRawTokens+Values.swift"

    # For raw tokens generated files (Orange theme)
	"../OUDS/Core/Themes/Orange/Sources/Values/RawTokens/OrangeBrandColorRawTokens+Values.swift"

    # For semantic tokens generated files
	"../OUDS/Core/Themes/Orange/Sources/Values/SemanticTokens/OrangeTheme+BorderSemanticTokens.swift"
	"../OUDS/Core/Themes/Orange/Sources/Values/SemanticTokens/OrangeTheme+ColorSemanticTokens.swift"
	"../OUDS/Core/Themes/Orange/Sources/Values/SemanticTokens/OrangeTheme+ElevationSemanticTokens.swift"
	"../OUDS/Core/Themes/Orange/Sources/Values/SemanticTokens/OrangeTheme+FontSemanticTokens.swift"
	"../OUDS/Core/Themes/Orange/Sources/Values/SemanticTokens/OrangeTheme+GridSemanticTokens.swift"
	"../OUDS/Core/Themes/Orange/Sources/Values/SemanticTokens/OrangeTheme+OpacitySemanticTokens.swift"
	"../OUDS/Core/Themes/Orange/Sources/Values/SemanticTokens/OrangeTheme+SizeSemanticTokens.swift"
	"../OUDS/Core/Themes/Orange/Sources/Values/SemanticTokens/OrangeTheme+SpaceSemanticTokens.swift"

    # For component tokens generated files
    "../OUDS/Core/Themes/Orange/Sources/Values/ComponentTokens/OrangeTheme+BadgeComponentTokens.swift"
	"../OUDS/Core/Themes/Orange/Sources/Values/ComponentTokens/OrangeTheme+BulletListComponentTokens.swift"
	"../OUDS/Core/Themes/Orange/Sources/Values/ComponentTokens/OrangeTheme+ButtonComponentTokens.swift"
	"../OUDS/Core/Themes/Orange/Sources/Values/ComponentTokens/OrangeTheme+CheckboxComponentTokens.swift"
	"../OUDS/Core/Themes/Orange/Sources/Values/ComponentTokens/OrangeTheme+ChipComponentTokens.swift"
	"../OUDS/Core/Themes/Orange/Sources/Values/ComponentTokens/OrangeTheme+ControlItemComponentTokens.swift"
    "../OUDS/Core/Themes/Orange/Sources/Values/ComponentTokens/OrangeTheme+DividerComponentTokens.swift"
	"../OUDS/Core/Themes/Orange/Sources/Values/ComponentTokens/OrangeTheme+InputTextComponentTokens.swift"
	"../OUDS/Core/Themes/Orange/Sources/Values/ComponentTokens/OrangeTheme+LinkComponentTokens.swift"
	"../OUDS/Core/Themes/Orange/Sources/Values/ComponentTokens/OrangeTheme+ListItemComponentTokens.swift"
    "../OUDS/Core/Themes/Orange/Sources/Values/ComponentTokens/OrangeTheme+RadioButtonComponentTokens.swift"
	"../OUDS/Core/Themes/Orange/Sources/Values/ComponentTokens/OrangeTheme+SelectComponentTokens.swift"
	"../OUDS/Core/Themes/Orange/Sources/Values/ComponentTokens/OrangeTheme+SkeletonComponentTokens.swift"
	"../OUDS/Core/Themes/Orange/Sources/Values/ComponentTokens/OrangeTheme+SwitchComponentTokens.swift"
	"../OUDS/Core/Themes/Orange/Sources/Values/ComponentTokens/OrangeTheme+TagComponentTokens.swift"
)

# Errors
# ------

EXIT_OK=0
EXIT_ERROR_BAD_PARAMETER_COUNT=1
EXIT_ERROR_MISSING_ARGUMENT=2
EXIT_ERROR_UNKNOWN_PARAMETER=3
EXIT_ERROR_MISSING_FILE_TO_PROCESS=4
EXIT_ERROR_MISSING_TEMPLATE_IN_FILE_TO_PROCESS=5
EXIT_ERROR_TOO_MANY_OCCURENCES_OF_TEMPLATE=6

# Utils
# -----

function display_help {
    echo "Usage: $0 --version <value>"
    echo
    echo "Options:"
    echo "  --version <value>   The value to use in the files in place of the predefined template (format x.y.z)"
    echo
    echo "This script composes occurences of '$TEMPLATE_TO_LOOK_FOR' in some predefined files with the given value, looking for old x.y.z version and replace by new one"
}

# Service
# --------

# Check parameters

if [[ "$#" -eq 0 ]]; then
    display_help
    exit $EXIT_ERROR_BAD_PARAMETER_COUNT
fi

if [[ "$#" -ne 2 ]]; then
    echo "❌ Error: Too few or too many parameter(s)."
    exit $EXIT_ERROR_BAD_PARAMETER_COUNT
fi

versionToInject=""

# Process arguments
while [[ "$#" -gt 0 ]]; do
    case $1 in
        --version) 
            if [[ -n "$2" ]]; then
                versionToInject="$2"
                shift
            else
                echo "❌ Error: No value given for --version."
                exit $EXIT_ERROR_MISSING_ARGUMENT
            fi
            ;;        
        *) 
            echo "❌ Error: Unknown parameter '$1'."
            exit $EXIT_ERROR_UNKNOWN_PARAMETER
            ;;
    esac
    shift
done

# Replace any template occurences in the files predefined above
for file in "${FILES_TO_PROCESS[@]}"; do

    # Check if nthe file exists
    if [[ ! -f "$file" ]]; then
        echo "❌ Error: The file '$file' does not exist"
        exit $EXIT_ERROR_MISSING_FILE_TO_PROCESS
    fi

    # Ensure we have only one occurence to replace, othrwise it could mean side effects
    count=$(grep -c "$TEMPLATE_TO_LOOK_FOR" "$file")
    if [[ $count -ne 1 ]]; then
        echo "❌ Error: The pattern appears not enough or too many times in the file '$file'."
        exit $EXIT_ERROR_TOO_MANY_OCCURENCES_OF_TEMPLATE
    fi

    if ! grep -q "$TEMPLATE_TO_LOOK_FOR" "$file"; then
        echo "❌ Error: Missing template '$TEMPLATE_TO_LOOK_FOR' in file '$file'."
        exit $EXIT_ERROR_MISSING_TEMPLATE_IN_FILE_TO_PROCESS
    fi

    # Keep items before and after template, keep tempalte and replace old x.y.z by the value
    sed -i '' -E "s/(${TEMPLATE_TO_LOOK_FOR})([0-9]+\.[0-9]+\.[0-9]+)/\1$versionToInject/" "$file"

    echo "✔️ Updated file '$file'"
done

echo "👋 Bye!"
exit $EXIT_OK
