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
        XCTAssertNotEqual(inheritedTheme.sizeIconWithHeadingXlargeSizeSm, abstractTheme.sizeIconWithHeadingXlargeSizeSm)
        XCTAssertTrue(inheritedTheme.sizeIconWithHeadingXlargeSizeSm == MockTheme.mockThemeSizeCompositeToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithHeadingXlargeSizeMd() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconWithHeadingXlargeSizeMd, abstractTheme.sizeIconWithHeadingXlargeSizeMd)
        XCTAssertTrue(inheritedTheme.sizeIconWithHeadingXlargeSizeMd == MockTheme.mockThemeSizeCompositeToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithHeadingXlargeSizeLg() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconWithHeadingXlargeSizeLg, abstractTheme.sizeIconWithHeadingXlargeSizeLg)
        XCTAssertTrue(inheritedTheme.sizeIconWithHeadingXlargeSizeLg == MockTheme.mockThemeSizeCompositeToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithHeadingLargeShort() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconWithHeadingLargeSizeSm, abstractTheme.sizeIconWithHeadingLargeSizeSm)
        XCTAssertTrue(inheritedTheme.sizeIconWithHeadingLargeSizeSm == MockTheme.mockThemeSizeCompositeToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithHeadingLargeMedium() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconWithHeadingLargeSizeMd, abstractTheme.sizeIconWithHeadingLargeSizeMd)
        XCTAssertTrue(inheritedTheme.sizeIconWithHeadingLargeSizeMd == MockTheme.mockThemeSizeCompositeToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithHeadingLargeTall() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconWithHeadingLargeSizeLg, abstractTheme.sizeIconWithHeadingLargeSizeLg)
        XCTAssertTrue(inheritedTheme.sizeIconWithHeadingLargeSizeLg == MockTheme.mockThemeSizeCompositeToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithHeadingMediumShort() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconWithHeadingMediumSizeSm, abstractTheme.sizeIconWithHeadingMediumSizeSm)
        XCTAssertTrue(inheritedTheme.sizeIconWithHeadingMediumSizeSm == MockTheme.mockThemeSizeCompositeToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizIconWithHeadingMediumMedium() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconWithHeadingMediumSizeMd, abstractTheme.sizeIconWithHeadingMediumSizeMd)
        XCTAssertTrue(inheritedTheme.sizeIconWithHeadingMediumSizeMd == MockTheme.mockThemeSizeCompositeToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithHeadingMediumTall() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconWithHeadingMediumSizeLg, abstractTheme.sizeIconWithHeadingMediumSizeLg)
        XCTAssertTrue(inheritedTheme.sizeIconWithHeadingMediumSizeLg == MockTheme.mockThemeSizeCompositeToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithHeadingSmallShort() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconWithHeadingSmallSizeSm, abstractTheme.sizeIconWithHeadingSmallSizeSm)
        XCTAssertTrue(inheritedTheme.sizeIconWithHeadingSmallSizeSm == MockTheme.mockThemeSizeCompositeToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithHeadingSmallMedium() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconWithHeadingSmallSizeMd, abstractTheme.sizeIconWithHeadingSmallSizeMd)
        XCTAssertTrue(inheritedTheme.sizeIconWithHeadingSmallSizeMd == MockTheme.mockThemeSizeCompositeToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithHeadingSmallTall() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconWithHeadingSmallSizeLg, abstractTheme.sizeIconWithHeadingSmallSizeLg)
        XCTAssertTrue(inheritedTheme.sizeIconWithHeadingSmallSizeLg == MockTheme.mockThemeSizeCompositeToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithBodyLargeShort() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconWithBodyLargeSizeSm, abstractTheme.sizeIconWithBodyLargeSizeSm)
        XCTAssertTrue(inheritedTheme.sizeIconWithBodyLargeSizeSm.isEqual(MockTheme.mockThemeSizeCompositeToken))
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithBodyLargeMedium() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconWithBodyLargeSizeMd, abstractTheme.sizeIconWithBodyLargeSizeMd)
        XCTAssertTrue(inheritedTheme.sizeIconWithBodyLargeSizeMd.isEqual(MockTheme.mockThemeSizeCompositeToken))
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithBodyLargeTall() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconWithBodyLargeSizeLg, abstractTheme.sizeIconWithBodyLargeSizeLg)
        XCTAssertTrue(inheritedTheme.sizeIconWithBodyLargeSizeLg.isEqual(MockTheme.mockThemeSizeCompositeToken))
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithBodyMediumShort() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconWithBodyMediumSizeSm, abstractTheme.sizeIconWithBodyMediumSizeSm)
        XCTAssertTrue(inheritedTheme.sizeIconWithBodyMediumSizeSm.isEqual(MockTheme.mockThemeSizeCompositeToken))
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithBodyMediumMedium() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconWithBodyMediumSizeMd, abstractTheme.sizeIconWithBodyMediumSizeMd)
        XCTAssertTrue(inheritedTheme.sizeIconWithBodyMediumSizeMd.isEqual(MockTheme.mockThemeSizeCompositeToken))
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithBodyMediumTall() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconWithBodyMediumSizeLg, abstractTheme.sizeIconWithBodyMediumSizeLg)
        XCTAssertTrue(inheritedTheme.sizeIconWithBodyMediumSizeLg.isEqual(MockTheme.mockThemeSizeCompositeToken))
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithBodySmallShort() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconWithBodySmallSizeSm, abstractTheme.sizeIconWithBodySmallSizeSm)
        XCTAssertTrue(inheritedTheme.sizeIconWithBodySmallSizeSm.isEqual(MockTheme.mockThemeSizeCompositeToken))
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithBodySmallMedium() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconWithBodySmallSizeMd, abstractTheme.sizeIconWithBodySmallSizeMd)
        XCTAssertTrue(inheritedTheme.sizeIconWithBodySmallSizeMd.isEqual(MockTheme.mockThemeSizeCompositeToken))
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithBodySmallTall() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconWithBodySmallSizeLg, abstractTheme.sizeIconWithBodySmallSizeLg)
        XCTAssertTrue(inheritedTheme.sizeIconWithBodySmallSizeLg.isEqual(MockTheme.mockThemeSizeCompositeToken))
    }

    // MARK: - Semantic token - Sizing - Max width

    func testInheritedThemeCanOverrideSemanticTokenSizeMaxWidthTypeDisplayLarge() throws {
        XCTAssertNotEqual(inheritedTheme.sizeMaxWidthTypeDisplayLarge, abstractTheme.sizeMaxWidthTypeDisplayLarge)
        XCTAssertTrue(inheritedTheme.sizeMaxWidthTypeDisplayLarge.isEqual(MockTheme.mockThemeSizeCompositeToken))
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeMaxWidthTypeDisplayMedium() throws {
        XCTAssertNotEqual(inheritedTheme.sizeMaxWidthTypeDisplayMedium, abstractTheme.sizeMaxWidthTypeDisplayMedium)
        XCTAssertTrue(inheritedTheme.sizeMaxWidthTypeDisplayMedium.isEqual(MockTheme.mockThemeSizeCompositeToken))
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeMaxWidthTypeDisplaySmall() throws {
        XCTAssertNotEqual(inheritedTheme.sizeMaxWidthTypeDisplaySmall, abstractTheme.sizeMaxWidthTypeDisplaySmall)
        XCTAssertTrue(inheritedTheme.sizeMaxWidthTypeDisplaySmall.isEqual(MockTheme.mockThemeSizeCompositeToken))
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeMaxWidthTypeHeadingXlargeSize() throws {
        XCTAssertNotEqual(inheritedTheme.sizeMaxWidthTypeHeadingXlarge, abstractTheme.sizeMaxWidthTypeHeadingXlarge)
        XCTAssertTrue(inheritedTheme.sizeMaxWidthTypeHeadingXlarge.isEqual(MockTheme.mockThemeSizeCompositeToken))
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeMaxWidthTypeHeadingLarge() throws {
        XCTAssertNotEqual(inheritedTheme.sizeMaxWidthTypeHeadingLarge, abstractTheme.sizeMaxWidthTypeHeadingLarge)
        XCTAssertTrue(inheritedTheme.sizeMaxWidthTypeHeadingLarge.isEqual(MockTheme.mockThemeSizeCompositeToken))
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeMaxWidthTypeHeadingMedium() throws {
        XCTAssertNotEqual(inheritedTheme.sizeMaxWidthTypeHeadingMedium, abstractTheme.sizeMaxWidthTypeHeadingMedium)
        XCTAssertTrue(inheritedTheme.sizeMaxWidthTypeHeadingMedium.isEqual(MockTheme.mockThemeSizeCompositeToken))
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeMaxWidthTypeHeadingSmall() throws {
        XCTAssertNotEqual(inheritedTheme.sizeMaxWidthTypeHeadingSmall, abstractTheme.sizeMaxWidthTypeHeadingSmall)
        XCTAssertTrue(inheritedTheme.sizeMaxWidthTypeHeadingSmall.isEqual(MockTheme.mockThemeSizeCompositeToken))
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeMaxWidthTypeBodyLarge() throws {
        XCTAssertNotEqual(inheritedTheme.sizeMaxWidthTypeBodyLarge, abstractTheme.sizeMaxWidthTypeBodyLarge)
        XCTAssertTrue(inheritedTheme.sizeMaxWidthTypeBodyLarge.isEqual(MockTheme.mockThemeSizeCompositeToken))
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeMaxWidthTypeBodyMedium() throws {
        XCTAssertNotEqual(inheritedTheme.sizeMaxWidthTypeBodyMedium, abstractTheme.sizeMaxWidthTypeBodyMedium)
        XCTAssertTrue(inheritedTheme.sizeMaxWidthTypeBodyMedium.isEqual(MockTheme.mockThemeSizeCompositeToken))
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeMaxWidthTypeBodySmall() throws {
        XCTAssertNotEqual(inheritedTheme.sizeMaxWidthTypeBodySmall, abstractTheme.sizeMaxWidthTypeBodySmall)
        XCTAssertTrue(inheritedTheme.sizeMaxWidthTypeBodySmall.isEqual(MockTheme.mockThemeSizeCompositeToken))
    }
}

// swiftlint:enable required_deinit
// swiftlint:enable implicitly_unwrapped_optional
// swiftlint:enable type_name
