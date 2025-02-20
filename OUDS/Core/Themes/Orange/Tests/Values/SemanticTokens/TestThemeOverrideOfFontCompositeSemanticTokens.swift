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

import OUDS
import OUDSThemesOrange
import Testing

// swiftlint:disable type_name

/// The architecture of _OUDS iOS_ _Swift package_ library is based on _object oriented paradigm_ and overriding of classes.
/// In fact the `OUDSTheme` object is a class, which can be seen as an _asbtract class_, exposing through its extensions and protocols _font semantic tokens_.
/// These semantic tokens should be overridable by subclasses like the ``OrangeThemeFontSemanticTokensProvider``.
///
/// **These tests checks if any _font composite semantic tokens_ can be surcharged by a child theme**
/// **Also, it can help to find removed or renamed tokens by having tests no more compilable**
struct TestThemeOverrideOfFontCompositeSemanticTokens {

    private var abstractTheme: OUDSTheme
    private var inheritedTheme: OUDSTheme

    init() {
        abstractTheme = OrangeTheme()
        inheritedTheme = MockTheme()
    }

    // MARK: - Semantic tokens - Typography - Composites - Display

    @Test func inheritedThemeCanOverrideSemanticTokenTypeDisplayLarge() throws {
        XCTAssertNotEqual(inheritedTheme.fonts.typeDisplayLarge, abstractTheme.fonts.typeDisplayLarge)
        XCTAssertTrue(inheritedTheme.fonts.typeDisplayLarge == MockThemeFontSemanticTokensProvider.mockThemeMultipleFontCompositeRawTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenTypeDisplayMedium() throws {
        XCTAssertNotEqual(inheritedTheme.fonts.typeDisplayMedium, abstractTheme.fonts.typeDisplayMedium)
        XCTAssertTrue(inheritedTheme.fonts.typeDisplayMedium == MockThemeFontSemanticTokensProvider.mockThemeMultipleFontCompositeRawTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenTypeDisplaySmall() throws {
        XCTAssertNotEqual(inheritedTheme.fonts.typeDisplaySmall, abstractTheme.fonts.typeDisplaySmall)
        XCTAssertTrue(inheritedTheme.fonts.typeDisplaySmall == MockThemeFontSemanticTokensProvider.mockThemeMultipleFontCompositeRawTokens)
    }

    // MARK: - Semantic tokens - Typography - Composites - Heading

    @Test func inheritedThemeCanOverrideSemanticTokenTypeHeadingXLarge() throws {
        XCTAssertNotEqual(inheritedTheme.fonts.typeHeadingXLarge, abstractTheme.fonts.typeHeadingXLarge)
        XCTAssertTrue(inheritedTheme.fonts.typeHeadingXLarge == MockThemeFontSemanticTokensProvider.mockThemeMultipleFontCompositeRawTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenTypeHeadingLarge() throws {
        XCTAssertNotEqual(inheritedTheme.fonts.typeHeadingLarge, abstractTheme.fonts.typeHeadingLarge)
        XCTAssertTrue(inheritedTheme.fonts.typeHeadingLarge == MockThemeFontSemanticTokensProvider.mockThemeMultipleFontCompositeRawTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenTypeHeadingMedium() throws {
        XCTAssertNotEqual(inheritedTheme.fonts.typeHeadingMedium, abstractTheme.fonts.typeHeadingMedium)
        XCTAssertTrue(inheritedTheme.fonts.typeHeadingMedium == MockThemeFontSemanticTokensProvider.mockThemeMultipleFontCompositeRawTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenTypeHeadingSmall() throws {
        XCTAssertNotEqual(inheritedTheme.fonts.typeHeadingSmall, abstractTheme.fonts.typeHeadingSmall)
        XCTAssertTrue(inheritedTheme.fonts.typeHeadingSmall == MockThemeFontSemanticTokensProvider.mockThemeMultipleFontCompositeRawTokens)
    }

    // MARK: - Semantic tokens - Typography - Composites - Body

    @Test func inheritedThemeCanOverrideSemanticTokenTypeDefaultLarge() throws {
        XCTAssertNotEqual(inheritedTheme.fonts.typeBodyDefaultLarge, abstractTheme.fonts.typeBodyDefaultLarge)
        XCTAssertTrue(inheritedTheme.fonts.typeBodyDefaultLarge == MockThemeFontSemanticTokensProvider.mockThemeMultipleFontCompositeRawTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenTypeDefaultMedium() throws {
        XCTAssertNotEqual(inheritedTheme.fonts.typeBodyDefaultMedium, abstractTheme.fonts.typeBodyDefaultMedium)
        XCTAssertTrue(inheritedTheme.fonts.typeBodyDefaultMedium == MockThemeFontSemanticTokensProvider.mockThemeMultipleFontCompositeRawTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenTypeDefaultSmall() throws {
        XCTAssertNotEqual(inheritedTheme.fonts.typeBodyDefaultSmall, abstractTheme.fonts.typeBodyDefaultSmall)
        XCTAssertTrue(inheritedTheme.fonts.typeBodyDefaultSmall == MockThemeFontSemanticTokensProvider.mockThemeMultipleFontCompositeRawTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenTypeStrongLarge() throws {
        XCTAssertNotEqual(inheritedTheme.fonts.typeBodyStrongLarge, abstractTheme.fonts.typeBodyStrongLarge)
        XCTAssertTrue(inheritedTheme.fonts.typeBodyStrongLarge == MockThemeFontSemanticTokensProvider.mockThemeMultipleFontCompositeRawTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenTypeStrongMedium() throws {
        XCTAssertNotEqual(inheritedTheme.fonts.typeBodyStrongMedium, abstractTheme.fonts.typeBodyStrongMedium)
        XCTAssertTrue(inheritedTheme.fonts.typeBodyStrongMedium == MockThemeFontSemanticTokensProvider.mockThemeMultipleFontCompositeRawTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenTypeStrongSmall() throws {
        XCTAssertNotEqual(inheritedTheme.fonts.typeBodyStrongSmall, abstractTheme.fonts.typeBodyStrongSmall)
        XCTAssertTrue(inheritedTheme.fonts.typeBodyStrongSmall == MockThemeFontSemanticTokensProvider.mockThemeMultipleFontCompositeRawTokens)
    }

    // MARK: - Semantic tokens - Typography - Composites - Label

    @Test func inheritedThemeCanOverrideSemanticTokenTypeLabelDefaultXLarge() throws {
        XCTAssertNotEqual(inheritedTheme.fonts.typeLabelDefaultXLarge, abstractTheme.fonts.typeLabelDefaultXLarge)
        XCTAssertTrue(inheritedTheme.fonts.typeLabelDefaultXLarge == MockThemeFontSemanticTokensProvider.mockThemeMultipleFontCompositeRawTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenTypeLabelDefaultLarge() throws {
        XCTAssertNotEqual(inheritedTheme.fonts.typeLabelDefaultLarge, abstractTheme.fonts.typeLabelDefaultLarge)
        XCTAssertTrue(inheritedTheme.fonts.typeLabelDefaultLarge == MockThemeFontSemanticTokensProvider.mockThemeMultipleFontCompositeRawTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenTypeLabelDefaultMedium() throws {
        XCTAssertNotEqual(inheritedTheme.fonts.typeLabelDefaultMedium, abstractTheme.fonts.typeLabelDefaultMedium)
        XCTAssertTrue(inheritedTheme.fonts.typeLabelDefaultMedium == MockThemeFontSemanticTokensProvider.mockThemeMultipleFontCompositeRawTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenTypeLabelDefaultSmall() throws {
        XCTAssertNotEqual(inheritedTheme.fonts.typeLabelDefaultSmall, abstractTheme.fonts.typeLabelDefaultSmall)
        XCTAssertTrue(inheritedTheme.fonts.typeLabelDefaultSmall == MockThemeFontSemanticTokensProvider.mockThemeMultipleFontCompositeRawTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenTypeLabelStrongXLarge() throws {
        XCTAssertNotEqual(inheritedTheme.fonts.typeLabelStrongXLarge, abstractTheme.fonts.typeLabelStrongXLarge)
        XCTAssertTrue(inheritedTheme.fonts.typeLabelStrongXLarge == MockThemeFontSemanticTokensProvider.mockThemeMultipleFontCompositeRawTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenTypeLabelStrongLarge() throws {
        XCTAssertNotEqual(inheritedTheme.fonts.typeLabelStrongLarge, abstractTheme.fonts.typeLabelStrongLarge)
        XCTAssertTrue(inheritedTheme.fonts.typeLabelStrongLarge == MockThemeFontSemanticTokensProvider.mockThemeMultipleFontCompositeRawTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenTypeLabelStrongMedium() throws {
        XCTAssertNotEqual(inheritedTheme.fonts.typeLabelStrongMedium, abstractTheme.fonts.typeLabelStrongMedium)
        XCTAssertTrue(inheritedTheme.fonts.typeLabelStrongMedium == MockThemeFontSemanticTokensProvider.mockThemeMultipleFontCompositeRawTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenTypeLabelStrongSmall() throws {
        XCTAssertNotEqual(inheritedTheme.fonts.typeLabelStrongSmall, abstractTheme.fonts.typeLabelStrongSmall)
        XCTAssertTrue(inheritedTheme.fonts.typeLabelStrongSmall == MockThemeFontSemanticTokensProvider.mockThemeMultipleFontCompositeRawTokens)
    }

    // MARK: - Semantic tokens - Typography - Composites - Code

    @Test func inheritedThemeCanOverrideSemanticTokenTypeCodeMedium() throws {
        XCTAssertNotEqual(inheritedTheme.fonts.typeCodeMedium, abstractTheme.fonts.typeCodeMedium)
        XCTAssertTrue(inheritedTheme.fonts.typeCodeMedium == MockThemeFontSemanticTokensProvider.mockThemeMultipleFontCompositeRawTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenTypeCodeSmall() throws {
        XCTAssertNotEqual(inheritedTheme.fonts.typeCodeSmall, abstractTheme.fonts.typeCodeSmall)
        XCTAssertTrue(inheritedTheme.fonts.typeCodeSmall == MockThemeFontSemanticTokensProvider.mockThemeMultipleFontCompositeRawTokens)
    }
}

// swiftlint:enable type_name
