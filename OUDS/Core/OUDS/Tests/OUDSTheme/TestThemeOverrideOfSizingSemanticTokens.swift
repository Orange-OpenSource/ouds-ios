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

// WARNING: Maybe removed in the future or needs to be updated with token generation

// swiftlint:disable required_deinit
// swiftlint:disable implicitly_unwrapped_optional

/// The architecture of _OUDS iOS_ _Swift package_ library is based on _object oriented paradigm_ and overriding of classes.
/// In fact the `OUDSTheme` object is a class, which can be seen as an _asbtract class_, exposing through its extensions and protocols _sizing semantic tokens_.
/// These semantic tokens should be overriden by subclass like the `OrangeTheme` default theme.
/// **These tests checks if any _sizing semantic tokens_ can be surcharged by a child theme**
final class TestThemeOverrideOfSizingSemanticTokens: XCTestCase {

    private var abstractTheme: OUDSTheme!
    private var inheritedTheme: OUDSTheme!

    override func setUp() async throws {
        abstractTheme = OUDSTheme()
        inheritedTheme = MockTheme()
    }

    // MARK: - Semantic token - Sizing - Icon decorative

    func testInheritedThemeCanOverrideSemanticTokenSizeIconDecorativeShortest() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconDecorativeShortest, abstractTheme.sizeIconDecorativeShortest)
        XCTAssertTrue(inheritedTheme.sizeIconDecorativeShortest == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconDecorativeShorter() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconDecorativeShorter, abstractTheme.sizeIconDecorativeShorter)
        XCTAssertTrue(inheritedTheme.sizeIconDecorativeShorter == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconDecorativeShort() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconDecorativeShort, abstractTheme.sizeIconDecorativeShort)
        XCTAssertTrue(inheritedTheme.sizeIconDecorativeShort == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconDecorativeMedium() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconDecorativeMedium, abstractTheme.sizeIconDecorativeMedium)
        XCTAssertTrue(inheritedTheme.sizeIconDecorativeMedium == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconDecorativeTall() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconDecorativeTall, abstractTheme.sizeIconDecorativeTall)
        XCTAssertTrue(inheritedTheme.sizeIconDecorativeTall == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconDecorativeTaller() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconDecorativeTaller, abstractTheme.sizeIconDecorativeTaller)
        XCTAssertTrue(inheritedTheme.sizeIconDecorativeTaller == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconDecorativeTallest() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconDecorativeTallest, abstractTheme.sizeIconDecorativeTallest)
        XCTAssertTrue(inheritedTheme.sizeIconDecorativeTallest == MockTheme.mockThemeSizeRawToken)
    }

    // MARK: - Semantic token - Sizing - Icon with typography

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithHeadingSmallShort() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconWithHeadingSmallShort, abstractTheme.sizeIconWithHeadingSmallShort)
        XCTAssertTrue(inheritedTheme.sizeIconWithHeadingSmallShort == MockTheme.mockThemeSizeCompositeToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithHeadingSmallMedium() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconWithHeadingSmallMedium, abstractTheme.sizeIconWithHeadingSmallMedium)
        XCTAssertTrue(inheritedTheme.sizeIconWithHeadingSmallMedium == MockTheme.mockThemeSizeCompositeToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithHeadingSmallTall() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconWithHeadingSmallTall, abstractTheme.sizeIconWithHeadingSmallTall)
        XCTAssertTrue(inheritedTheme.sizeIconWithHeadingSmallTall == MockTheme.mockThemeSizeCompositeToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithHeadingMediumShort() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconWithHeadingMediumShort, abstractTheme.sizeIconWithHeadingMediumShort)
        XCTAssertTrue(inheritedTheme.sizeIconWithHeadingMediumShort == MockTheme.mockThemeSizeCompositeToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizIconWithHeadingMediumMedium() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconWithHeadingMediumMedium, abstractTheme.sizeIconWithHeadingMediumMedium)
        XCTAssertTrue(inheritedTheme.sizeIconWithHeadingMediumMedium == MockTheme.mockThemeSizeCompositeToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithHeadingMediumTall() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconWithHeadingMediumTall, abstractTheme.sizeIconWithHeadingMediumTall)
        XCTAssertTrue(inheritedTheme.sizeIconWithHeadingMediumTall == MockTheme.mockThemeSizeCompositeToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithHeadingLargeShort() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconWithHeadingLargeShort, abstractTheme.sizeIconWithHeadingLargeShort)
        XCTAssertTrue(inheritedTheme.sizeIconWithHeadingLargeShort == MockTheme.mockThemeSizeCompositeToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithHeadingLargeMedium() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconWithHeadingLargeMedium, abstractTheme.sizeIconWithHeadingLargeMedium)
        XCTAssertTrue(inheritedTheme.sizeIconWithHeadingLargeMedium == MockTheme.mockThemeSizeCompositeToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithHeadingLargeTall() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconWithHeadingLargeTall, abstractTheme.sizeIconWithHeadingLargeTall)
        XCTAssertTrue(inheritedTheme.sizeIconWithHeadingLargeTall == MockTheme.mockThemeSizeCompositeToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithHeadingXLargeShort() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconWithHeadingXLargeShort, abstractTheme.sizeIconWithHeadingXLargeShort)
        XCTAssertTrue(inheritedTheme.sizeIconWithHeadingXLargeShort == MockTheme.mockThemeSizeCompositeToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithHeadingXLargeMedium() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconWithHeadingXLargeMedium, abstractTheme.sizeIconWithHeadingXLargeMedium)
        XCTAssertTrue(inheritedTheme.sizeIconWithHeadingXLargeMedium == MockTheme.mockThemeSizeCompositeToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithHeadingXLargeTall() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconWithHeadingXLargeTall, abstractTheme.sizeIconWithHeadingXLargeTall)
        XCTAssertTrue(inheritedTheme.sizeIconWithHeadingXLargeTall == MockTheme.mockThemeSizeCompositeToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithBodySmallShort() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconWithBodySmallShort, abstractTheme.sizeIconWithBodySmallShort)
        XCTAssertTrue(inheritedTheme.sizeIconWithBodySmallShort.isEqual(MockTheme.mockThemeSizeCompositeToken))
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithBodySmallMedium() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconWithBodySmallMedium, abstractTheme.sizeIconWithBodySmallMedium)
        XCTAssertTrue(inheritedTheme.sizeIconWithBodySmallMedium.isEqual(MockTheme.mockThemeSizeCompositeToken))
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithBodySmallTall() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconWithBodySmallTall, abstractTheme.sizeIconWithBodySmallTall)
        XCTAssertTrue(inheritedTheme.sizeIconWithBodySmallTall.isEqual(MockTheme.mockThemeSizeCompositeToken))
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithBodyMediumShort() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconWithBodyMediumShort, abstractTheme.sizeIconWithBodyMediumShort)
        XCTAssertTrue(inheritedTheme.sizeIconWithBodyMediumShort.isEqual(MockTheme.mockThemeSizeCompositeToken))
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithBodyMediumMedium() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconWithBodyMediumMedium, abstractTheme.sizeIconWithBodyMediumMedium)
        XCTAssertTrue(inheritedTheme.sizeIconWithBodyMediumMedium.isEqual(MockTheme.mockThemeSizeCompositeToken))
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithBodyMediumTall() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconWithBodyMediumTall, abstractTheme.sizeIconWithBodyMediumTall)
        XCTAssertTrue(inheritedTheme.sizeIconWithBodyMediumTall.isEqual(MockTheme.mockThemeSizeCompositeToken))
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithBodyLargeShort() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconWithBodyLargeShort, abstractTheme.sizeIconWithBodyLargeShort)
        XCTAssertTrue(inheritedTheme.sizeIconWithBodyLargeShort.isEqual(MockTheme.mockThemeSizeCompositeToken))
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithBodyLargeMedium() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconWithBodyLargeMedium, abstractTheme.sizeIconWithBodyLargeMedium)
        XCTAssertTrue(inheritedTheme.sizeIconWithBodyLargeMedium.isEqual(MockTheme.mockThemeSizeCompositeToken))
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithBodyLargeTall() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconWithBodyLargeTall, abstractTheme.sizeIconWithBodyLargeTall)
        XCTAssertTrue(inheritedTheme.sizeIconWithBodyLargeTall.isEqual(MockTheme.mockThemeSizeCompositeToken))
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeWithLabelSmallShort() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconWithLabelSmallSizeShort, abstractTheme.sizeIconWithLabelSmallSizeShort)
        XCTAssertTrue(inheritedTheme.sizeIconWithLabelSmallSizeShort == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeWithLabelSmallMedium() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconWithLabelSmallSizeMedium, abstractTheme.sizeIconWithLabelSmallSizeMedium)
        XCTAssertTrue(inheritedTheme.sizeIconWithLabelSmallSizeMedium == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeWithLabelSmallTall() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconWithLabelSmallSizeTall, abstractTheme.sizeIconWithLabelSmallSizeTall)
        XCTAssertTrue(inheritedTheme.sizeIconWithLabelSmallSizeTall == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeWithLabelMediumShort() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconWithLabelMediumSizeShort, abstractTheme.sizeIconWithLabelMediumSizeShort)
        XCTAssertTrue(inheritedTheme.sizeIconWithLabelMediumSizeShort == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeWithLabelMediumMedium() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconWithLabelMediumSizeMedium, abstractTheme.sizeIconWithLabelMediumSizeMedium)
        XCTAssertTrue(inheritedTheme.sizeIconWithLabelMediumSizeMedium == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeWithLabelMediumTall() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconWithLabelMediumSizeTall, abstractTheme.sizeIconWithLabelMediumSizeTall)
        XCTAssertTrue(inheritedTheme.sizeIconWithLabelMediumSizeTall == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeWithLabelLargeShorter() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconWithLabelLargeSizeShorter, abstractTheme.sizeIconWithLabelLargeSizeShorter)
        XCTAssertTrue(inheritedTheme.sizeIconWithLabelLargeSizeShorter == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeWithLabelLargeShort() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconWithLabelLargeSizeShort, abstractTheme.sizeIconWithLabelLargeSizeShort)
        XCTAssertTrue(inheritedTheme.sizeIconWithLabelLargeSizeShort == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeWithLabelLargeMedium() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconWithLabelLargeSizeMedium, abstractTheme.sizeIconWithLabelLargeSizeMedium)
        XCTAssertTrue(inheritedTheme.sizeIconWithLabelLargeSizeMedium == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeWithLabelLargeTall() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconWithLabelLargeSizeTall, abstractTheme.sizeIconWithLabelLargeSizeTall)
        XCTAssertTrue(inheritedTheme.sizeIconWithLabelLargeSizeTall == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeWithLabelLargeTaller() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconWithLabelLargeSizeTaller, abstractTheme.sizeIconWithLabelLargeSizeTaller)
        XCTAssertTrue(inheritedTheme.sizeIconWithLabelLargeSizeTaller == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeWithLabelXLargeShort() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconWithLabelXLargeSizeShort, abstractTheme.sizeIconWithLabelXLargeSizeShort)
        XCTAssertTrue(inheritedTheme.sizeIconWithLabelXLargeSizeShort == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeWithLabelXLargeMedium() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconWithLabelXLargeSizeMedium, abstractTheme.sizeIconWithLabelXLargeSizeMedium)
        XCTAssertTrue(inheritedTheme.sizeIconWithLabelXLargeSizeMedium == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeWithLabelXLargeTall() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconWithLabelXLargeSizeTall, abstractTheme.sizeIconWithLabelXLargeSizeTall)
        XCTAssertTrue(inheritedTheme.sizeIconWithLabelXLargeSizeTall == MockTheme.mockThemeSizeRawToken)
    }

    // MARK: - Semantic token - Sizing - Max width

    func testInheritedThemeCanOverrideSemanticTokenSizeMaxWidthTypographyDisplaySmall() throws {
        XCTAssertNotEqual(inheritedTheme.sizeMaxWidthTypeDisplaySmall, abstractTheme.sizeMaxWidthTypeDisplaySmall)
        XCTAssertTrue(inheritedTheme.sizeMaxWidthTypeDisplaySmall.isEqual(MockTheme.mockThemeSizeCompositeToken))
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeMaxWidthTypographyDisplayMedium() throws {
        XCTAssertNotEqual(inheritedTheme.sizeMaxWidthTypeDisplayMedium, abstractTheme.sizeMaxWidthTypeDisplayMedium)
        XCTAssertTrue(inheritedTheme.sizeMaxWidthTypeDisplayMedium.isEqual(MockTheme.mockThemeSizeCompositeToken))
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeMaxWidthTypographyDisplayLarge() throws {
        XCTAssertNotEqual(inheritedTheme.sizeMaxWidthTypeDisplayLarge, abstractTheme.sizeMaxWidthTypeDisplayLarge)
        XCTAssertTrue(inheritedTheme.sizeMaxWidthTypeDisplayLarge.isEqual(MockTheme.mockThemeSizeCompositeToken))
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeMaxWidthTypographyHeadingSmall() throws {
        XCTAssertNotEqual(inheritedTheme.sizeMaxWidthTypeHeadingSmall, abstractTheme.sizeMaxWidthTypeHeadingSmall)
        XCTAssertTrue(inheritedTheme.sizeMaxWidthTypeHeadingSmall.isEqual(MockTheme.mockThemeSizeCompositeToken))
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeMaxWidthTypographyHeadingMedium() throws {
        XCTAssertNotEqual(inheritedTheme.sizeMaxWidthTypeHeadingMedium, abstractTheme.sizeMaxWidthTypeHeadingMedium)
        XCTAssertTrue(inheritedTheme.sizeMaxWidthTypeHeadingMedium.isEqual(MockTheme.mockThemeSizeCompositeToken))
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeMaxWidthTypographyHeadingLarge() throws {
        XCTAssertNotEqual(inheritedTheme.sizeMaxWidthTypeHeadingLarge, abstractTheme.sizeMaxWidthTypeHeadingLarge)
        XCTAssertTrue(inheritedTheme.sizeMaxWidthTypeHeadingLarge.isEqual(MockTheme.mockThemeSizeCompositeToken))
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeMaxWidthTypographyHeadingXLarge() throws {
        XCTAssertNotEqual(inheritedTheme.sizeMaxWidthTypeHeadingXLarge, abstractTheme.sizeMaxWidthTypeHeadingXLarge)
        XCTAssertTrue(inheritedTheme.sizeMaxWidthTypeHeadingXLarge.isEqual(MockTheme.mockThemeSizeCompositeToken))
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeMaxWidthTypographyBodySmall() throws {
        XCTAssertNotEqual(inheritedTheme.sizeMaxWidthTypeBodySmall, abstractTheme.sizeMaxWidthTypeBodySmall)
        XCTAssertTrue(inheritedTheme.sizeMaxWidthTypeBodySmall.isEqual(MockTheme.mockThemeSizeCompositeToken))
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeMaxWidthTypographyBodyMedium() throws {
        XCTAssertNotEqual(inheritedTheme.sizeMaxWidthTypeBodyMedium, abstractTheme.sizeMaxWidthTypeBodyMedium)
        XCTAssertTrue(inheritedTheme.sizeMaxWidthTypeBodyMedium.isEqual(MockTheme.mockThemeSizeCompositeToken))
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeMaxWidthTypographyBodyLarge() throws {
        XCTAssertNotEqual(inheritedTheme.sizeMaxWidthTypeBodyLarge, abstractTheme.sizeMaxWidthTypeBodyLarge)
        XCTAssertTrue(inheritedTheme.sizeMaxWidthTypeBodyLarge.isEqual(MockTheme.mockThemeSizeCompositeToken))
    }
}

// swiftlint:enable required_deinit
// swiftlint:enable implicitly_unwrapped_optional
