#!/bin/bash
# Software Name: OUDS iOS
# SPDX-FileCopyrightText: Copyright (c) Orange SA
# SPDX-License-Identifier: MIT
# 
# This software is distributed under the MIT license,
# the text of which is available at https://opensource.org/license/MIT/
# 
# Software description: Rise the flag(s) you want to generated tokens with predefined Swift line samples

#set -euo pipefail

# Flags to rise to generate tokens you want
# -----------------------------------------

# Meta flags - Chose one of them

ALL_TOKENS=true
ALL_PRIMITIVE_TOKENS=false
ALL_SEMANTIC_TOKENS=false

# Meta flags - Chose several of them

ALL_PRIMITIVE_TOKEN_OPACITY=false
ALL_PRIMITIVE_TOKEN_BORDER=false
ALL_PRIMITIVE_TOKEN_DIMENSION=false
ALL_PRIMITIVE_TOKEN_ELEVATION=false
ALL_PRIMITIVE_TOKEN_GRID=false
ALL_PRIMITIVE_TOKEN_TYPOGRAPHY=false
ALL_PRIMITIVE_TOKEN_COLORS=false

ALL_SEMANTIC_TOKEN_OPACITY=false
ALL_SEMANTIC_TOKEN_BORDER=false
ALL_SEMANTIC_TOKEN_DIMENSION=false
ALL_SEMANTIC_TOKEN_ELEVATION=false
ALL_SEMANTIC_TOKEN_PADDING=false
ALL_SEMANTIC_TOKEN_SIZING=false
ALL_SEMANTIC_TOKEN_GRID=false
ALL_SEMANTIC_TOKEN_TYPOGRAPHY=false
ALL_SEMANTIC_TOKEN_COLORS=false

# Primitive tokens - Pick the ones you want

PRIMITIVE_TOKEN_OPACITY=false
PRIMITIVE_TOKEN_BORDER_WIDTH=false
PRIMITIVE_TOKEN_BORDER_RADIUS=false
PRIMITIVE_TOKEN_BORDER_STYLE=false
PRIMITIVE_TOKEN_DIMENSION=false
PRIMITIVE_TOKEN_ELEVATION_ZINDEX=false
PRIMITIVE_TOKEN_ELEVATION_X=false
PRIMITIVE_TOKEN_ELEVATION_Y=false
PRIMITIVE_TOKEN_ELEVATION_BLUR=false
PRIMITIVE_TOKEN_ELEVATION_SPREAD=false
PRIMITIVE_TOKEN_GRID_MIN_WIDTH=false
PRIMITIVE_TOKEN_GRID_MAX_WIDTH=false
PRIMITIVE_TOKEN_GRID_MARGIN=false
PRIMITIVE_TOKEN_GRID_COLUMN_GAP=false
PRIMITIVE_TOKEN_GRID_COLUMN_COUNT=false
PRIMITIVE_TOKEN_TYPOGRAPHY_FONT_SIZE=false
PRIMITIVE_TOKEN_TYPOGRAPHY_LINE_HEIGHT=false
PRIMITIVE_TOKEN_TYPOGRAPHY_FONT_FAMILY=false
PRIMITIVE_TOKEN_TYPOGRAPHY_PARAGRAPH_SPACING=false
PRIMITIVE_TOKEN_TYPOGRAPHY_FONT_WEIGHT=false
PRIMITIVE_TOKEN_TYPOGRAPHY_COMPOSITE=false
PRIMITIVE_TOKEN_COLORS_GLOBAL=false
PRIMITIVE_TOKEN_TRANSPARENT_COLORS=false
PRIMITIVE_TOKEN_COLORS_ORANGE_BRAND=false
PRIMITIVE_TOKEN_COLORS_ORANGE_DECORATIVE=false
PRIMITIVE_TOKEN_COLORS_SOSH=false

# Semantic tokens- Pick the ones you want

SEMANTIC_TOKEN_OPACITY=false
SEMANTIC_TOKEN_BORDER_WIDTH=false
SEMANTIC_TOKEN_BORDER_RADIUS=false
SEMANTIC_TOKEN_BORDER_STYLE=false
SEMANTIC_TOKEN_DIMENSION=false
SEMANTIC_TOKEN_ELEVATION_Z_INDEX=false
SEMANTIC_TOKEN_ELEVATION_X=false
SEMANTIC_TOKEN_ELEVATION_Y=false
SEMANTIC_TOKEN_ELEVATION_BLUR=false
SEMANTIC_TOKEN_ELEVATION_SPREAD=false
SEMANTIC_TOKEN_ELEVATION_COLOR=false
SEMANTIC_TOKEN_PADDING_PADDING_INLINE=false
SEMANTIC_TOKEN_PADDING_PADDING_STACK=false
SEMANTIC_TOKEN_PADDING_PADDING_INSET=false
SEMANTIC_TOKEN_PADDING_GAP_LINE=false
SEMANTIC_TOKEN_PADDING_GAP_STACK=false
SEMANTIC_TOKEN_SIZING_WIDTH_HEIGHT_ICON_DECORATIVE=false
SEMANTIC_TOKEN_SIZING_WIDTH_HEIGHT_ICON_COMPONENT=false
SEMANTIC_TOKEN_SIZING_WIDTH_HEIGHT_ICON_TYPOGRAPHY_HEADING=false
SEMANTIC_TOKEN_SIZING_WIDTH_HEIGHT_ICON_DECORATIVE_BODY=false
SEMANTIC_TOKEN_SIZING_MAX_WIDTH=false
SEMANTIC_TOKEN_GRID_IOS_EXTRA_COMPACT=false
SEMANTIC_TOKEN_GRID_IOS_COMPACT=false
SEMANTIC_TOKEN_GRID_IOS_REGULAR=false
SEMANTIC_TOKEN_TYPOGRAPHY_FONT_FAMILY=false
SEMANTIC_TOKEN_TYPOGRAPHY_FONT_WEIGHT=false
SEMANTIC_TOKEN_TYPOGRAPHY_FONT_SIZE=false
SEMANTIC_TOKEN_TYPOGRAPHY_FONT_SIZE_MOBILE=false
SEMANTIC_TOKEN_TYPOGRAPHY_FONT_SIZE_TABLET=false
SEMANTIC_TOKEN_TYPOGRAPHY_FONT_SIZE_OTHERS=false
SEMANTIC_TOKEN_TYPOGRAPHY_FONT_LINE_HEIGHT_MOBILE=false
SEMANTIC_TOKEN_TYPOGRAPHY_FONT_LINE_HEIGHT_TABLET=false
SEMANTIC_TOKEN_TYPOGRAPHY_FONT_LINE_HEIGHT_OTHERS=false
SEMANTIC_TOKEN_TYPOGRAPHY_FONT_PARAGRAPH_SPACING_MOBILE=false
SEMANTIC_TOKEN_TYPOGRAPHY_FONT_PARAGRAPH_SPACING_TABLET=false
SEMANTIC_TOKEN_TYPOGRAPHY_FONT_PARAGRAPH_SPACING_OTHERS=false
SEMANTIC_TOKEN_COLORS_ALIASES=false
SEMANTIC_TOKEN_COLORS_BACKGROUND=false
SEMANTIC_TOKEN_COLORS_CONTENT=false
SEMANTIC_TOKEN_COLORS_BORDER=false
SEMANTIC_TOKEN_COLORS_ON_BACKGROUND=false
SEMANTIC_TOKEN_COLORS_DECORATIVE=false

# Exit codes
# ----------

EXIT_OK=0
UNCONSISTENT_ARRAYS=1

# Configuration
# -------------

# Temporary file for generated source code
GENERATED_SWIFT_CODE_FILE="./tokens.swift"
if [ -f "$GENERATED_SWIFT_CODE_FILE" ]; then
    rm -f "$GENERATED_SWIFT_CODE_FILE"
    touch "$GENERATED_SWIFT_CODE_FILE"
fi

# Function for output file
# ------------------------

Write() {
    echo "$1" # For logs
    echo -e "$1\n" >> "$GENERATED_SWIFT_CODE_FILE"
}

# Functions to build the token line
# ---------------------------------

GenerateTokens() {
    while [[ $# -gt 0 ]]; do
        key="$1"
        case $key in
            --string) # The string with the template
            string="$2"
            shift
            ;;
            --keys) # The values for the variable name
            IFS=',' read -r -a keys <<< "$2"
            shift
            ;;
            --values) # The values for the variable value
            IFS=',' read -r -a values <<< "$2"
            shift
            ;;
            *)
            # unknown option
            ;;
        esac
        shift
    done

    # Of course arrays must have same sizes
    if [ ${#keys[@]} -ne ${#values[@]} ]; then
        echo "Error: Arrays must have the same number of items (values = ${#values[@]}, keys = ${#keys[@]})" 1>&2
        exit $UNCONSISTENT_ARRAYS
    fi

    # "🆔" value and "0️⃣" value will be replace array items
    for ((i=0; i<${#keys[@]}; i++)); do
        replaced_string=${string//🆔/${keys[i]}}
        replaced_string=${replaced_string//0️⃣/${values[i]}}
        echo $replaced_string >> "$GENERATED_SWIFT_CODE_FILE"
        GENERATED_TOKENS_COUNT=$(( GENERATED_TOKENS_COUNT  + 1 ))
    done

    echo "" >> "$GENERATED_SWIFT_CODE_FILE" # Line break
}

GenerateTokensComposite() {
    while [[ $# -gt 0 ]]; do
        key="$1"
        case $key in
            --string) # The string with the template
            string="$2"
            shift
            ;;
            --keys) # The values for the variable name
            IFS=',' read -r -a keys <<< "$2"
            shift
            ;;
            --values1) # The 1st values for the variable value
            IFS=',' read -r -a values1 <<< "$2"
            shift
            ;;
            --values2) # The 2nd values for the variable value
            IFS=',' read -r -a values2 <<< "$2"
            shift
            ;;
            --values3) # The 3rd values for the variable value
            IFS=',' read -r -a values3 <<< "$2"
            shift
            ;;            
            *)
            # unknown option
            ;;
        esac
        shift
    done

    # Of course arrays must have same sizes
    if [ ${#keys[@]} -ne ${#values1[@]} ] && [ ${#keys[@]} -ne ${#values2[@]} ] && [ ${#keys[@]} -ne ${#values3[@]} ] ; then
        echo "Error: Arrays must have the same number of items ,values1 = ${#values1[@]}, values2 = ${#values2[@]}, values3 = ${#values3[@]}, keys = ${#keys[@]})" 1>&2
        exit $UNCONSISTENT_ARRAYS
    fi

    # "🆔" value and "1️⃣", "2️⃣", "3️⃣" value will be replace array items
    for ((i=0; i<${#keys[@]}; i++)); do
        replaced_string=${string//🆔/${keys[i]}}
        replaced_string=${replaced_string//1️⃣/${values1[i]}}
        replaced_string=${replaced_string//2️⃣/${values2[i]}}
        replaced_string=${replaced_string//3️⃣/${values3[i]}}
        echo $replaced_string >> "$GENERATED_SWIFT_CODE_FILE"
        GENERATED_TOKENS_COUNT=$(( GENERATED_TOKENS_COUNT  + 1 ))
    done

    echo "" >> "$GENERATED_SWIFT_CODE_FILE" # Line break
}

# Run!
# ----

echo "🔥 Let's go!"

SECONDS=0
GENERATED_TOKENS_COUNT=0

# Primitive tokens
# ----------------

# Primitive token - Border - Width

if [ "$PRIMITIVE_TOKEN_BORDER_WIDTH" = true ] || [ "$ALL_PRIMITIVE_TOKENS" = true ] || [ "$ALL_TOKENS" = true ] || [ "$ALL_PRIMITIVE_TOKEN_BORDER" = true ] ; then
Write "// MARK: Primitive token - Border - Width"
GenerateTokens \
--string "static let borderWidth🆔: BorderWidthPrimitiveToken = borderBase \* 0️⃣" \
--keys "0,25,50,75,100,150,200" \
--values "0,0.25,0.5,0.75,1,1.5,3"
fi

# Primitive token - Border - Radius

if [ "$PRIMITIVE_TOKEN_BORDER_RADIUS" = true ] || [ "$ALL_PRIMITIVE_TOKENS" = true ] || [ "$ALL_TOKENS" = true ] || [ "$ALL_PRIMITIVE_TOKEN_BORDER" = true ] ; then
Write "// MARK: Primitive token - Border - Radius"
GenerateTokens \
--string "static let borderRadius🆔: BorderRadiusPrimitiveToken = borderBase \* 0️⃣" \
--keys "0,25,50,75,100,150,200,300,400,500,600,800,9999" \
--values "0.75,0.25,0.5,0.75,1,1.5,2,3,4,5,6,8,2000"
fi
    
# Primitive token - Border - Style

if [ "$PRIMITIVE_TOKEN_BORDER_STYLE" = true ] || [ "$ALL_PRIMITIVE_TOKENS" = true ] || [ "$ALL_TOKENS" = true ] || [ "$ALL_PRIMITIVE_TOKEN_BORDER" = true ] ; then
Write "// MARK: Primitive token - Border - Style"
GenerateTokens \
--string 'static let borderStyle🆔: BorderStylePrimitiveToken = "0️⃣"' \
--keys "None,Solid,Dashed,Dotted" \
--values "none,solid,dashed,dotted"
fi

# Primitive token - Dimension

if [ "$PRIMITIVE_TOKEN_DIMENSION" = true ] || [ "$ALL_PRIMITIVE_TOKENS" = true ] || [ "$ALL_TOKENS" = true ] || [ "$ALL_PRIMITIVE_TOKEN_DIMENSION" = true ] ; then
Write "// MARK: Primitive token - Dimension"
GenerateTokens \
--string 'static let dimension🆔: DimensionPrimitiveToken = dimensionBase \* 0️⃣' \
--keys "0,25,50,75,100,150,200,250,300,350,400,450,500,550,600,650,700,750,800,900,1000,1200,1400,1600,1800,2000,3000,4000,5000,6000,7000,9000,11000" \
--values "0,0.5,1,1.5,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,18,20,24,28,32,6,40,80,120,140,160,180,220,260"
fi

# Primitive token - Elevation - Z index

if [ "$PRIMITIVE_TOKEN_ELEVATION_ZINDEX" = true ] || [ "$ALL_PRIMITIVE_TOKENS" = true ] || [ "$ALL_TOKENS" = true ] || [ "$ALL_PRIMITIVE_TOKEN_ELEVATION" = true ] ; then
Write "// MARK: Primitive token - Elevation - Z Index"
GenerateTokens \
--string "static let elevationZIndex🆔: ElevationPrimitiveToken = 0️⃣" \
--keys "0,Minus9999,1000,1010,1020,1030,1035,1038,1040,1045,1050,1060,1070,1080,1090" \
--values "0,-9999,1000,1010,1020,1030,1035,1038,1040,1045,1050,1060,1070,1080,1090"
fi

# Primitive token - Elevation - X

if [ "$PRIMITIVE_TOKEN_ELEVATION_X" = true ] || [ "$ALL_PRIMITIVE_TOKENS" = true ] || [ "$ALL_TOKENS" = true ] || [ "$ALL_PRIMITIVE_TOKEN_ELEVATION" = true ] ; then
Write "// MARK: Primitive token - Elevation - X"
GenerateTokens \
--string "static let elevationX🆔: ElevationPrimitiveToken = 0️⃣" \
--keys "0" \
--values "0"
fi

# Primitive token - Elevation - Y

if [ "$PRIMITIVE_TOKEN_ELEVATION_Y" = true ] || [ "$ALL_PRIMITIVE_TOKENS" = true ] || [ "$ALL_TOKENS" = true ] || [ "$ALL_PRIMITIVE_TOKEN_ELEVATION" = true ] ; then
Write "// MARK: Primitive token - Elevation - Y"
GenerateTokens \
--string "static let elevationY🆔: ElevationPrimitiveToken = 0️⃣" \
--keys "0,100,200,300,400,500,600" \
--values "0,1,2,4,8,12,20"
fi

# Primitive token - Elevation - Blur

if [ "$PRIMITIVE_TOKEN_ELEVATION_BLUR" = true ] || [ "$ALL_PRIMITIVE_TOKENS" = true ] || [ "$ALL_TOKENS" = true ] || [ "$ALL_PRIMITIVE_TOKEN_ELEVATION" = true ] ; then
Write "// MARK: Primitive token - Elevation - Blur"
GenerateTokens \
--string "static let elevationBlur🆔: ElevationPrimitiveToken = 0️⃣" \
--keys "0,100,200,300,400,500,600,700" \
--values "0,1,2,3,4,8,12,20"
fi

# Primitive token - Elevation - Spread

if [ "$PRIMITIVE_TOKEN_ELEVATION_SPREAD" = true ] || [ "$ALL_PRIMITIVE_TOKENS" = true ] || [ "$ALL_TOKENS" = true ] || [ "$ALL_PRIMITIVE_TOKEN_ELEVATION" = true ] ; then
Write "// MARK: Primitive token - Elevation - Spread"
GenerateTokens \
--string "static let elevationSpread🆔: ElevationPrimitiveToken = 0️⃣" \
--keys "Minus100,Minus200,Minus300,Minus400,0,300" \
--values "-1,-2,-4,-8,0,3"
fi

# Primitive token - Opacity

if [ "$PRIMITIVE_TOKEN_OPACITY" = true ] || [ "$ALL_PRIMITIVE_TOKENS" = true ] || [ "$ALL_TOKENS" = true ] || [ "$ALL_PRIMITIVE_TOKEN_OPACITY" = true ] ; then
Write "// MARK: Primitive token - Opacity"
GenerateTokens \
--string "static let opacity🆔: OpacityPrimitiveToken = 0️⃣" \
--keys "0,100,200,300,400,500,600,700,800,900" \
--values "0,0.04,0.08,0.16,0.24,0.32,0.48,0.64,0.88,1"
fi

# Primitive token - Grid - Min width

if [ "$PRIMITIVE_TOKEN_GRID_MIN_WIDTH" = true ] || [ "$ALL_PRIMITIVE_TOKENS" = true ] || [ "$ALL_TOKENS" = true ] || [ "$ALL_PRIMITIVE_TOKEN_GRID" = true ] ; then
Write "// MARK: Primitive token - Grid - Min width"
GenerateTokens \
--string "static let gridMinWidth🆔: GridPrimitiveToken = 0️⃣" \
--keys "IOSExtraCompact,IOSCompact,IOSRegular" \
--values "320,390,736"
fi

# Primitive token - Grid - Max width

if [ "$PRIMITIVE_TOKEN_GRID_MAX_WIDTH" = true ] || [ "$ALL_PRIMITIVE_TOKENS" = true ] || [ "$ALL_TOKENS" = true ] || [ "$ALL_PRIMITIVE_TOKEN_GRID" = true ] ; then
Write "// MARK: Primitive token - Grid - Max width"
GenerateTokens \
--string "static let gridMaxWidth🆔: GridPrimitiveToken = 0️⃣" \
--keys "IOSExtraCompact,IOSCompact,IOSRegular" \
--values "389,852,1336"
fi

# Primitive token - Grid - Margin

if [ "$PRIMITIVE_TOKEN_GRID_MARGIN" = true ] || [ "$ALL_PRIMITIVE_TOKENS" = true ] || [ "$ALL_TOKENS" = true ] || [ "$ALL_PRIMITIVE_TOKEN_GRID" = true ] ; then
Write "// MARK: Primitive token - Grid - Margin"
GenerateTokens \
--string "static let gridMargin🆔: GridPrimitiveToken = dimensionBase \* 0️⃣" \
--keys "100,300,400,500,600,700,1000,1100,1700,2500" \
--values "4,6,7,8,9,10,13,14,20,28"
fi

# Primitive token - Grid - Column gap

if [ "$PRIMITIVE_TOKEN_GRID_COLUMN_GAP" = true ] || [ "$ALL_PRIMITIVE_TOKENS" = true ] || [ "$ALL_TOKENS" = true ] || [ "$ALL_PRIMITIVE_TOKEN_GRID" = true ] ; then
Write "// MARK: Primitive token - Grid - Column gap"
GenerateTokens \
--string "static let gridColumnGap🆔: GridPrimitiveToken = dimensionBase \* 0️⃣" \
--keys "10,100,200,300,500,700" \
--values "0.25,4,5,6,8,10"
fi

# Primitive token - Grid - Column count

if [ "$PRIMITIVE_TOKEN_GRID_COLUMN_COUNT" = true ] || [ "$ALL_PRIMITIVE_TOKENS" = true ] || [ "$ALL_TOKENS" = true ] || [ "$ALL_PRIMITIVE_TOKEN_GRID" = true ] ; then
Write "// MARK: Primitive token - Grid - Column count"
GenerateTokens \
--string "static let gridColumnCount🆔: GridPrimitiveToken = dimensionBase \* 0️⃣" \
--keys "100,200,400,600,800,1000,1200" \
--values "1,2,4,6,8,10,12"
fi

# Primitive token - Typography - Font size

if [ "$PRIMITIVE_TOKEN_TYPOGRAPHY_FONT_SIZE" = true ] || [ "$ALL_PRIMITIVE_TOKENS" = true ] || [ "$ALL_TOKENS" = true ] || [ "$ALL_PRIMITIVE_TOKEN_TYPOGRAPHY" = true ] ; then
Write "// MARK: Primitive token - Typography - Font size"
GenerateTokens \
--string "static let fontSize🆔: TypographyFontSizePrimitiveToken = 0️⃣" \
--keys "150,175,200,250,300,350,450,550,650,750,850,950,1050,1150,1250,1450,1850" \
--values "12,13,14,16,18,20,24,28,32,36,40,44,48,52,56,64,72"
fi

# Primitive token - Typography - Line height

if [ "$PRIMITIVE_TOKEN_TYPOGRAPHY_LINE_HEIGHT" = true ] || [ "$ALL_PRIMITIVE_TOKENS" = true ] || [ "$ALL_TOKENS" = true ] || [ "$ALL_PRIMITIVE_TOKEN_TYPOGRAPHY" = true ] ; then
Write "// MARK: Primitive token - Typography - Line height"
GenerateTokens \
--string "static let fontLineHeight🆔: TypographyFontLineHeightPrimitiveToken = 0️⃣" \
--keys "250,350,450,550,650,750,850,950,1050,1150,1250,1350,1450,1850,2050" \
--values "16,20,24,28,32,36,10,44,48,52,56,60,64,72,80"
fi

# Primitive token - Typography - Paragraph spacing

if [ "$PRIMITIVE_TOKEN_TYPOGRAPHY_PARAGRAPH_SPACING" = true ] || [ "$ALL_PRIMITIVE_TOKENS" = true ] || [ "$ALL_TOKENS" = true ] || [ "$ALL_PRIMITIVE_TOKEN_TYPOGRAPHY" = true ] ; then
Write "// MARK: Primitive token - Typography - Paragraph spacing"
GenerateTokens \
--string "static let fontParagraphSpacing🆔: TypographyFontParagraphSpacingPrimitiveToken = 0️⃣" \
--keys "100,200,300,400" \
--values "0,8,16,24"
fi

# Primitive token - Typography - Font family

if [ "$PRIMITIVE_TOKEN_TYPOGRAPHY_FONT_FAMILY" = true ] || [ "$ALL_PRIMITIVE_TOKENS" = true ] || [ "$ALL_TOKENS" = true ] || [ "$ALL_PRIMITIVE_TOKEN_TYPOGRAPHY" = true ] ; then
Write "// MARK: Primitive token - Typography - Font family"
GenerateTokens \
--string 'static let fontFamily🆔: TypographyFontFamilyPrimitiveToken = "0️⃣"' \
--keys "System,Monospace" \
--values "SF-Pro-Text,Courrier-New"
fi

# Primitive token - Typography - Font Weight

if [ "$PRIMITIVE_TOKEN_TYPOGRAPHY_FONT_WEIGHT" = true ] || [ "$ALL_PRIMITIVE_TOKENS" = true ] || [ "$ALL_TOKENS" = true ] || [ "$ALL_PRIMITIVE_TOKEN_TYPOGRAPHY" = true ] ; then
swiftClass="Font.Weight"
Write "// MARK: Primitive token - Typography - Font weight"
GenerateTokens \
--string "static let fontWeight🆔: TypographyFontWeightPrimitiveToken = $swiftClass.0️⃣" \
--keys "100,200,300,400,500,600,700,900" \
--values "thin,ultraLight,light,regular,medium,semibold,bold,heavy"
fi

# Primitive token - Typography - Composite

if [ "$PRIMITIVE_TOKEN_TYPOGRAPHY_COMPOSITE" = true ] || [ "$ALL_PRIMITIVE_TOKENS" = true ] || [ "$ALL_TOKENS" = true ] || [ "$ALL_PRIMITIVE_TOKEN_TYPOGRAPHY" = true ] ; then
swiftClass="Font.Weight"
Write "// MARK: Primitive token - Typography - Composite"
GenerateTokensComposite \
--string "static let type🆔 = TypographyCompositePrimitiveToken(family: fontFamilySystem, size: fontSize1️⃣, lineHeight: fontLineHeight2️⃣, weight: fontWeight3️⃣, paragraphSpacing: fontParagraphSpacing100)" \
--keys "Regular150,Regular175,Regular200,Regular250,Bold150,Bold175,Bold200,Bold250,Bold300,Bold350,Bold450,Bold550,Bold650,Bold750,Bold850,Bold950,Bold1050,Bold1150,Bold1250,Bold1450,Bold1850" \
--values1 "150,175,200,250,150,175,200,250,300,350,450,550,650,750,850,950,1050,1150,1250,1450,1850" \
--values2 "250,250,250,350,450,250,250,350,450,550,550,650,750,850,950,1050,1150,1250,1350,1450,1850,2050" \
--values3 "400,400,400,400,700,700,700,700,700,700,700,700,700,700,700,700,700,400,700,700,700"
fi

# Primitive token - Colors - Global

if [ "$PRIMITIVE_TOKEN_COLORS_GLOBAL" = true ] || [ "$ALL_PRIMITIVE_TOKENS" = true ] || [ "$ALL_TOKENS" = true ] || [ "$ALL_PRIMITIVE_TOKEN_COLORS" = true ] ; then
Write "// MARK: Primitive token - Colors - Black, white"
GenerateTokens \
--string 'static let colorFunctional🆔: ColorFunctionalPrimitiveToken = Color(hexadecimalCode: "0️⃣")' \
--keys "White,Black" \
--values "#FFFFFF,#000000" # Black, white

Write "// MARK: Primitive token - Colors - Functional light gray"
GenerateTokens \
--string 'static let colorFunctionalLightGray🆔: ColorFunctionalPrimitiveToken = Color(hexadecimalCode: "0️⃣")' \
--keys "80,160,240,320,400,480,560,640,720,800,880,960" \
--values "#F4F4F4,#EEEEEE,#E0E0E0,#D6D6D6,#CCCCCC,#C2C2C2,#BBBBBB,#ADADAD,#A3A3A3,#999999,#8F8F8F,#858585" # Light gray

Write "// MARK: Primitive token - Colors - Functional dark gray"
GenerateTokens \
--string 'static let colorFunctionalDarkGray🆔: ColorFunctionalPrimitiveToken = Color(hexadecimalCode: "0️⃣")' \
--keys "80,160,240,320,400,480,560,640,720,800,880,960" \
--values "#7A7A7A,#707070,#666666,#5C5C5C,#555555,#44444,#3D3D3D,#333333,#272727,#1F1F1F,#141414,#0A0A0A" # Dark gray

Write "// MARK: Primitive token - Colors - Functional scarlet"
GenerateTokens \
--string 'static let colorFunctionalScarlet🆔: ColorFunctionalPrimitiveToken = Color(hexadecimalCode: "0️⃣")' \
--keys "100,200,300,400,500,600,700,800,900" \
--values "#FFE5E6,#FFB2B3,#FF8081,#FF4D4E,#FF1A1B,#EA0305,#BZ000Z,#800001,#4D0001" # Functional scarlet

Write "// MARK: Primitive token - Colors - Functional sun"
GenerateTokens \
--string 'static let colorFunctionalSun🆔: ColorFunctionalPrimitiveToken = Color(hexadecimalCode: "0️⃣")' \
--keys "100,200,300,400,500,600,700,800,900" \
--values "#FFF7D6,#FFED99,#FFE270,#FFD73D,#FFD0D0,#D6AA00,#A38200,#665100,#3D3100" # Functional sun

Write "// MARK: Primitive token - Colors - Functional malachite"
GenerateTokens \
--string 'static let colorFunctionalMalachite🆔: ColorFunctionalPrimitiveToken = Color(hexadecimalCode: "0️⃣")' \
--keys "100,200,300,400,500,600,700,800,900" \
--values "#EDFCF0,#C1F6CA,#94F0A4,#67E97E,#3DE35A,#1ECD3C,#17A02F,#0E621D,#0A4715" # Functional malachite

Write "// MARK: Primitive token - Colors - Functional dodger blue"
GenerateTokens \
--string 'static let colorFunctionalDodgerBlue🆔: ColorFunctionalPrimitiveToken = Color(hexadecimalCode: "0️⃣")' \
--keys "100,200,300,400,500,600,700,800,900" \
--values "#F0FAFF,#BDE7FF,#8AD5FF,#57C3FF,#26B2FF,#009BF0,#007ABD,#00598A,#003857" # Dodger blue
fi

# Primitive token - Colors - Transparent

if [ "$PRIMITIVE_TOKEN_TRANSPARENT_COLORS" = true ] || [ "$ALL_PRIMITIVE_TOKENS" = true ] || [ "$ALL_TOKENS" = true ] || [ "$ALL_PRIMITIVE_TOKEN_COLORS" = true ] ; then

Write "// MARK: Primitive token - Colors - Transparent black"
GenerateTokens \
--string 'static let colorTransparentBlack🆔: ColorTransparentPrimitiveToken = colorFunctionalBlack.opacity(OpacityPrimitiveTokens.opacity0️⃣)' \
--keys "0,100,200,300,400,500,600,700,800,900" \
--values "0,100,200,300,400,500,600,700,800,900" # Transparent black

Write "// MARK: Primitive token - Colors - Transparent white"
GenerateTokens \
--string 'static let colorTransparentWhite🆔: ColorTransparentPrimitiveToken = colorFunctionalWhite.opacity(OpacityPrimitiveTokens.opacity0️⃣)' \
--keys "0,100,200,300,400,500,600,700,800,900" \
--values "0,100,200,300,400,500,600,700,800,900" # Transparent white
fi

# Primitive token - Colors - Orange - Brand

if [ "$PRIMITIVE_TOKEN_COLORS_ORANGE_BRAND" = true ] || [ "$ALL_PRIMITIVE_TOKENS" = true ] || [ "$ALL_TOKENS" = true ] || [ "$ALL_PRIMITIVE_TOKEN_COLORS" = true ] ; then

Write "// MARK: Primitive token - Colors - Orange - Brand - Orange"
GenerateTokens \
--string 'static let colorBrandOrange🆔: ColorOrangeBrandPrimitiveToken = Color(hexadecimalCode: "0️⃣")' \
--keys "50,100,200,300,400,500,550,600,700,800,900" \
--values "#FFF2E6,#FFD5B0,#FFC18A,#FFA554,#FF9433,#FF7900,#F16E00,#E86E00,#B55600,#8C4300,#6B3300"

Write "// MARK: Primitive token - Colors - Orange - Brand - Warm gray"
GenerateTokens \
--string 'static let colorBrandWarmGray🆔: ColorOrangeBrandPrimitiveToken = Color(hexadecimalCode: "0️⃣")' \
--keys "100,200,300,400,500,600,700,800,900" \
--values "#F9F5F0,#E9DDCE,#D6C4AE,#C1AB90,#A99275,#8A7860,#685D50,#48433D,#353228"
fi

# Primitive token - Colors - Orange - Decorative

if [ "$PRIMITIVE_TOKEN_COLORS_ORANGE_DECORATIVE" = true ] || [ "$ALL_PRIMITIVE_TOKENS" = true ] || [ "$ALL_TOKENS" = true ] || [ "$ALL_PRIMITIVE_TOKEN_COLORS" = true ] ; then
Write "// MARK: Primitive token - Colors - Orange - Emerald"
GenerateTokens \
--string 'static let colorDecorativeEmerald🆔: colorDecorativePrimitiveToken = Color(hexadecimalCode: "0️⃣")' \
--keys "100,200,300,400,500,600,700,800,900" \
--values "#E5F5ED,#C0E8DA,#9BDABA,#75CCA1,#50BE87,#3BA06E,#2E7B54,#20563B,#123021"

Write "// MARK: Primitive token - Colors - Orange - Sky"
GenerateTokens \
--string 'static let colorDecorativeSky🆔: colorDecorativePrimitiveToken = Color(hexadecimalCode: "0️⃣")' \
--keys "100,200,300,400,500,600,700,800,900" \
--values "#D2ECF9,#A5DAF3,#79C7EC,#4AB4E6,#1FA2E0,#1982B3,#136186,#0C415A,#06202D"

Write "// MARK: Primitive token - Colors - Orange - Amber"
GenerateTokens \
--string 'static let colorDecorativeAmber🆔: colorDecorativePrimitiveToken = Color(hexadecimalCode: "0️⃣")' \
--keys "100,200,300,400,500,600,700,800,900" \
--values "#FFF0CC,#FFE199,#FFD266,#FFC333,#FFB400,#CC9000,#996C00,#664800,#332400"

Write "// MARK: Primitive token - Colors - Orange - Amethyst"
GenerateTokens \
--string 'static let colorDecorativeAmethyst🆔: colorDecorativePrimitiveToken = Color(hexadecimalCode: "0️⃣")' \
--keys "100,200,300,400,500,600,700,800,900" \
--values "#F1ECF9,#E0D4F2,#C5ADE6,#A885D8,#8D60CD,#5B2F98,#432371,#2C174A,#150B23"

Write "// MARK: Primitive token - Colors - Orange - Shocking Pink"
GenerateTokens \
--string 'static let colorDecorativeShockingPink🆔: colorDecorativePrimitiveToken = Color(hexadecimalCode: "0️⃣")' \
--keys "100,200,300,400,500,600,700,800,900" \
--values "#FFE5F6,#FFB4E6,#FF80D4,#FF4DC3,#FF1AB2,#E50099,#B20077,#800055,#4D0033"

Write "// MARK: Primitive token - Colors - Orange - Deep Peach"
GenerateTokens \
--string 'static let colorDecorativeDeepPeach🆔: colorDecorativePrimitiveToken = Color(hexadecimalCode: "0️⃣")' \
--keys "100,200,300,400,500,600,700,800,900" \
--values "#FBEBDF,#F4CFB2,#E3B591,#C19372,#CF7E3F,#AA6631,#7E4F2A,#553720,#2E2014"
fi

# Primitive token - Colors - Sosh

if [ "$PRIMITIVE_TOKEN_COLORS_SOSH" = true ] || [ "$ALL_PRIMITIVE_TOKENS" = true ] || [ "$ALL_TOKENS" = true ] || [ "$ALL_PRIMITIVE_TOKEN_COLORS" = true ] ; then
Write "// MARK: Primitive token - Colors - Sosh - Magenta"
GenerateTokens \
--string 'static let colorDecorativeMagenta🆔: ColorSoshPrimitiveToken = Color(hexadecimalCode: "0️⃣")' \
--keys "50,100,200,300,400,500,600,700,800,900,950" \
--values "#FCE9EE,#F8D3DC,#F2A6B9,#EB7A96,#E55277,#DE2554,#B61B42,#851430,#590D20,#2C0710,#160308"

Write "// MARK: Primitive token - Colors - Sosh - Citrine"
GenerateTokens \
--string 'static let colorDecorativeCitrine🆔: ColorSoshPrimitiveToken = Color(hexadecimalCode: "0️⃣")' \
--keys "50,100,200,300,400,500,600,700,800,900,950" \
--values "#FFFAE5,#FFF6CC,#FFEC99,#FFE366,#FFD92E,#FBCD00,#C7A200,#997D00,#665300,#332A00,#191500"

Write "// MARK: Primitive token - Colors - Sosh - Blue Duck"
GenerateTokens \
--string 'static let colorDecorativeBlueDuck🆔: ColorSoshPrimitiveToken = Color(hexadecimalCode: "0️⃣")' \
--keys "50,100,200,300,400,500,600,700,800,900,950" \
--values "#E7F6F9,#CBEDF1,#96DAE3,#62C8D5,#34B1C1,#26828E,#1E6771,#174D55,#0F3438,#081A1C,#040F10"
fi

# Semantic tokens
# ---------------

# Semantic token - Opacity

if [ "$SEMANTIC_TOKEN_OPACITY" = true ] || [ "$ALL_SEMANTIC_TOKENS" = true ] || [ "$ALL_TOKENS" = true ] || [ "$ALL_SEMANTIC_TOKEN_OPACITY" = true ] ; then
Write "// MARK: Semantic token - Opacity"
GenerateTokens \
--string "var opacity🆔: OpacitySemanticToken = OpacityPrimitiveTokens.opacity0️⃣" \
--keys "Transparent,Weaker,Weak,Medum,Emphasis,Opaque" \
--values "0,100,300,500,700,900"
fi

# Semantic token - Border - Width

if [ "$SEMANTIC_TOKEN_BORDER_WIDTH" = true ] || [ "$ALL_SEMANTIC_TOKENS" = true ] || [ "$ALL_TOKENS" = true ] || [ "$ALL_SEMANTIC_TOKEN_BORDER" = true ] ; then
Write "// MARK: Semantic token - Border - Width"
GenerateTokens \
--string "var borderWidth🆔: BorderWidthSemanticToken = BorderPrimitiveTokens.borderWidth0️⃣" \
--keys "None,Default,Thin,Thick,Thicker,Thickest,InterfactivePrimaryFocus" \
--values "0,25,25,50,75,100,100"
fi

# Semantic token - Border - Radius

if [ "$SEMANTIC_TOKEN_BORDER_RADIUS" = true ] || [ "$ALL_SEMANTIC_TOKENS" = true ] || [ "$ALL_TOKENS" = true ] || [ "$ALL_SEMANTIC_TOKEN_BORDER" = true ] ; then
Write "// MARK: Semantic token - Border - Radius"
GenerateTokens \
--string "var borderRadius🆔: BorderRadiusSemanticToken = BorderPrimitiveTokens.borderRadius0️⃣" \
--keys "None,Default,Short,Medium,Tall,Pill" \
--values "0,0,75,150,300,9999"
fi

# Semantic token - Border - Style

if [ "$SEMANTIC_TOKEN_BORDER_STYLE" = true ] || [ "$ALL_SEMANTIC_TOKENS" = true ] || [ "$ALL_TOKENS" = true ] || [ "$ALL_SEMANTIC_TOKEN_BORDER" = true ] ; then
Write "// MARK: Semantic token - Border - Style"
GenerateTokens \
--string "var borderStyle🆔: BorderStyleSemanticToken = BorderPrimitiveTokens.borderStyle0️⃣" \
--keys "Default,Drag" \
--values "Solid,Dashed"
fi

# Semantic token - Dimension

if [ "$SEMANTIC_TOKEN_DIMENSION" = true ] || [ "$ALL_SEMANTIC_TOKENS" = true ] || [ "$ALL_TOKENS" = true ] || [ "$ALL_SEMANTIC_TOKEN_DIMENSION" = true ] ; then
Write "// MARK: Semantic token - Dimension"
GenerateTokens \
--string "var dimensionDensity🆔: DimensionSemanticToken = DimensionPrimitiveTokens.dimension0️⃣" \
--keys "Default" \
--values "Base"
fi

# Semantic token - Padding tokens - padding inline

if [ "$SEMANTIC_TOKEN_PADDING_PADDING_INLINE" = true ] || [ "$ALL_SEMANTIC_TOKENS" = true ] || [ "$ALL_TOKENS" = true ] || [ "$ALL_SEMANTIC_TOKEN_PADDING" = true ] ; then
Write "// MARK: Semantic token - Spacing - Padding - Padding inline"
GenerateTokens \
--string "var spacePaddingInlineComponent🆔: SpacingPaddingInlineSemanticToken = DimensionPrimitiveTokens.dimension0️⃣" \
--keys "None,Shorter,Short,Medium,Tall,Taller,IsIconNone,IsIconShorter,IsIconShort,IsIconMedium,IsIconTall,IsIconTaller,IsArrowNone,IsArrowShorter,IsArrowShort,IsArrowMedium,IsArrowTall,IsArrowTaller" \
--values "0,50,100,200,300,400,0,25,50,75,100,200,0,25,50,75,100,200"
fi

# Semantic token - Padding tokens - padding stack

if [ "$SEMANTIC_TOKEN_PADDING_PADDING_STACK" = true ] || [ "$ALL_SEMANTIC_TOKENS" = true ] || [ "$ALL_TOKENS" = true ] || [ "$ALL_SEMANTIC_TOKEN_PADDING" = true ] ; then
Write "// MARK: Semantic token - Spacing - Padding - Padding stack"
GenerateTokens \
--string "var spacePaddingBlockComponent🆔: SpacingPaddingInlineSemanticToken = DimensionPrimitiveTokens.dimension0️⃣" \
--keys "None,Shorter,Short,Medium,Tall,Taller,IsIconNone,IsIconShorter,IsIconShort,IsIconMedium,IsIconTall,IsIconTaller" \
--values "0,50,100,200,300,400,0,25,50,75,100,200"
fi

# Semantic token - Padding tokens - padding inset

if [ "$SEMANTIC_TOKEN_PADDING_PADDING_INSET" = true ] || [ "$ALL_SEMANTIC_TOKENS" = true ] || [ "$ALL_TOKENS" = true ] || [ "$ALL_SEMANTIC_TOKEN_PADDING" = true ] ; then
Write "// MARK: Semantic token - Spacing - Padding - Padding inset"
GenerateTokens \
--string "var spaceInsetComponentGapComponent🆔: SpacingPaddingInlineSemanticToken = DimensionPrimitiveTokens.dimension0️⃣" \
--keys "None,Smash,Shortest,Shorter,Short,Medium,Tall,Taller,Tallest,Spacious" \
--values "0,25,50,75,100,150,200,300,400,500"
fi

# Semantic token - Padding tokens - gap inline

if [ "$SEMANTIC_TOKEN_PADDING_GAP_LINE" = true ] || [ "$ALL_SEMANTIC_TOKENS" = true ] || [ "$ALL_TOKENS" = true ] || [ "$ALL_SEMANTIC_TOKEN_PADDING" = true ] ; then
Write "// MARK: Semantic token - Spacing - Padding - Gap inline"
GenerateTokens \
--string "var spaceColumnGapComponent🆔: SpacingPaddingInlineSemanticToken = DimensionPrimitiveTokens.dimension0️⃣" \
--keys "None,Shorter,Short,Medium,Tall,Taller,IsIconNone,IsIconShorter,IsIconShort,IsIconMedium,IsIconTall,IsIconTaller,IsArrowNone,IsArrowShorter,IsArrowShort,IsArrowMedium,IsArrowTall,IsArrowTaller" \
--values "0,50,100,200,300,400,0,25,50,75,100,200,0,25,50,75,100,200"
fi

# Semantic token - Padding tokens - gap stack

if [ "$SEMANTIC_TOKEN_PADDING_GAP_STACK" = true ] || [ "$ALL_SEMANTIC_TOKENS" = true ] || [ "$ALL_TOKENS" = true ] || [ "$ALL_SEMANTIC_TOKEN_PADDING" = true ] ; then
Write "// MARK: Semantic token - Spacing - Padding - Gap stack"
GenerateTokens \
--string "var spaceRowGapComponent🆔: SpacingGapStackSemanticToken = DimensionPrimitiveTokens.dimension0️⃣" \
--keys "None,Shorter,Short,Medium,Tall,Taller,IsIconNone,IsIconShorter,IsIconShort,IsIconMedium,IsIconTall,IsIconTaller" \
--values "0,25,50,75,100,200,0,25,50,75,100,200"
fi

# Semantic token - Sizing - Width height - icon decorative

if [ "$SEMANTIC_TOKEN_SIZING_WIDTH_HEIGHT_ICON_DECORATIVE" = true ] || [ "$ALL_SEMANTIC_TOKENS" = true ] || [ "$ALL_TOKENS" = true ] || [ "$ALL_SEMANTIC_TOKEN_SIZING" = true ] ; then
Write "// MARK: Semantic token - Sizing - Width height - Icon decorative"
GenerateTokens \
--string "var sizeWidthHeightIcon🆔: SizingWidthHeightSemanticToken = DimensionPrimitiveTokens.dimension0️⃣" \
--keys "Shortest,Shorter,Short,Medium,Tall,Taller,Tallest" \
--values "200,300,400,500,600,700,900"
fi

# Semantic token - Sizing - Width height - icon component

if [ "$SEMANTIC_TOKEN_SIZING_WIDTH_HEIGHT_ICON_COMPONENT" = true ] || [ "$ALL_SEMANTIC_TOKENS" = true ] || [ "$ALL_TOKENS" = true ] || [ "$ALL_SEMANTIC_TOKEN_SIZING" = true ] ; then
Write "// MARK: Semantic token - Sizing - Width height - Icon component"
GenerateTokens \
--string "var sizeWidthHeightIsLabel🆔: SizingWidthHeightSemanticToken = DimensionPrimitiveTokens.dimension0️⃣" \
--keys "SmallShort,SmallMedium,SmallTall,MediumShort,MediumMedium,MediumTall,LargeShorter,LargeShort,LargeMedium,LargeTall,LargeTaller,XLargeShort,XLargeMedium,XLargeTall" \
--values "150,200,250,200,250,300,250,300,350,400,550,400,500,550"
fi

# Semantic token - Sizing - Width height - icon typography

if [ "$SEMANTIC_TOKEN_SIZING_WIDTH_HEIGHT_ICON_TYPOGRAPHY_HEADING" = true ] || [ "$ALL_SEMANTIC_TOKENS" = true ] || [ "$ALL_TOKENS" = true ] || [ "$ALL_SEMANTIC_TOKEN_SIZING" = true ] ; then
Write "// MARK: Semantic token - Sizing - Width height - Icon typography - Heading"
GenerateTokens \
--string "var sizeWidthHeightIconIsHeading🆔: SizingWidthHeightSemanticToken = DimensionPrimitiveTokens.dimension0️⃣" \
--keys "SmallShort,SmallMedium,SmallTall,MediumShort,MediumMedium,MediumTall,LargeShort,LargeMedium,LargeTall,XLargeShort,XLargeMedium,XLargeTall" \
--values "400,500,550,500,550,600,550,600,650,650,700,800"
fi

if [ "$SEMANTIC_TOKEN_SIZING_WIDTH_HEIGHT_ICON_DECORATIVE_BODY" = true ] || [ "$ALL_SEMANTIC_TOKENS" = true ] || [ "$ALL_TOKENS" = true ] || [ "$ALL_SEMANTIC_TOKEN_SIZING" = true ] ; then
Write "// MARK: Semantic token - Sizing - Width height - Icon typography - Body"
GenerateTokens \
--string "var sizeWidthHeightIconIsBody🆔: SizingWidthHeightSemanticToken = DimensionPrimitiveTokens.dimension0️⃣" \
--keys "SmallTall,SmallMedium,SmallTall,MediumShort,MediumMedium,MediumTall,LargeShort,LargeMedium,LargeTall" \
--values "150,500,250,200,250,300,250,300,350"
fi

# Semantic token - Sizing - Max Width

if [ "$SEMANTIC_TOKEN_SIZING_MAX_WIDTH" = true ] || [ "$ALL_SEMANTIC_TOKENS" = true ] || [ "$ALL_TOKENS" = true ] || [ "$ALL_SEMANTIC_TOKEN_SIZING" = true ] ; then
Write "// MARK: Semantic token - Sizing - Max width"
GenerateTokens \
--string "var sizeMaxWidthTypography🆔: SizingMaxWidthSemanticToken = DimensionPrimitiveTokens.dimension0️⃣" \
--keys "DisplaySmall,DisplayMedium,DisplayLarge,HeadingSmall,HeadingMedium,HeadingLarge,HeadingXLarge,BodySmall,BodyMedium,BodyLarge" \
--values "9000,9000,9000,6000,9000,9000,9000,6000,6000,6000"
fi

# Semantic token - Elevation - Z index

if [ "$SEMANTIC_TOKEN_ELEVATION_Z_INDEX" = true  ] || [ "$ALL_SEMANTIC_TOKENS" = true ] || [ "$ALL_TOKENS" = true ] || [ "$ALL_SEMANTIC_TOKEN_ELEVATION" = true ] ; then
Write "// MARK: Semantic token - Elevation - Z index"
GenerateTokens \
--string "var elevationZIndex🆔: ElevationZIndexSemanticToken = ElevationPrimitiveTokens.elevationZIndex0️⃣" \
--keys "Deep,Default,Dropdown,Sticky,Fixed,BackToTop,Spinner,OffCanvasBackdrop,OffCanvas,ModalBackdrop,Modal,Popover,Tooltip,Toast" \
--values "Minus9999,0,1000,1020,1030,1035,1038,1040,1045,1050,1060,1070,1080,1090"
fi

# Semantic token - Elevation - X

if [ "$SEMANTIC_TOKEN_ELEVATION_X" = true ] || [ "$ALL_SEMANTIC_TOKENS" = true ] || [ "$ALL_TOKENS" = true ] || [ "$ALL_SEMANTIC_TOKEN_ELEVATION" = true ] ; then
Write "// MARK: Semantic token - Elevation - X"
GenerateTokens \
--string "var elevationX🆔: ElevationZIndexSemanticToken = ElevationPrimitiveTokens.elevationX0️⃣" \
--keys "None,Raised,Drag,OverlayDefault,OverlayEmphasis,StickyDefault,StickyEmphasis,StickyNavigationScrolled,FOcus" \
--values "0,0,0,0,0,0,0,0,0"
fi

# Semantic token - Elevation - Y

if [ "$SEMANTIC_TOKEN_ELEVATION_Y" = true ] || [ "$ALL_SEMANTIC_TOKENS" = true ] || [ "$ALL_TOKENS" = true ] || [ "$ALL_SEMANTIC_TOKEN_ELEVATION" = true ] ; then
Write "// MARK: Semantic token - Elevation - Y"
GenerateTokens \
--string "var elevationY🆔: ElevationZIndexSemanticToken = ElevationPrimitiveTokens.elevationY0️⃣" \
--keys "None,Raised,Drag,OverlayDefault,OverlayEmphasis,StickyDefault,StickyEmphasis,StickyNavigationScrolled,Focus" \
--values "0,100,300,200,500,300,300,300,0"
fi

# Semantic token - Elevation - Blur

if [ "$SEMANTIC_TOKEN_ELEVATION_BLUR" = true ] || [ "$ALL_SEMANTIC_TOKENS" = true ] || [ "$ALL_TOKENS" = true ] || [ "$ALL_SEMANTIC_TOKEN_ELEVATION" = true ] ; then
Write "// MARK: Semantic token - Elevation - Blur"
GenerateTokens \
--string "var elevationBlur🆔: ElevationBlurSemanticToken = ElevationPrimitiveTokens.elevationBlur0️⃣" \
--keys "None,Raised,Drag,OverlayDefault,OverlayEmphasis,StickyDefault,StickyEmphasis,StickyNavigationScrolled,Focus" \
--values "0,200,400,300,600,400,400,400,0"
fi

# Semantic token - Elevation - Spread

if [ "$SEMANTIC_TOKEN_ELEVATION_SPREAD" = true ] || [ "$ALL_SEMANTIC_TOKENS" = true ] || [ "$ALL_TOKENS" = true ] || [ "$ALL_SEMANTIC_TOKEN_ELEVATION" = true ] ; then
Write "// MARK: Semantic token - Elevation - Spread"
GenerateTokens \
--string "var elevationSpread🆔: ElevationSpreadSemanticToken = ElevationPrimitiveTokens.elevationSpread0️⃣" \
--keys "None,Raised,Drag,OverlayDefault,OverlayEmphasis,StickyDefault,StickyEmphasis,StickyNavigationScrolled,Focus" \
--values "0,0,Minus100,Minus100,Minus300,Minus100,Minus100,Minus100,300"
fi

# Semantic token - Elevation - Color

if [ "$SEMANTIC_TOKEN_ELEVATION_COLOR" = true ] || [ "$ALL_SEMANTIC_TOKENS" = true ] || [ "$ALL_TOKENS" = true ] || [ "$ALL_SEMANTIC_TOKEN_ELEVATION" = true ] ; then
swiftClass="ColorGlobalPrimitiveTokens"
Write "// MARK: Semantic token - Elevation - Color - None"
GenerateTokens \
--string "var elevationColorNone🆔: ElevationColorSemanticToken = 0️⃣" \
--keys "Ligh,Dark,Inverse" \
--values "$swiftClass.colorTransparentWhite0,$swiftClass.colorTransparentWhite0,$swiftClass.colorTransparentWhite0"

Write "// MARK: Semantic token - Elevation - Color - Raised"
GenerateTokens \
--string "var elevationColorRaised🆔: ElevationColorSemanticToken = 0️⃣" \
--keys "Ligh,Dark,Inverse" \
--values "$swiftClass.colorTransparentBlack500,$swiftClass.colorTransparentBlack500,$swiftClass.colorTransparentBlack500"

Write "// MARK: Semantic token - Elevation - Color - Drag"
GenerateTokens \
--string "var elevationColorDrag🆔: ElevationColorSemanticToken = 0️⃣" \
--keys "Ligh,Dark,Inverse" \
--values "$swiftClass.colorTransparentBlack600,$swiftClass.colorTransparentBlack600,$swiftClass.colorTransparentBlack600"

Write "// MARK: Semantic token - Elevation - Color - Overlay - Default"
GenerateTokens \
--string "var elevationColorOverlayDefault🆔: ElevationColorSemanticToken = 0️⃣" \
--keys "Ligh,Dark,Inverse" \
--values "$swiftClass.colorTransparentBlack400,$swiftClass.colorTransparentBlack400,$swiftClass.colorTransparentBlack400"

Write "// MARK: Semantic token - Elevation - Color - Overlay - Emphasis"
GenerateTokens \
--string "var elevationColorOverlayEmphasis🆔: ElevationColorSemanticToken = 0️⃣" \
--keys "Ligh,Dark,Inverse" \
--values "$swiftClass.colorTransparentBlack300,$swiftClass.colorTransparentBlack300,$swiftClass.colorTransparentBlack300"

Write "// MARK: Semantic token - Elevation - Color - Sticky - Default"
GenerateTokens \
--string "var elevationColorStickyDefault🆔: ElevationColorSemanticToken = 0️⃣" \
--keys "Ligh,Dark,Inverse" \
--values "$swiftClass.colorTransparentBlack400,$swiftClass.colorTransparentBlack400,$swiftClass.colorTransparentBlack400"

Write "// MARK: Semantic token - Elevation - Color - Sticky - Emphasis"
GenerateTokens \
--string "var elevationColorStickyEmphasis🆔: ElevationColorSemanticToken = 0️⃣" \
--keys "Ligh,Dark,Inverse" \
--values "$swiftClass.colorTransparentBlack300,$swiftClass.colorTransparentBlack300,$swiftClass.colorTransparentBlack300"

Write "// MARK: Semantic token - Elevation - Color - Sticky - Navigation scrolled"
GenerateTokens \
--string "var elevationColorStickyNavigationScrolled🆔: ElevationColorSemanticToken = 0️⃣" \
--keys "Ligh,Dark,Inverse" \
--values "$swiftClass.colorTransparentBlack300,$swiftClass.colorTransparentBlack300,$swiftClass.colorTransparentBlack300"

Write "// MARK: Semantic token - Elevation - Color - Focus"
GenerateTokens \
--string "var elevationColorFocus🆔: ElevationColorSemanticToken = 0️⃣" \
--keys "Ligh,Dark,Inverse" \
--values "$swiftClass.colorTransparentWhite900,$swiftClass.colorTransparentWhite900,$swiftClass.colorTransparentWhite900"
fi

# Semantic token - Grid - iOS Extra Compact

if [ "$SEMANTIC_TOKEN_GRID_IOS_EXTRA_COMPACT" = true ] || [ "$ALL_SEMANTIC_TOKENS" = true ] || [ "$ALL_TOKENS" = true ] || [ "$ALL_SEMANTIC_TOKEN_GRID" = true ] ; then
Write "// MARK: Semantic token - Grid - iOS Extra compact"
GenerateTokens \
--string "var gridIOSExtraCompact🆔: GridIOSExtraCompactSemanticTokens = GridPrimitiveTokens.grid0️⃣" \
--keys "MinWidth,MaxWidth,Margin,ColumnGap,ColumnCount" \
--values "MinWidthIOSExtraCompact,MaxWidthIOSExtraCompact,Margin100,ColumnGap100,ColumnCount100"
fi

# Semantic token - Grid - iOS Compact

if [ "$SEMANTIC_TOKEN_GRID_IOS_COMPACT" = true ] || [ "$ALL_SEMANTIC_TOKENS" = true ] || [ "$ALL_TOKENS" = true ] || [ "$ALL_SEMANTIC_TOKEN_GRID" = true ] ; then
Write "// MARK: Semantic token - Grid - iOS Compact"
GenerateTokens \
--string "var gridIOSCompact🆔: GridIOSCompactSemanticToken = GridPrimitiveTokens.grid0️⃣" \
--keys "MinWidth,MaxWidth,Margin,ColumnGap,ColumnCount" \
--values "MinWidthIOSCompact,MaxWidthIOSCompact,Margin300,ColumnGap100,ColumnCount400"
fi

# Semantic token - Grid - iOS Regular

if [ "$SEMANTIC_TOKEN_GRID_IOS_REGULAR" = true ] || [ "$ALL_SEMANTIC_TOKENS" = true ] || [ "$ALL_TOKENS" = true ] || [ "$ALL_SEMANTIC_TOKEN_GRID" = true ] ; then
Write "// MARK: Semantic token - Grid - iOS Regular"
GenerateTokens \
--string "var gridIOSRegular🆔: GridIOSRegularSemanticToken = GridPrimitiveTokens.grid0️⃣" \
--keys "MinWidth,MaxWidth,Margin,ColumnGap,ColumnCount" \
--values "MinWidthIOSRegular,MaxWidthIOSRegular,Margin500,ColumnGap300,ColumnCount600"
fi

# Semantic Token - Typography - Font - Family

if [ "$SEMANTIC_TOKEN_TYPOGRAPHY_FONT_FAMILY" = true ] || [ "$ALL_SEMANTIC_TOKENS" = true ] || [ "$ALL_TOKENS" = true ] || [ "$ALL_SEMANTIC_TOKEN_TYPOGRAPHY" = true ] ; then
Write "// MARK: Semantic token - Typography - Font - Family"
GenerateTokens \
--string "var fontFamily🆔: TypographyFontFamilySemanticToken = TypographyPrimitiveTokens.fontFamily0️⃣" \
--keys "Display,Heading,Body,Label,Code" \
--values "System,System,System,System,System"
fi

# Semantic Token - Typography - Font - Weight

if [ "$SEMANTIC_TOKEN_TYPOGRAPHY_FONT_WEIGHT" = true ] || [ "$ALL_SEMANTIC_TOKENS" = true ] || [ "$ALL_TOKENS" = true ] || [ "$ALL_SEMANTIC_TOKEN_TYPOGRAPHY" = true ] ; then
Write "// MARK: Semantic token - Typography - Font - Weight"
GenerateTokens \
--string "var fontWeight🆔: TypographyFontWeightSemanticToken = TypographyPrimitiveTokens.fontWeight0️⃣" \
--keys "Display,Heading,BodyDefault,BodyStrong,LabelDefault,LabelStrong,WeightCode" \
--values "700,700,400,700,400,700,400"
fi

# Semantic Token - Typography - Font - Size

if [ "$SEMANTIC_TOKEN_TYPOGRAPHY_FONT_SIZE_MOBILE" = true ] || [ "$ALL_SEMANTIC_TOKENS" = true ] || [ "$ALL_TOKENS" = true ] || [ "$ALL_SEMANTIC_TOKEN_TYPOGRAPHY" = true ] ; then
Write "// MARK: Semantic token - Typography - Font - Size - Mobile"
GenerateTokens \
--string "var fontSize🆔: TypographyFontSizeSemanticToken = TypographyPrimitiveTokens.fontSize0️⃣" \
--keys "MobileDislayLarge,MobileDisplayMedium,MobileDisplaySmall,MobileHeadingXLarge,MobileHeadingLarge,MobileHeadingMedium,MobileHeadingSmall,MobileBodyLarge,MobileBodyMedium,MobileBodySmall" \
--values "850,750,650,550,450,350,300,250,200,100"
fi

if [ "$SEMANTIC_TOKEN_TYPOGRAPHY_FONT_SIZE_TABLET" = true ] || [ "$ALL_SEMANTIC_TOKENS" = true ] || [ "$ALL_TOKENS" = true ] || [ "$ALL_SEMANTIC_TOKEN_TYPOGRAPHY" = true ] ; then
Write "// MARK: Semantic token - Typography - Font - Size - Tablet"
GenerateTokens \
--string "var fontSize🆔: TypographyFontSizeSemanticToken = TypographyPrimitiveTokens.fontSize0️⃣" \
--keys "TabletDislayLarge,TabletDisplayMedium,TabletDisplaySmall,TabletHeadingXLarge,TabletHeadingLarge,TabletHeadingMedium,TabletHeadingSmall,TabletBodyLarge,TabletBodyMedium,TabletBodySmall" \
--values "1450,1050,850,750,550,450,350,250,200,150"
fi

if [ "$SEMANTIC_TOKEN_TYPOGRAPHY_FONT_SIZE_OTHERS" = true ] || [ "$ALL_SEMANTIC_TOKENS" = true ] || [ "$ALL_TOKENS" = true ] || [ "$ALL_SEMANTIC_TOKEN_TYPOGRAPHY" = true ] ; then
Write "// MARK: Semantic token - Typography - Font - Size - Others"
GenerateTokens \
--string "var fontSize🆔: TypographyFontSizeSemanticToken = TypographyPrimitiveTokens.fontSize0️⃣" \
--keys "LabelXLarge,LabelLarge,LabelMedium,LabelSmall,CodeMedium,CodeSmall" \
--values "300,250,200,100,200,150"
fi

# Semantic Token - Typography - Font - Line Height

if [ "$SEMANTIC_TOKEN_TYPOGRAPHY_FONT_LINE_HEIGHT_MOBILE" = true ] || [ "$ALL_SEMANTIC_TOKENS" = true ] || [ "$ALL_TOKENS" = true ] || [ "$ALL_SEMANTIC_TOKEN_TYPOGRAPHY" = true ] ; then
Write "// MARK: Semantic token - Typography - Font - Light height - Mobile"
GenerateTokens \
--string "var fontLineHeight🆔: TypographyFontLineHeightSemanticToken = TypographyPrimitiveTokens.fontLineHeight0️⃣" \
--keys "MobileDislayLarge,MobileDisplayMedium,MobileDisplaySmall,MobileHeadingXLarge,MobileHeadingLarge,MobileHeadingMedium,MobileHeadingSmall,MobileBodyLarge,MobileBodyMedium,MobileBodySmall" \
--values "1050,950,850,750,650,550,450,450,350,250"
fi

if [ "$SEMANTIC_TOKEN_TYPOGRAPHY_FONT_LINE_HEIGHT_TABLET" = true ] || [ "$ALL_SEMANTIC_TOKENS" = true ] || [ "$ALL_TOKENS" = true ] || [ "$ALL_SEMANTIC_TOKEN_TYPOGRAPHY" = true ] ; then
Write "// MARK: Semantic token - Typography - Font - Light height - Tablet"
GenerateTokens \
--string "var fontLineHeight🆔: TypographyFontLineHeightSemanticToken = TypographyPrimitiveTokens.fontLineHeight0️⃣" \
--keys "TabletDislayLarge,TabletDisplayMedium,TabletDisplaySmall,TabletHeadingXLarge,TabletHeadingLarge,TabletHeadingMedium,TabletHeadingSmall,TabletBodyLarge,TabletBodyMedium,TabletBodySmall" \
--values "1850,1250,1050,950,750,650,550,450,350,250"
fi

if [ "$SEMANTIC_TOKEN_TYPOGRAPHY_FONT_LINE_HEIGHT_OTHERS" = true ] || [ "$ALL_SEMANTIC_TOKENS" = true ] || [ "$ALL_TOKENS" = true ] || [ "$ALL_SEMANTIC_TOKEN_TYPOGRAPHY" = true ] ; then
Write "// MARK: Semantic token - Typography - Font - Light height - Others"
GenerateTokens \
--string "var fontLineHeight🆔: TypographyFontLineHeightSemanticToken = TypographyPrimitiveTokens.fontLineHeight0️⃣" \
--keys "LabelXLarge,LabelLarge,LabelMedium,LabelSmall,CodeMedium,CodeSmall" \
--values "450,450,350,250,350,250"
fi

# Semantic Token - Typography - Font - Paragraph Spacing

if [ "$SEMANTIC_TOKEN_TYPOGRAPHY_FONT_PARAGRAPH_SPACING_MOBILE" = true ] || [ "$ALL_SEMANTIC_TOKENS" = true ] || [ "$ALL_TOKENS" = true ] || [ "$ALL_SEMANTIC_TOKEN_TYPOGRAPHY" = true ] ; then
Write "// MARK: Semantic token - Typography - Font - Paragraph spacing - Mobile"
GenerateTokens \
--string "var fontParagraphSpacing🆔: TypographyFontParagraphSpacingPrimitiveToken = TypographyPrimitiveTokens.fontParagraphSpacing0️⃣" \
--keys "MobileDislayLarge,MobileDisplayMedium,MobileDisplaySmall,MobileHeadingXLarge,MobileHeadingLarge,MobileHeadingMedium,MobileHeadingSmall,MobileBodyLarge,MobileBodyMedium,MobileBodySmall" \
--values "100,100,100,100,100,100,100,100,100,100"
fi

if [ "$SEMANTIC_TOKEN_TYPOGRAPHY_FONT_PARAGRAPH_SPACING_TABLET" = true ] || [ "$ALL_SEMANTIC_TOKENS" = true ] || [ "$ALL_TOKENS" = true ] || [ "$ALL_SEMANTIC_TOKEN_TYPOGRAPHY" = true ] ; then
Write "// MARK: Semantic token - Typography - Font - Paragraph spacing - Tablet"
GenerateTokens \
--string "var fontParagraphSpacing🆔: TypographyFontParagraphSpacingPrimitiveToken = TypographyPrimitiveTokens.fontParagraphSpacing0️⃣" \
--keys "TabletDislayLarge,TabletDisplayMedium,TabletDisplaySmall,TabletHeadingXLarge,TabletHeadingLarge,TabletHeadingMedium,TabletHeadingSmall,TabletBodyLarge,TabletBodyMedium,TabletBodySmall" \
--values "100,100,100,100,100,100,100,100,100,100"
fi

if [ "$SEMANTIC_TOKEN_TYPOGRAPHY_FONT_PARAGRAPH_SPACING_OTHERS" = true ] || [ "$ALL_SEMANTIC_TOKENS" = true ] || [ "$ALL_TOKENS" = true ] || [ "$ALL_SEMANTIC_TOKEN_TYPOGRAPHY" = true ] ; then
Write "// MARK: Semantic token - Typography - Font - Paragraph spacing - Others"
GenerateTokens \
--string "var fontParagraphSpacing🆔: TypographyFontParagraphSpacingPrimitiveToken = TypographyPrimitiveTokens.fontParagraphSpacing0️⃣" \
--keys "LabelXLarge,LabelLarge,LabelMedium,LabelSmall,CodeMedium,CodeSmall" \
--values "100,100,100,100,100,100"
fi

# Semantic Token - Colors - Aliases

if [ "$SEMANTIC_TOKEN_COLORS_ALIASES" = true ] || [ "$ALL_SEMANTIC_TOKENS" = true ] || [ "$ALL_TOKENS" = true ] || [ "$ALL_SEMANTIC_TOKEN_COLORS" = true ] ; then
swiftClass="ColorOrangePrimitiveTokens"
Write "// MARK: Semantic token - Colors - Alias - Primary"
GenerateTokens \
--string "var sysColorBrandPrimary🆔: ColorAliasSemanticToken? = 0️⃣" \
--keys "Lowest,Lower,Low,Default,High,Higher,Highest" \
--values "nil,nil,$swiftClass.colorBrandOrange500,$swiftClass.colorBrandOrange550,nil,nil,nil"

swiftClass="ColorOrangePrimitiveTokens"
Write "// MARK: Semantic token - Colors - Alias - Secondary"
GenerateTokens \
--string "var sysColorBrandSecondary🆔: ColorAliasSemanticToken? = 0️⃣" \
--keys "Lowest,Lower,Low,Default,High,Higher,Highest" \
--values "nil,nil,nil,nil,nil,nil,nil"

swiftClass="ColorOrangePrimitiveTokens"
Write "// MARK: Semantic token - Colors - Alias - Tertiary"
GenerateTokens \
--string "var sysColorBrandTertiary🆔: ColorAliasSemanticToken? = 0️⃣" \
--keys "Lowest,Lower,Low,Default,High,Higher,Highest" \
--values "nil,nil,nil,nil,nil,nil,nil"

swiftClass="ColorGlobalPrimitiveTokens"
Write "// MARK: Semantic token - Colors - Alias - Neutral - Muted"
GenerateTokens \
--string "var sysColorBrandNeutralMuted🆔: ColorAliasSemanticToken? = 0️⃣" \
--keys "White,Lowest,Lower,Low,Medium,High,Higher,Highest" \
--values "$swiftClass.colorFunctionalWhite,$swiftClass.colorFunctionalLightGray80,$swiftClass.colorFunctionalLightGray160,nil,$swiftClass.colorFunctionalLightGray400,$swiftClass.colorFunctionalLightGray560,nil,nil"

swiftClass="ColorGlobalPrimitiveTokens"
Write "// MARK: Semantic token - Colors - Alias - Neutral - Emphasis"
GenerateTokens \
--string "var sysColorBrandNeutralEmphasis🆔: ColorAliasSemanticToken? = 0️⃣" \
--keys "Lowest,Lower,Low,Medium,High,Higher,Highest,Black" \
--values "$swiftClass.colorFunctionalDarkGray400,$swiftClass.colorFunctionalDarkGray480,$swiftClass.colorFunctionalDarkGray560,$swiftClass.colorFunctionalDarkGray640,$swiftClass.colorFunctionalDarkGray720,$swiftClass.colorFunctionalDarkGray800,$swiftClass.colorFunctionalDarkGray880,$swiftClass.colorFunctionalBlack"

swiftClass="ColorGlobalPrimitiveTokens"
Write "// MARK: Semantic token - Colors - Alias - Positive"
GenerateTokens \
--string "var sysColorBrandPositive🆔: ColorAliasSemanticToken? = 0️⃣" \
--keys "Lowest,Lower,Low,Default,High,Higher,Highest" \
--values "$swiftClass.colorFunctionalMalachite100,nil,nil,$swiftClass.colorFunctionalMalachite500,$swiftClass.colorFunctionalMalachite600,nil,$swiftClass.colorFunctionalMalachite800"

swiftClass="ColorGlobalPrimitiveTokens"
Write "// MARK: Semantic token - Colors - Alias - Information"
GenerateTokens \
--string "var sysColorBrandInformation🆔: ColorAliasSemanticToken? = 0️⃣" \
--keys "Lowest,Lower,Low,Default,High,Higher,Highest" \
--values "$swiftClass.colorFunctionalDodgerBlue100,nil,nil,$swiftClass.colorFunctionalDodgerBlue500,$swiftClass.colorFunctionalDodgerBlue600,nil,$swiftClass.colorFunctionalDodgerBlue800"

swiftClass="ColorGlobalPrimitiveTokens"
Write "// MARK: Semantic token - Colors - Alias - Warning"
GenerateTokens \
--string "var sysColorBrandWarning🆔: ColorAliasSemanticToken? = 0️⃣" \
--keys "Lowest,Lower,Low,Default,High,Higher,Highest" \
--values "$swiftClass.colorFunctionalSun100,nil,nil,$swiftClass.colorFunctionalSun500,$swiftClass.colorFunctionalSun600,nil,$swiftClass.colorFunctionalSun800"

swiftClass="ColorGlobalPrimitiveTokens"
Write "// MARK: Semantic token - Colors - Alias - Negative"
GenerateTokens \
--string "var sysColorBrandNegative🆔: ColorAliasSemanticToken? = 0️⃣" \
--keys "Lowest,Lower,Low,Default,High,Higher,Highest" \
--values "$swiftClass.colorFunctionalScarlet100,nil,nil,$swiftClass.colorFunctionalScarlet500,$swiftClass.colorFunctionalScarlet600,nil,$swiftClass.colorFunctionalScarlet800"

swiftClass="ColorGlobalPrimitiveTokens"
swiftClass2="ColorOrangePrimitiveTokens"
Write "// MARK: Semantic token - Colors - Alias - Attractive"
GenerateTokens \
--string "var sysColorBrandAttractive🆔: ColorAliasSemanticToken? = 0️⃣" \
--keys "Lowest,Lower,Low,Medium,High,Higher,Highest" \
--values "$swiftClass2.colorBrandWarmGray100,nil,nil,$swiftClass.colorFunctionalSun500,$swiftClass.colorFunctionalSun600,nil,$swiftClass2.colorBrandWarmGray900"
fi

# Semantic Token - Colors - Background

if [ "$SEMANTIC_TOKEN_COLORS_BACKGROUND" = true ] || [ "$ALL_SEMANTIC_TOKENS" = true ] || [ "$ALL_TOKENS" = true ] || [ "$ALL_SEMANTIC_TOKEN_COLORS" = true ] ; then
Write "// MARK: Semantic token - Colors - Background - Default - Primary"
GenerateTokens \
--string "var colorBackgroundDefaultPrimary🆔: ColorSemanticToken? = 0️⃣" \
--keys "Light,Inverse,Dark" \
--values "sysColorBrandNeutralMutedWhite,sysColorBrandNeutralEmphasisBlack,sysColorBrandNeutralEmphasisHighest"

Write "// MARK: Semantic token - Colors - Background - Default - Secondary"
GenerateTokens \
--string "var colorBackgroundDefaultSecondary🆔: ColorSemanticToken? = 0️⃣" \
--keys "Light,Inverse,Dark" \
--values "sysColorBrandNeutralMutedLowest,sysColorBrandNeutralEmphasisMedium,sysColorBrandNeutralEmphasisHigher"

Write "// MARK: Semantic token - Colors - Background - Default - Tertiary"
GenerateTokens \
--string "var colorBackgroundDefaultTertiary🆔: ColorSemanticToken? = 0️⃣" \
--keys "Light,Inverse,Dark" \
--values "sysColorBrandAttractiveLowest,sysColorBrandAttractiveHighest,sysColorBrandAttractiveHighest"

Write "// MARK: Semantic token - Colors - Background - Emphasis - Primary"
GenerateTokens \
--string "var colorBackgroundEmphasisPrimary🆔: ColorSemanticToken? = 0️⃣" \
--keys "Light,Inverse,Dark" \
--values "sysColorBrandNeutralEmphasisBlack,sysColorBrandNeutralMutedWhite,sysColorBrandNeutralEmphasisMedium"

Write "// MARK: Semantic token - Colors - Background - Emphasis - Secondary"
GenerateTokens \
--string "var colorBackgroundEmphasisSecondary🆔: ColorSemanticToken? = 0️⃣" \
--keys "Light,Inverse,Dark" \
--values "sysColorBrandNeutralEmphasisMedium,sysColorBrandNeutralMutedLowest,sysColorBrandNeutralEmphasisHigh"

Write "// MARK: Semantic token - Colors - Background - Brand - Primary"
GenerateTokens \
--string "var colorBackgroundBrandPrimary🆔: ColorSemanticToken? = 0️⃣" \
--keys "Light,Inverse,Dark" \
--values "sysColorBrandPrimaryDefault,sysColorBrandPrimaryDefault,sysColorBrandPrimaryLow"

Write "// MARK: Semantic token - Colors - Background - Brand - Secondary"
GenerateTokens \
--string "var colorBackgroundBrand🆔: ColorSemanticToken? = 0️⃣" \
--keys "Secondary" \
--values "nil"

Write "// MARK: Semantic token - Colors - Background - Brand - Tertiary"
GenerateTokens \
--string "var colorBackgroundBrand🆔: ColorSemanticToken? = 0️⃣" \
--keys "Tertiary" \
--values "nil"

swiftClass="ColorOrangePrimitiveTokens"
Write "// MARK: Semantic token - Colors - Background - Status - Attractive - Muted"
GenerateTokens \
--string "var colorBackgroundStatusAttractiveMuted🆔: ColorSemanticToken? = 0️⃣" \
--keys "Light,Inverse,Dark" \
--values "sysColorBrandAttractiveLowest,sysColorBrandAttractiveLowest,sysColorBrandAttractiveHighest"

swiftClass="ColorOrangePrimitiveTokens"
Write "// MARK: Semantic token - Colors - Background - Status - Attractive - Emphasis"
GenerateTokens \
--string "var colorBackgroundStatusAttractiveEmphasis🆔: ColorSemanticToken? = 0️⃣" \
--keys "Light,Inverse,Dark" \
--values "sysColorBrandWarningDefault,sysColorBrandWarningDefault,sysColorBrandWarningHighest"

swiftClass="ColorOrangePrimitiveTokens"
Write "// MARK: Semantic token - Colors - Background - Status - Warning - Muted"
GenerateTokens \
--string "var colorBackgroundStatusWarningMuted🆔: ColorSemanticToken? = 0️⃣" \
--keys "Light,Inverse,Dark" \
--values "sysColorBrandWarningLowest,sysColorBrandWarningLowest,sysColorBrandNeutralEmphasisHigh"

swiftClass="ColorOrangePrimitiveTokens"
Write "// MARK: Semantic token - Colors - Background - Status - Warning - Emphasis"
GenerateTokens \
--string "var colorBackgroundStatusWarningEmphasis🆔: ColorSemanticToken? = 0️⃣" \
--keys "Light,Inverse,Dark" \
--values "sysColorBrandWarningDefault,sysColorBrandWarningDefault,sysColorBrandWarningHighest"

swiftClass="ColorOrangePrimitiveTokens"
Write "// MARK: Semantic token - Colors - Background - Status - Negative - Muted"
GenerateTokens \
--string "var colorBackgroundStatusNegativeMuted🆔: ColorSemanticToken? = 0️⃣" \
--keys "Light,Inverse,Dark" \
--values "sysColorBrandNegativeLowest,sysColorBrandNegativeLowest,sysColorBrandNeutralEmphasisHigh"

swiftClass="ColorOrangePrimitiveTokens"
Write "// MARK: Semantic token - Colors - Background - Status - Negative - Emphasis"
GenerateTokens \
--string "var colorBackgroundStatusNegativeEmphasis🆔: ColorSemanticToken? = 0️⃣" \
--keys "Light,Inverse,Dark" \
--values "sysColorBrandNegativeDefault,sysColorBrandNegativeDefault,sysColorBrandNegativeHighest"

swiftClass="ColorOrangePrimitiveTokens"
Write "// MARK: Semantic token - Colors - Background - Status - Positive - Muted"
GenerateTokens \
--string "var colorBackgroundStatusPositiveMuted🆔: ColorSemanticToken? = 0️⃣" \
--keys "Light,Inverse,Dark" \
--values "sysColorBrandPositiveLowest,sysColorBrandPositiveLowest,sysColorBrandNeutralEmphasisHigh"

swiftClass="ColorOrangePrimitiveTokens"
Write "// MARK: Semantic token - Colors - Background - Status - Positive - Emphasis"
GenerateTokens \
--string "var colorBackgroundStatusPositiveEmphasis🆔: ColorSemanticToken? = 0️⃣" \
--keys "Light,Inverse,Dark" \
--values "sysColorBrandPositiveDefault,sysColorBrandPositiveDefault,sysColorBrandPositiveHighest"

swiftClass="ColorOrangePrimitiveTokens"
Write "// MARK: Semantic token - Colors - Background - Status - Information - Muted"
GenerateTokens \
--string "var colorBackgroundStatusInformationMuted🆔: ColorSemanticToken? = 0️⃣" \
--keys "Light,Inverse,Dark" \
--values "sysColorBrandInformationLowest,sysColorBrandInformationLowest,sysColorBrandNeutralEmphasisHigh"

swiftClass="ColorOrangePrimitiveTokens"
Write "// MARK: Semantic token - Colors - Background - Status - Information - Emphasis"
GenerateTokens \
--string "var colorBackgroundStatusInformationEmphasis🆔: ColorSemanticToken? = 0️⃣" \
--keys "Light,Inverse,Dark" \
--values "sysColorBrandInformationDefault,sysColorBrandInformationDefault,sysColorBrandInformationHighest"
fi

# Semantic Token - Colors - Content

if [ "$SEMANTIC_TOKEN_COLORS_CONTENT" = true ] || [ "$ALL_SEMANTIC_TOKENS" = true ] || [ "$ALL_TOKENS" = true ] || [ "$ALL_SEMANTIC_TOKEN_COLORS" = true ] ; then

Write "// MARK: Semantic token - Colors - Content - Default"
GenerateTokens \
--string "var colorContentDefault🆔: ColorSemanticToken? = 0️⃣" \
--keys "Light,Inverse,Dark" \
--values "sysColorBrandNeutralEmphasisBlack,sysColorBrandNeutralMutedWhite,sysColorBrandNeutralMutedLower"

Write "// MARK: Semantic token - Colors - Content - Default - On background emphasis"
GenerateTokens \
--string "var colorContentDefaultOnBackgroundEmphasis🆔: ColorSemanticToken? = 0️⃣" \
--keys "Light,Inverse,Dark" \
--values "sysColorBrandNeutralMutedWhite,sysColorBrandNeutralEmphasisBlack,sysColorBrandNeutralMutedLower"

Write "// MARK: Semantic token - Colors - Content - Muted"
GenerateTokens \
--string "var colorContentMuted🆔: ColorSemanticToken? = 0️⃣" \
--keys "Light,Inverse,Dark" \
--values "sysColorBrandNeutralEmphasisLowest,sysColorBrandNeutralEmphasisMedium,sysColorBrandNeutralEmphasisHigh"

Write "// MARK: Semantic token - Colors - Content - Muted - On background emphasis"
GenerateTokens \
--string "var colorContentMutedOnBackgroundEmphasis🆔: ColorSemanticToken? = 0️⃣" \
--keys "Light,Inverse,Dark" \
--values "sysColorBrandNeutralMutedMedium,sysColorBrandNeutralEmphasisLowest,sysColorBrandNeutralMutedHigh"

Write "// MARK: Semantic token - Colors - Content - Brand - Primary"
GenerateTokens \
--string "var colorContentBrandPrimary🆔: ColorSemanticToken? = 0️⃣" \
--keys "Light,Inverse,Dark" \
--values "sysColorBrandPrimaryDefault,sysColorBrandPrimaryLow,sysColorBrandPrimaryLow"

Write "// MARK: Semantic token - Colors - Content - Brand - Primary - On background emphasis"
GenerateTokens \
--string "var colorContentBrandPrimaryOnBackgroundEmphasis🆔: ColorSemanticToken? = 0️⃣" \
--keys "Light,Inverse,Dark" \
--values "sysColorBrandPrimaryLow,sysColorBrandPrimaryDefault,sysColorBrandPrimaryLow"

Write "// MARK: Semantic token - Colors - Content - Brand - Secondary"
GenerateTokens \
--string "var colorContentBrandSecondary🆔: ColorSemanticToken? = 0️⃣" \
--keys "Light,Inverse,Dark" \
--values "nil,nil,nil"

Write "// MARK: Semantic token - Colors - Content - Brand - Tertiary"
GenerateTokens \
--string "var colorContentBrandTertiary🆔: ColorSemanticToken? = 0️⃣" \
--keys "Light,Inverse,Dark" \
--values "nil,nil,nil"

Write "// MARK: Semantic token - Colors - Content - Status - Attractive"
GenerateTokens \
--string "var colorContentStatusAttractive🆔: ColorSemanticToken? = 0️⃣" \
--keys "Light,Inverse,Dark" \
--values "nil,nil,nil"

Write "// MARK: Semantic token - Colors - Content - Status - Negative"
GenerateTokens \
--string "var colorContentStatusNegative🆔: ColorSemanticToken? = 0️⃣" \
--keys "Light,Inverse,Dark" \
--values "sysColorBrandNegativeDefault,sysColorBrandNegativeDefault,sysColorBrandNegativeDefault"

Write "// MARK: Semantic token - Colors - Content - Status - Positive"
GenerateTokens \
--string "var colorContentStatusPositive🆔: ColorSemanticToken? = 0️⃣" \
--keys "Light,Inverse,Dark" \
--values "sysColorBrandPositiveDefault,sysColorBrandPositiveDefault,sysColorBrandPositiveDefault"

Write "// MARK: Semantic token - Colors - Content - Status - Information"
GenerateTokens \
--string "var colorContentStatusInformation🆔: ColorSemanticToken? = 0️⃣" \
--keys "Light,Inverse,Dark" \
--values "sysColorBrandInformationDefault,sysColorBrandInformationDefault,sysColorBrandInformationDefault"
fi

# Semantic Token - Colors - Borders

if [ "$SEMANTIC_TOKEN_COLORS_BORDER" = true ] || [ "$ALL_SEMANTIC_TOKENS" = true ] || [ "$ALL_TOKENS" = true ] || [ "$ALL_SEMANTIC_TOKEN_COLORS" = true ] ; then
Write "// MARK: Semantic token - Colors - Border - Default"
GenerateTokens \
--string "var colorBorderDefault🆔: ColorSemanticToken? = 0️⃣" \
--keys "Light,Inverse,Dark" \
--values "sysColorBrandNeutralMutedMedium,sysColorBrandNeutralEmphasisLowest,sysColorBrandNeutralEmphasisLowest"

Write "// MARK: Semantic token - Colors - Border - Default - On background emphasis"
GenerateTokens \
--string "var colorBorderDefaultOnBackgroundEmphasis🆔: ColorSemanticToken? = 0️⃣" \
--keys "Light,Inverse,Dark" \
--values "sysColorBrandNeutralEmphasisLowest,sysColorBrandNeutralMutedMedium,sysColorBrandNeutralEmphasisLowest"

Write "// MARK: Semantic token - Colors - Border - Emphasis"
GenerateTokens \
--string "var colorBorderEmphasis🆔: ColorSemanticToken? = 0️⃣" \
--keys "Light,Inverse,Dark" \
--values "sysColorBrandNeutralEmphasisBlack,sysColorBrandNeutralMutedWhite,sysColorBrandNeutralMutedLower"

Write "// MARK: Semantic token - Colors - Border - Emphasis - On background emphasis"
GenerateTokens \
--string "var colorBorderEmphasisOnBackgroundEmphasis🆔: ColorSemanticToken? = 0️⃣" \
--keys "Light,Inverse,Dark" \
--values "sysColorBrandNeutralMutedWhite,sysColorBrandNeutralEmphasisBlack,sysColorBrandNeutralMutedLower"

Write "// MARK: Semantic token - Colors - Border - Brand - Primary"
GenerateTokens \
--string "var colorBorderBrandPrimary🆔: ColorSemanticToken? = 0️⃣" \
--keys "Light,Inverse,Dark" \
--values "sysColorBrandPrimaryDefault,sysColorBrandPrimaryLow,sysColorBrandPrimaryLow"

Write "// MARK: Semantic token - Colors - Border - Brand - Primary - On background emphasis"
GenerateTokens \
--string "var colorBorderBrandPrimaryOnBackgroundEmphasis🆔: ColorSemanticToken? = 0️⃣" \
--keys "Light,Inverse,Dark" \
--values "sysColorBrandPrimaryLow,sysColorBrandPrimaryDefault,sysColorBrandPrimaryLow"

Write "// MARK: Semantic token - Colors - Border - Brand - Secondary"
GenerateTokens \
--string "var colorBorderBrandSecondary🆔: ColorSemanticToken? = 0️⃣" \
--keys "Light,Inverse,Dark" \
--values "nil,nil,nil"

Write "// MARK: Semantic token - Colors - Border - Brand - Tertiary"
GenerateTokens \
--string "var colorBorderBrandTertiary🆔: ColorSemanticToken? = 0️⃣" \
--keys "Light,Inverse,Dark" \
--values "nil,nil,nil"

Write "// MARK: Semantic token - Colors - Border - Status - Attractive"
GenerateTokens \
--string "var colorBorderBrandStatusAttractive🆔: ColorSemanticToken? = 0️⃣" \
--keys "Light,Inverse,Dark" \
--values "nil,nil,nil"

Write "// MARK: Semantic token - Colors - Border - Status - Warning"
GenerateTokens \
--string "var colorBorderBrandStatusWarning🆔: ColorSemanticToken? = 0️⃣" \
--keys "Light,Inverse,Dark" \
--values "nil,nil,nil"

Write "// MARK: Semantic token - Colors - Border - Status - Negative"
GenerateTokens \
--string "var colorBorderBrandStatusNegative🆔: ColorSemanticToken? = 0️⃣" \
--keys "Light,Inverse,Dark" \
--values "nil,nil,nil"

Write "// MARK: Semantic token - Colors - Border - Status - Positive"
GenerateTokens \
--string "var colorBorderBrandStatusPositive🆔: ColorSemanticToken? = 0️⃣" \
--keys "Light,Inverse,Dark" \
--values "nil,nil,nil"

Write "// MARK: Semantic token - Colors - Border - Status - Information"
GenerateTokens \
--string "var colorBorderBrandStatusInformation🆔: ColorSemanticToken? = 0️⃣" \
--keys "Light,Inverse,Dark" \
--values "nil,nil,nil"
fi

# Semantic Token - Colors - On Background

if [ "$SEMANTIC_TOKEN_COLORS_ON_BACKGROUND" = true ] || [ "$ALL_SEMANTIC_TOKENS" = true ] || [ "$ALL_TOKENS" = true ] || [ "$ALL_SEMANTIC_TOKEN_COLORS" = true ] ; then
Write "// MARK: Semantic token - Colors - On background - Primary"
GenerateTokens \
--string "var colorOnBackgroundPrimary🆔: ColorSemanticToken? = 0️⃣" \
--keys "Light,Inverse,Dark" \
--values "sysColorBrandNeutralMutedWhite,sysColorBrandNeutralMutedWhite,sysColorBrandNeutralEmphasisHighest"

Write "// MARK: Semantic token - Colors - On background - Secondary"
GenerateTokens \
--string "var colorOnBackgroundSecondary🆔: ColorSemanticToken? = 0️⃣" \
--keys "Light,Inverse,Dark" \
--values "nil,nil,nil"

Write "// MARK: Semantic token - Colors - On background - Tertiary"
GenerateTokens \
--string "var colorOnBackgroundTertiary🆔: ColorSemanticToken? = 0️⃣" \
--keys "Light,Inverse,Dark" \
--values "nil,nil,nil"

Write "// MARK: Semantic token - Colors - On background - Status - Attrative - Muted"
GenerateTokens \
--string "var colorOnBackgroundStatusAttractiveMuted🆔: ColorSemanticToken? = 0️⃣" \
--keys "Light,Inverse,Dark" \
--values "sysColorBrandNeutralEmphasisBlack,sysColorBrandNeutralEmphasisBlack,sysColorBrandNeutralMutedLower"

Write "// MARK: Semantic token - Colors - On background - Status - Attrative - Emphasis"
GenerateTokens \
--string "var colorOnBackgroundStatusAttractiveEmphasis🆔: ColorSemanticToken? = 0️⃣" \
--keys "Light,Inverse,Dark" \
--values "sysColorBrandNeutralEmphasisBlack,sysColorBrandNeutralEmphasisBlack,sysColorBrandNeutralMutedLower"

Write "// MARK: Semantic token - Colors - On background - Status - Warning - Muted"
GenerateTokens \
--string "var colorOnBackgroundStatusWarningMuted🆔: ColorSemanticToken? = 0️⃣" \
--keys "Light,Inverse,Dark" \
--values "sysColorBrandNeutralEmphasisBlack,sysColorBrandNeutralEmphasisBlack,sysColorBrandNeutralMutedLower"

Write "// MARK: Semantic token - Colors - On background - Status - Warning - Emphasis"
GenerateTokens \
--string "var colorOnBackgroundStatusWarningEmphasis🆔: ColorSemanticToken? = 0️⃣" \
--keys "Light,Inverse,Dark" \
--values "sysColorBrandNeutralEmphasisBlack,sysColorBrandNeutralEmphasisBlack,sysColorBrandNeutralMutedLower"

Write "// MARK: Semantic token - Colors - On background - Status - Negative - Muted"
GenerateTokens \
--string "var colorOnBackgroundStatusNegativeMuted🆔: ColorSemanticToken? = 0️⃣" \
--keys "Light,Inverse,Dark" \
--values "sysColorBrandNeutralEmphasisBlack,sysColorBrandNeutralEmphasisBlack,sysColorBrandNeutralMutedLower"

Write "// MARK: Semantic token - Colors - On background - Status - Negative - Emphasis"
GenerateTokens \
--string "var colorOnBackgroundStatusNegativeEmphasis🆔: ColorSemanticToken? = 0️⃣" \
--keys "Light,Inverse,Dark" \
--values "sysColorBrandNeutralMutedWhite,sysColorBrandNeutralMutedWhite,sysColorBrandNeutralMutedLower"

Write "// MARK: Semantic token - Colors - On background - Status - Positive - Muted"
GenerateTokens \
--string "var colorOnBackgroundStatusPositiveMuted🆔: ColorSemanticToken? = 0️⃣" \
--keys "Light,Inverse,Dark" \
--values "sysColorBrandNeutralEmphasisBlack,sysColorBrandNeutralEmphasisBlack,sysColorBrandNeutralMutedLower"

Write "// MARK: Semantic token - Colors - On background - Status - Positive - Emphasis"
GenerateTokens \
--string "var colorOnBackgroundStatusPositiveEmphasis🆔: ColorSemanticToken? = 0️⃣" \
--keys "Light,Inverse,Dark" \
--values "sysColorBrandNeutralEmphasisBlack,sysColorBrandNeutralEmphasisBlack,sysColorBrandNeutralMutedLower"

Write "// MARK: Semantic token - Colors - On background - Status - Information - Muted"
GenerateTokens \
--string "var colorOnBackgroundStatusInformationMuted🆔: ColorSemanticToken? = 0️⃣" \
--keys "Light,Inverse,Dark" \
--values "sysColorBrandNeutralEmphasisBlack,sysColorBrandNeutralEmphasisBlack,sysColorBrandNeutralMutedLower"

Write "// MARK: Semantic token - Colors - On background - Status - Information - Emphasis"
GenerateTokens \
--string "var colorOnBackgroundStatusInformationEmphasis🆔: ColorSemanticToken? = 0️⃣" \
--keys "Light,Inverse,Dark" \
--values "sysColorBrandNeutralEmphasisBlack,sysColorBrandNeutralEmphasisBlack,sysColorBrandNeutralMutedLower"
fi

# Semantic Token - Colors - Decorative

if [ "$SEMANTIC_TOKEN_COLORS_DECORATIVE" = true ] || [ "$ALL_SEMANTIC_TOKENS" = true ] || [ "$ALL_TOKENS" = true ]; then
Write "// MARK: Semantic token - Colors - Decorative - Brand - Primary - Muted"
GenerateTokens \
--string "var colorDecorativeBrandPrimaryMuted🆔: ColorSemanticToken? = 0️⃣" \
--keys "Light,Inverse,Dark" \
--values "nil,nil,nil"

swiftClass="ColorOrangePrimitiveTokens"
Write "// MARK: Semantic token - Colors - Decorative - Brand - Primary - Default"
GenerateTokens \
--string "var colorDecorativeBrandPrimaryDefault🆔: ColorSemanticToken? = 0️⃣" \
--keys "Light,Inverse,Dark" \
--values "$swiftClass.colorBrandOrange500,$swiftClass.colorBrandOrange500,$swiftClass.colorBrandOrange500"

Write "// MARK: Semantic token - Colors - Decorative - Brand - Primary - Emphasis"
GenerateTokens \
--string "var colorDecorativeBrandPrimaryEmphasis🆔: ColorSemanticToken? = 0️⃣" \
--keys "Light,Inverse,Dark" \
--values "nil,nil,nil"

Write "// MARK: Semantic token - Colors - Decorative - Brand - Secondary - Muted"
GenerateTokens \
--string "var colorDecorativeBrandSecondaryMuted🆔: ColorSemanticToken? = 0️⃣" \
--keys "Light,Inverse,Dark" \
--values "nil,nil,nil"

swiftClass="ColorGlobalPrimitiveTokens"
Write "// MARK: Semantic token - Colors - Decorative - Brand - Secondary - Default"
GenerateTokens \
--string "var colorDecorativeBrandSecondaryDefault🆔: ColorSemanticToken? = 0️⃣" \
--keys "Light,Inverse,Dark" \
--values "$swiftClass.colorFunctionalBlack,$swiftClass.colorFunctionalWhite,$swiftClass.colorFunctionalLightGray160"

Write "// MARK: Semantic token - Colors - Decorative - Brand - Secondary - Emphasis"
GenerateTokens \
--string "var colorDecorativeBrandSecondaryEmphasis🆔: ColorSemanticToken? = 0️⃣" \
--keys "Light,Inverse,Dark" \
--values "nil,nil,nil"

Write "// MARK: Semantic token - Colors - Decorative - Brand - Tertiary - Muted"
GenerateTokens \
--string "var colorDecorativeBrandTertiaryMuted🆔: ColorSemanticToken? = 0️⃣" \
--keys "Light,Inverse,Dark" \
--values "nil,nil,nil"

swiftClass="ColorGlobalPrimitiveTokens"
Write "// MARK: Semantic token - Colors - Decorative - Brand - Tertiary - Default"
GenerateTokens \
--string "var colorDecorativeBrandTertiaryDefault🆔: ColorSemanticToken? = 0️⃣" \
--keys "Light,Inverse,Dark" \
--values "$swiftClass.colorFunctionalWhite,$swiftClass.colorFunctionalBlack,$swiftClass.colorFunctionalDarkGray880"

Write "// MARK: Semantic token - Colors - Decorative - Brand - Tertiary - Emphasis"
GenerateTokens \
--string "var colorDecorativeBrandTertiaryEmphasis🆔: ColorSemanticToken? = 0️⃣" \
--keys "Light,Inverse,Dark" \
--values "nil,nil,nil"

Write "// MARK: Semantic token - Colors - Decorative - Neutral - Muted"
GenerateTokens \
--string "var colorDecorativeNeutralMuted🆔: ColorSemanticToken? = 0️⃣" \
--keys "Light,Inverse,Dark" \
--values "$swiftClass.colorFunctionalLightGray160,$swiftClass.colorFunctionalDarkGray640,$swiftClass.colorFunctionalDarkGray720"

Write "// MARK: Semantic token - Colors - Decorative - Neutral - Default"
GenerateTokens \
--string "var colorDecorativeNeutralDefault🆔: ColorSemanticToken? = 0️⃣" \
--keys "Light,Inverse,Dark" \
--values "$swiftClass.colorFunctionalDarkGray400,$swiftClass.colorFunctionalLightGray160,$swiftClass.colorFunctionalLightGray160"

Write "// MARK: Semantic token - Colors - Decorative - Neutral - Emphasis"
GenerateTokens \
--string "var colorDecorativeNeutralEmphasis🆔: ColorSemanticToken? = 0️⃣" \
--keys "Light,Inverse,Dark" \
--values "$swiftClass.colorFunctionalDarkGray640,$swiftClass.colorFunctionalLightGray160,$swiftClass.colorFunctionalLightGray160"

swiftClass="ColorOrangePrimitiveTokens"
Write "// MARK: Semantic token - Colors - Decorative - Accent - 1 - Muted"
GenerateTokens \
--string "var colorDecorativeAccent1Muted🆔: ColorSemanticToken? = 0️⃣" \
--keys "Light,Inverse,Dark" \
--values "$swiftClass.colorDecorativeEmerald200,$swiftClass.colorDecorativeEmerald200,$swiftClass.colorDecorativeEmerald200"

Write "// MARK: Semantic token - Colors - Decorative - Accent - 1 - Default"
GenerateTokens \
--string "var colorDecorativeAccent1Default🆔: ColorSemanticToken? = 0️⃣" \
--keys "Light,Inverse,Dark" \
--values "$swiftClass.colorDecorativeEmerald500,$swiftClass.colorDecorativeEmerald500,$swiftClass.colorDecorativeEmerald500"

Write "// MARK: Semantic token - Colors - Decorative - Accent - 1 - Emphasis"
GenerateTokens \
--string "var colorDecorativeAccent1Emphasis🆔: ColorSemanticToken? = 0️⃣" \
--keys "Light,Inverse,Dark" \
--values "$swiftClass.colorDecorativeEmerald700,$swiftClass.colorDecorativeEmerald700,$swiftClass.colorDecorativeEmerald700"

Write "// MARK: Semantic token - Colors - Decorative - Accent - 2 - Muted"
GenerateTokens \
--string "var colorDecorativeAccent2Muted🆔: ColorSemanticToken? = 0️⃣" \
--keys "Light,Inverse,Dark" \
--values "$swiftClass.colorDecorativeSky200,$swiftClass.colorDecorativeSky200,$swiftClass.colorDecorativeSky200"

Write "// MARK: Semantic token - Colors - Decorative - Accent - 2 - Default"
GenerateTokens \
--string "var colorDecorativeAccent2Default🆔: ColorSemanticToken? = 0️⃣" \
--keys "Light,Inverse,Dark" \
--values "$swiftClass.colorDecorativeSky500,$swiftClass.colorDecorativeSky500,$swiftClass.colorDecorativeSky500"

Write "// MARK: Semantic token - Colors - Decorative - Accent - 2 - Emphasis"
GenerateTokens \
--string "var colorDecorativeAccent2Emphasis🆔: ColorSemanticToken? = 0️⃣" \
--keys "Light,Inverse,Dark" \
--values "$swiftClass.colorDecorativeSky700,$swiftClass.colorDecorativeSky700,$swiftClass.colorDecorativeSky700"

swiftClass="ColorGlobalPrimitiveTokens"
Write "// MARK: Semantic token - Colors - Decorative - Accent - 3 - Muted"
GenerateTokens \
--string "var colorDecorativeAccent3Muted🆔: ColorSemanticToken? = 0️⃣" \
--keys "Light,Inverse,Dark" \
--values "$swiftClass.colorFunctionalSun200,$swiftClass.colorFunctionalSun200,$swiftClass.colorFunctionalSun200"

Write "// MARK: Semantic token - Colors - Decorative - Accent - 3 - Default"
GenerateTokens \
--string "var colorDecorativeAccent3Default🆔: ColorSemanticToken? = 0️⃣" \
--keys "Light,Inverse,Dark" \
--values "$swiftClass.colorFunctionalSun500,$swiftClass.colorFunctionalSun500,$swiftClass.colorFunctionalSun500"

swiftClass="ColorOrangePrimitiveTokens"
Write "// MARK: Semantic token - Colors - Decorative - Accent - 3 - Emphasis"
GenerateTokens \
--string "var colorDecorativeAccent3Emphasis🆔: ColorSemanticToken? = 0️⃣" \
--keys "Light,Inverse,Dark" \
--values "$swiftClass.colorDecorativeAmber500,$swiftClass.colorDecorativeAmber500,$swiftClass.colorDecorativeAmber500"

Write "// MARK: Semantic token - Colors - Decorative - Accent - 4 - Muted"
GenerateTokens \
--string "var colorDecorativeAccent4Muted🆔: ColorSemanticToken? = 0️⃣" \
--keys "Light,Inverse,Dark" \
--values "$swiftClass.colorDecorativeAmethyst200,$swiftClass.colorDecorativeAmethyst200,$swiftClass.colorDecorativeAmethyst200"

Write "// MARK: Semantic token - Colors - Decorative - Accent - 4 - Default"
GenerateTokens \
--string "var colorDecorativeAccent4Default🆔: ColorSemanticToken? = 0️⃣" \
--keys "Light,Inverse,Dark" \
--values "$swiftClass.colorDecorativeAmethyst400,$swiftClass.colorDecorativeAmethyst400,$swiftClass.colorDecorativeAmethyst400"

Write "// MARK: Semantic token - Colors - Decorative - Accent - 4 - Emphasis"
GenerateTokens \
--string "var colorDecorativeAccent4Emphasis🆔: ColorSemanticToken? = 0️⃣" \
--keys "Light,Inverse,Dark" \
--values "$swiftClass.colorDecorativeAmethyst800,$swiftClass.colorDecorativeAmethyst800,$swiftClass.colorDecorativeAmethyst800"

Write "// MARK: Semantic token - Colors - Decorative - Accent - 5 - Muted"
GenerateTokens \
--string "var colorDecorativeAccent5Muted🆔: ColorSemanticToken? = 0️⃣" \
--keys "Light,Inverse,Dark" \
--values "$swiftClass.colorDecorativeShockingPink100,$swiftClass.colorDecorativeShockingPink100,$swiftClass.colorDecorativeShockingPink100"

Write "// MARK: Semantic token - Colors - Decorative - Accent - 5 - Default"
GenerateTokens \
--string "var colorDecorativeAccent5Default🆔: ColorSemanticToken? = 0️⃣" \
--keys "Light,Inverse,Dark" \
--values "$swiftClass.colorDecorativeShockingPink200,$swiftClass.colorDecorativeShockingPink200,$swiftClass.colorDecorativeShockingPink200"

Write "// MARK: Semantic token - Colors - Decorative - Accent - 5 - Emphasis"
GenerateTokens \
--string "var colorDecorativeAccent5Emphasis🆔: ColorSemanticToken? = 0️⃣" \
--keys "Light,Inverse,Dark" \
--values "$swiftClass.colorDecorativeShockingPink300,$swiftClass.colorDecorativeShockingPink300,$swiftClass.colorDecorativeShockingPink300"

Write "// MARK: Semantic token - Colors - Decorative - Skin - Tint"
GenerateTokens \
--string "var colorDecorativeSkinTint100🆔: ColorSemanticToken? = 0️⃣" \
--keys "Light,Inverse,Dark" \
--values "$swiftClass.colorDecorativeDeepPeach100,$swiftClass.colorDecorativeDeepPeach100,$swiftClass.colorDecorativeDeepPeach100"

Write "// MARK: Semantic token - Colors - Decorative - Skin - Tint"
GenerateTokens \
--string "var colorDecorativeSkinTint200🆔: ColorSemanticToken? = 0️⃣" \
--keys "Light,Inverse,Dark" \
--values "$swiftClass.colorDecorativeDeepPeach200,$swiftClass.colorDecorativeDeepPeach200,$swiftClass.colorDecorativeDeepPeach200"

Write "// MARK: Semantic token - Colors - Decorative - Skin - Tint"
GenerateTokens \
--string "var colorDecorativeSkinTint300🆔: ColorSemanticToken? = 0️⃣" \
--keys "Light,Inverse,Dark" \
--values "$swiftClass.colorDecorativeDeepPeach300,$swiftClass.colorDecorativeDeepPeach300,$swiftClass.colorDecorativeDeepPeach300"

Write "// MARK: Semantic token - Colors - Decorative - Skin - Tint"
GenerateTokens \
--string "var colorDecorativeSkinTint400🆔: ColorSemanticToken? = 0️⃣" \
--keys "Light,Inverse,Dark" \
--values "$swiftClass.colorDecorativeDeepPeach400,$swiftClass.colorDecorativeDeepPeach400,$swiftClass.colorDecorativeDeepPeach400"

Write "// MARK: Semantic token - Colors - Decorative - Skin - Tint"
GenerateTokens \
--string "var colorDecorativeSkinTint500🆔: ColorSemanticToken? = 0️⃣" \
--keys "Light,Inverse,Dark" \
--values "$swiftClass.colorDecorativeDeepPeach500,$swiftClass.colorDecorativeDeepPeach500,$swiftClass.colorDecorativeDeepPeach500"

Write "// MARK: Semantic token - Colors - Decorative - Skin - Tint"
GenerateTokens \
--string "var colorDecorativeSkinTint600🆔: ColorSemanticToken? = 0️⃣" \
--keys "Light,Inverse,Dark" \
--values "$swiftClass.colorDecorativeDeepPeach600,$swiftClass.colorDecorativeDeepPeach600,$swiftClass.colorDecorativeDeepPeach600"

Write "// MARK: Semantic token - Colors - Decorative - Skin - Tint"
GenerateTokens \
--string "var colorDecorativeSkinTint700🆔: ColorSemanticToken? = 0️⃣" \
--keys "Light,Inverse,Dark" \
--values "$swiftClass.colorDecorativeDeepPeach700,$swiftClass.colorDecorativeDeepPeach700,$swiftClass.colorDecorativeDeepPeach100"

Write "// MARK: Semantic token - Colors - Decorative - Skin - Tint"
GenerateTokens \
--string "var colorDecorativeSkinTint800🆔: ColorSemanticToken? = 0️⃣" \
--keys "Light,Inverse,Dark" \
--values "$swiftClass.colorDecorativeDeepPeach800,$swiftClass.colorDecorativeDeepPeach800,$swiftClass.colorDecorativeDeepPeach800"

Write "// MARK: Semantic token - Colors - Decorative - Skin - Tint"
GenerateTokens \
--string "var colorDecorativeSkinTint900🆔: ColorSemanticToken? = 0️⃣" \
--keys "Light,Inverse,Dark" \
--values "$swiftClass.colorDecorativeDeepPeach900,$swiftClass.colorDecorativeDeepPeach900,$swiftClass.colorDecorativeDeepPeach900"
fi

# Completed!
# ---------

# Copy file content into clipboard
pbcopy < "$GENERATED_SWIFT_CODE_FILE"

duration=$SECONDS
echo "💪 Generated $GENERATED_TOKENS_COUNT tokens in $((duration / 60)) minutes and $((duration % 60)) seconds elapsed"

echo "🎉 Result file is: '$GENERATED_SWIFT_CODE_FILE'"
echo "📋 Content copied in clipboard"

exit $EXIT_OK
