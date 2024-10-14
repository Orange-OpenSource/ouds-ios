//
// Software Name: OUDS iOS
// SPDX-FileCopyrightText: Copyright (c) Orange SA
// SPDX-License-Identifier: MIT
//
// This software is distributed under the MIT license,
// the text of which is available at https://opensource.org/license/MIT/
// or see the "LICENSE" file for more details.
//
// Authors: See CONTRIBUTORS.txt
// Software description: A SwiftUI components library with code examples for Orange Unified Design System
//

// ଘ( ･ω･)_/ﾟ･:*:･｡☆
// [File to generate with the tokenator]

// swiftlint:disable missing_docs

/// Extracted in a separated file to help the *Figma* JSON to Swift parser to generate files to include easily.
extension GridRawTokens {

    /// Double type because used below for computations with Double values, output of the parser
    public static let dimensionBase: Double = 4

    // MARK: Primitive token - Grid - Min width

    public static let gridMinWidthExtraCompact: GridRawToken = 320
    public static let gridMinWidthCompact: GridRawToken = 390
    public static let gridMinWidthRegular: GridRawToken = 736

    // MARK: Primitive token - Grid - Max width

    public static let gridMaxWidthExtraCompact: GridRawToken = 389
    public static let gridMaxWidthCompact: GridRawToken = 852
    public static let gridMaxWidthRegular: GridRawToken = 1_336

    // MARK: Primitive token - Grid - Margin

    public static let gridMargin100: GridRawToken = dimensionBase * 4
    public static let gridMargin300: GridRawToken = dimensionBase * 6
    public static let gridMargin400: GridRawToken = dimensionBase * 7
    public static let gridMargin500: GridRawToken = dimensionBase * 8
    public static let gridMargin600: GridRawToken = dimensionBase * 9
    public static let gridMargin700: GridRawToken = dimensionBase * 10
    public static let gridMargin900: GridRawToken = dimensionBase * 12
    public static let gridMargin1000: GridRawToken = dimensionBase * 13
    public static let gridMargin1100: GridRawToken = dimensionBase * 14
    public static let gridMargin1700: GridRawToken = dimensionBase * 20
    public static let gridMargin2500: GridRawToken = dimensionBase * 28

    // MARK: Primitive token - Grid - Column gap

    public static let gridColumnGap10: GridRawToken = dimensionBase * 0.25
    public static let gridColumnGap100: GridRawToken = dimensionBase * 2
    public static let gridColumnGap200: GridRawToken = dimensionBase * 4
    public static let gridColumnGap300: GridRawToken = dimensionBase * 5
    public static let gridColumnGap400: GridRawToken = dimensionBase * 6
    public static let gridColumnGap600: GridRawToken = dimensionBase * 8
    public static let gridColumnGap700: GridRawToken = dimensionBase * 10

    // MARK: Primitive token - Grid - Column count

    public static let gridColumnCount100: GridRawToken = 1
    public static let gridColumnCount200: GridRawToken = 2
    public static let gridColumnCount400: GridRawToken = 4
    public static let gridColumnCount600: GridRawToken = 6
    public static let gridColumnCount800: GridRawToken = 8
    public static let gridColumnCount1000: GridRawToken = 10
    public static let gridColumnCount1200: GridRawToken = 12

    // MARK: Primitive token - Grid - Composite - iOS Extra Compact

    public static let gridExtraCompactMinWidth: GridRawToken = gridMinWidthExtraCompact
    public static let gridExtraCompactMaxWidth: GridRawToken = gridMaxWidthExtraCompact
    public static let gridExtraCompactMargin: GridRawToken = gridMargin100
    public static let gridExtraCompactColumnGap: GridRawToken = gridColumnGap100

    // MARK: Primitive token - Grid - Composite - iOS Compact

    public static let gridCompactMinWidth: GridRawToken = gridMinWidthCompact
    public static let gridCompactMaxWidth: GridRawToken = gridMaxWidthCompact
    public static let gridCompactMargin: GridRawToken = gridMargin300
    public static let gridCompactColumnGap: GridRawToken = gridColumnGap100

    // MARK: Primitive token - Grid - Composite - iOS Regular

    public static let gridRegularMinWidth: GridRawToken = gridMinWidthCompact
    public static let gridRegularMaxWidth: GridRawToken = gridMaxWidthCompact
    public static let gridRegularMargin: GridRawToken = gridMargin500
    public static let gridRegularColumnGap: GridRawToken = gridColumnGap300
}

// swiftlint:enable missing_docs
