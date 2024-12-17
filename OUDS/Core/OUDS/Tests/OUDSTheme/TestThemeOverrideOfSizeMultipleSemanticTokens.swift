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
import XCTest

// swiftlint:disable required_deinit
// swiftlint:disable implicitly_unwrapped_optional
// swiftlint:disable type_name

/// The architecture of _OUDS iOS_ _Swift package_ library is based on _object oriented paradigm_ and overriding of classes.
/// In fact the `OUDSTheme` object is a class, which can be seen as an _asbtract class_, exposing through its extensions and protocols _sizing semantic tokens_.
/// These semantic tokens should be overriden by subclass like the `OrangeTheme` default theme.
///
/// **These tests checks if any _size multiple semantic tokens_ can be surcharged by a child theme**
/// **Also, it can help to find removed or renamed tokens by having tests no more compilable**
final class TestThemeOverrideOfSizeMultipleSemanticTokens: XCTestCase {

    private var abstractTheme: OUDSTheme!
    private var inheritedTheme: OUDSTheme!

    override func setUp() async throws {
        abstractTheme = OUDSTheme()
        inheritedTheme = MockTheme()
    }

    // MARK: - Semantic token - Sizing - Icon with typography

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithHeadingXlargeSizeSm() throws {
        XCTAssertNotEqual(inheritedTheme.sizes.sizeIconWithHeadingXlargeSizeSm, abstractTheme.sizes.sizeIconWithHeadingXlargeSizeSm)
        XCTAssertTrue(inheritedTheme.sizes.sizeIconWithHeadingXlargeSizeSm == MockThemeSizeSemanticTokensProvider.mockThemeSizeCompositeToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithHeadingXlargeSizeMd() throws {
        XCTAssertNotEqual(inheritedTheme.sizes.sizeIconWithHeadingXlargeSizeMd, abstractTheme.sizes.sizeIconWithHeadingXlargeSizeMd)
        XCTAssertTrue(inheritedTheme.sizes.sizeIconWithHeadingXlargeSizeMd == MockThemeSizeSemanticTokensProvider.mockThemeSizeCompositeToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithHeadingXlargeSizeLg() throws {
        XCTAssertNotEqual(inheritedTheme.sizes.sizeIconWithHeadingXlargeSizeLg, abstractTheme.sizes.sizeIconWithHeadingXlargeSizeLg)
        XCTAssertTrue(inheritedTheme.sizes.sizeIconWithHeadingXlargeSizeLg == MockThemeSizeSemanticTokensProvider.mockThemeSizeCompositeToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithHeadingLargeShort() throws {
        XCTAssertNotEqual(inheritedTheme.sizes.sizeIconWithHeadingLargeSizeSm, abstractTheme.sizes.sizeIconWithHeadingLargeSizeSm)
        XCTAssertTrue(inheritedTheme.sizes.sizeIconWithHeadingLargeSizeSm == MockThemeSizeSemanticTokensProvider.mockThemeSizeCompositeToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithHeadingLargeMedium() throws {
        XCTAssertNotEqual(inheritedTheme.sizes.sizeIconWithHeadingLargeSizeMd, abstractTheme.sizes.sizeIconWithHeadingLargeSizeMd)
        XCTAssertTrue(inheritedTheme.sizes.sizeIconWithHeadingLargeSizeMd == MockThemeSizeSemanticTokensProvider.mockThemeSizeCompositeToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithHeadingLargeTall() throws {
        XCTAssertNotEqual(inheritedTheme.sizes.sizeIconWithHeadingLargeSizeLg, abstractTheme.sizes.sizeIconWithHeadingLargeSizeLg)
        XCTAssertTrue(inheritedTheme.sizes.sizeIconWithHeadingLargeSizeLg == MockThemeSizeSemanticTokensProvider.mockThemeSizeCompositeToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithHeadingMediumShort() throws {
        XCTAssertNotEqual(inheritedTheme.sizes.sizeIconWithHeadingMediumSizeSm, abstractTheme.sizes.sizeIconWithHeadingMediumSizeSm)
        XCTAssertTrue(inheritedTheme.sizes.sizeIconWithHeadingMediumSizeSm == MockThemeSizeSemanticTokensProvider.mockThemeSizeCompositeToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizIconWithHeadingMediumMedium() throws {
        XCTAssertNotEqual(inheritedTheme.sizes.sizeIconWithHeadingMediumSizeMd, abstractTheme.sizes.sizeIconWithHeadingMediumSizeMd)
        XCTAssertTrue(inheritedTheme.sizes.sizeIconWithHeadingMediumSizeMd == MockThemeSizeSemanticTokensProvider.mockThemeSizeCompositeToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithHeadingMediumTall() throws {
        XCTAssertNotEqual(inheritedTheme.sizes.sizeIconWithHeadingMediumSizeLg, abstractTheme.sizes.sizeIconWithHeadingMediumSizeLg)
        XCTAssertTrue(inheritedTheme.sizes.sizeIconWithHeadingMediumSizeLg == MockThemeSizeSemanticTokensProvider.mockThemeSizeCompositeToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithHeadingSmallShort() throws {
        XCTAssertNotEqual(inheritedTheme.sizes.sizeIconWithHeadingSmallSizeSm, abstractTheme.sizes.sizeIconWithHeadingSmallSizeSm)
        XCTAssertTrue(inheritedTheme.sizes.sizeIconWithHeadingSmallSizeSm == MockThemeSizeSemanticTokensProvider.mockThemeSizeCompositeToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithHeadingSmallMedium() throws {
        XCTAssertNotEqual(inheritedTheme.sizes.sizeIconWithHeadingSmallSizeMd, abstractTheme.sizes.sizeIconWithHeadingSmallSizeMd)
        XCTAssertTrue(inheritedTheme.sizes.sizeIconWithHeadingSmallSizeMd == MockThemeSizeSemanticTokensProvider.mockThemeSizeCompositeToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithHeadingSmallTall() throws {
        XCTAssertNotEqual(inheritedTheme.sizes.sizeIconWithHeadingSmallSizeLg, abstractTheme.sizes.sizeIconWithHeadingSmallSizeLg)
        XCTAssertTrue(inheritedTheme.sizes.sizeIconWithHeadingSmallSizeLg == MockThemeSizeSemanticTokensProvider.mockThemeSizeCompositeToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithBodyLargeShort() throws {
        XCTAssertNotEqual(inheritedTheme.sizes.sizeIconWithBodyLargeSizeSm, abstractTheme.sizes.sizeIconWithBodyLargeSizeSm)
        XCTAssertTrue(inheritedTheme.sizes.sizeIconWithBodyLargeSizeSm.isEqual(MockThemeSizeSemanticTokensProvider.mockThemeSizeCompositeToken))
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithBodyLargeMedium() throws {
        XCTAssertNotEqual(inheritedTheme.sizes.sizeIconWithBodyLargeSizeMd, abstractTheme.sizes.sizeIconWithBodyLargeSizeMd)
        XCTAssertTrue(inheritedTheme.sizes.sizeIconWithBodyLargeSizeMd.isEqual(MockThemeSizeSemanticTokensProvider.mockThemeSizeCompositeToken))
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithBodyLargeTall() throws {
        XCTAssertNotEqual(inheritedTheme.sizes.sizeIconWithBodyLargeSizeLg, abstractTheme.sizes.sizeIconWithBodyLargeSizeLg)
        XCTAssertTrue(inheritedTheme.sizes.sizeIconWithBodyLargeSizeLg.isEqual(MockThemeSizeSemanticTokensProvider.mockThemeSizeCompositeToken))
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithBodyMediumShort() throws {
        XCTAssertNotEqual(inheritedTheme.sizes.sizeIconWithBodyMediumSizeSm, abstractTheme.sizes.sizeIconWithBodyMediumSizeSm)
        XCTAssertTrue(inheritedTheme.sizes.sizeIconWithBodyMediumSizeSm.isEqual(MockThemeSizeSemanticTokensProvider.mockThemeSizeCompositeToken))
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithBodyMediumMedium() throws {
        XCTAssertNotEqual(inheritedTheme.sizes.sizeIconWithBodyMediumSizeMd, abstractTheme.sizes.sizeIconWithBodyMediumSizeMd)
        XCTAssertTrue(inheritedTheme.sizes.sizeIconWithBodyMediumSizeMd.isEqual(MockThemeSizeSemanticTokensProvider.mockThemeSizeCompositeToken))
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithBodyMediumTall() throws {
        XCTAssertNotEqual(inheritedTheme.sizes.sizeIconWithBodyMediumSizeLg, abstractTheme.sizes.sizeIconWithBodyMediumSizeLg)
        XCTAssertTrue(inheritedTheme.sizes.sizeIconWithBodyMediumSizeLg.isEqual(MockThemeSizeSemanticTokensProvider.mockThemeSizeCompositeToken))
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithBodySmallShort() throws {
        XCTAssertNotEqual(inheritedTheme.sizes.sizeIconWithBodySmallSizeSm, abstractTheme.sizes.sizeIconWithBodySmallSizeSm)
        XCTAssertTrue(inheritedTheme.sizes.sizeIconWithBodySmallSizeSm.isEqual(MockThemeSizeSemanticTokensProvider.mockThemeSizeCompositeToken))
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithBodySmallMedium() throws {
        XCTAssertNotEqual(inheritedTheme.sizes.sizeIconWithBodySmallSizeMd, abstractTheme.sizes.sizeIconWithBodySmallSizeMd)
        XCTAssertTrue(inheritedTheme.sizes.sizeIconWithBodySmallSizeMd.isEqual(MockThemeSizeSemanticTokensProvider.mockThemeSizeCompositeToken))
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithBodySmallTall() throws {
        XCTAssertNotEqual(inheritedTheme.sizes.sizeIconWithBodySmallSizeLg, abstractTheme.sizes.sizeIconWithBodySmallSizeLg)
        XCTAssertTrue(inheritedTheme.sizes.sizeIconWithBodySmallSizeLg.isEqual(MockThemeSizeSemanticTokensProvider.mockThemeSizeCompositeToken))
    }

    // MARK: - Semantic token - Sizing - Max width

    func testInheritedThemeCanOverrideSemanticTokenSizeMaxWidthTypeDisplayLarge() throws {
        XCTAssertNotEqual(inheritedTheme.sizes.sizeMaxWidthTypeDisplayLarge, abstractTheme.sizes.sizeMaxWidthTypeDisplayLarge)
        XCTAssertTrue(inheritedTheme.sizes.sizeMaxWidthTypeDisplayLarge.isEqual(MockThemeSizeSemanticTokensProvider.mockThemeSizeCompositeToken))
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeMaxWidthTypeDisplayMedium() throws {
        XCTAssertNotEqual(inheritedTheme.sizes.sizeMaxWidthTypeDisplayMedium, abstractTheme.sizes.sizeMaxWidthTypeDisplayMedium)
        XCTAssertTrue(inheritedTheme.sizes.sizeMaxWidthTypeDisplayMedium.isEqual(MockThemeSizeSemanticTokensProvider.mockThemeSizeCompositeToken))
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeMaxWidthTypeDisplaySmall() throws {
        XCTAssertNotEqual(inheritedTheme.sizes.sizeMaxWidthTypeDisplaySmall, abstractTheme.sizes.sizeMaxWidthTypeDisplaySmall)
        XCTAssertTrue(inheritedTheme.sizes.sizeMaxWidthTypeDisplaySmall.isEqual(MockThemeSizeSemanticTokensProvider.mockThemeSizeCompositeToken))
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeMaxWidthTypeHeadingXlargeSize() throws {
        XCTAssertNotEqual(inheritedTheme.sizes.sizeMaxWidthTypeHeadingXlarge, abstractTheme.sizes.sizeMaxWidthTypeHeadingXlarge)
        XCTAssertTrue(inheritedTheme.sizes.sizeMaxWidthTypeHeadingXlarge.isEqual(MockThemeSizeSemanticTokensProvider.mockThemeSizeCompositeToken))
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeMaxWidthTypeHeadingLarge() throws {
        XCTAssertNotEqual(inheritedTheme.sizes.sizeMaxWidthTypeHeadingLarge, abstractTheme.sizes.sizeMaxWidthTypeHeadingLarge)
        XCTAssertTrue(inheritedTheme.sizes.sizeMaxWidthTypeHeadingLarge.isEqual(MockThemeSizeSemanticTokensProvider.mockThemeSizeCompositeToken))
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeMaxWidthTypeHeadingMedium() throws {
        XCTAssertNotEqual(inheritedTheme.sizes.sizeMaxWidthTypeHeadingMedium, abstractTheme.sizes.sizeMaxWidthTypeHeadingMedium)
        XCTAssertTrue(inheritedTheme.sizes.sizeMaxWidthTypeHeadingMedium.isEqual(MockThemeSizeSemanticTokensProvider.mockThemeSizeCompositeToken))
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeMaxWidthTypeHeadingSmall() throws {
        XCTAssertNotEqual(inheritedTheme.sizes.sizeMaxWidthTypeHeadingSmall, abstractTheme.sizes.sizeMaxWidthTypeHeadingSmall)
        XCTAssertTrue(inheritedTheme.sizes.sizeMaxWidthTypeHeadingSmall.isEqual(MockThemeSizeSemanticTokensProvider.mockThemeSizeCompositeToken))
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeMaxWidthTypeBodyLarge() throws {
        XCTAssertNotEqual(inheritedTheme.sizes.sizeMaxWidthTypeBodyLarge, abstractTheme.sizes.sizeMaxWidthTypeBodyLarge)
        XCTAssertTrue(inheritedTheme.sizes.sizeMaxWidthTypeBodyLarge.isEqual(MockThemeSizeSemanticTokensProvider.mockThemeSizeCompositeToken))
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeMaxWidthTypeBodyMedium() throws {
        XCTAssertNotEqual(inheritedTheme.sizes.sizeMaxWidthTypeBodyMedium, abstractTheme.sizes.sizeMaxWidthTypeBodyMedium)
        XCTAssertTrue(inheritedTheme.sizes.sizeMaxWidthTypeBodyMedium.isEqual(MockThemeSizeSemanticTokensProvider.mockThemeSizeCompositeToken))
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeMaxWidthTypeBodySmall() throws {
        XCTAssertNotEqual(inheritedTheme.sizes.sizeMaxWidthTypeBodySmall, abstractTheme.sizes.sizeMaxWidthTypeBodySmall)
        XCTAssertTrue(inheritedTheme.sizes.sizeMaxWidthTypeBodySmall.isEqual(MockThemeSizeSemanticTokensProvider.mockThemeSizeCompositeToken))
    }
}

// swiftlint:enable required_deinit
// swiftlint:enable implicitly_unwrapped_optional
// swiftlint:enable type_name
