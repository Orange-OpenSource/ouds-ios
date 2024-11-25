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
// swiftlint:disable type_body_length

/// The architecture of _OUDS iOS_ _Swift package_ library is based on _object oriented paradigm_ and overriding of classes.
/// In fact the `OUDSTheme` object is a class, which can be seen as an _asbtract class_, exposing through its extensions and protocols _sizing semantic tokens_.
/// These semantic tokens should be overriden by subclass like the `OrangeTheme` default theme.
/// 
/// **These tests checks if any _size semantic tokens_ can be surcharged by a child theme**
/// **Also, it can help to find removed or renamed tokens by having tests no more compilable**
final class TestThemeOverrideOfSizeSemanticTokens: XCTestCase {

    private var abstractTheme: OUDSTheme!
    private var inheritedTheme: OUDSTheme!

    override func setUp() async throws {
        abstractTheme = OUDSTheme()
        inheritedTheme = MockTheme()
    }

    // MARK: - Semantic token - Sizing - Icon with typography

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithHeadingXLargeShortMobile() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconWithHeadingXLargeShortMobile, abstractTheme.sizeIconWithHeadingXLargeShortMobile)
        XCTAssertTrue(inheritedTheme.sizeIconWithHeadingXLargeShortMobile == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithHeadingXLargeShortTablet() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconWithHeadingXLargeShortTablet, abstractTheme.sizeIconWithHeadingXLargeShortTablet)
        XCTAssertTrue(inheritedTheme.sizeIconWithHeadingXLargeShortTablet == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithHeadingXLargeMediumMobile() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconWithHeadingXLargeMediumMobile, abstractTheme.sizeIconWithHeadingXLargeMediumMobile)
        XCTAssertTrue(inheritedTheme.sizeIconWithHeadingXLargeMediumMobile == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithHeadingXLargeMediumTablet() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconWithHeadingXLargeMediumTablet, abstractTheme.sizeIconWithHeadingXLargeMediumTablet)
        XCTAssertTrue(inheritedTheme.sizeIconWithHeadingXLargeMediumTablet == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithHeadingXLargeTallMobile() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconWithHeadingXLargeTallMobile, abstractTheme.sizeIconWithHeadingXLargeTallMobile)
        XCTAssertTrue(inheritedTheme.sizeIconWithHeadingXLargeTallMobile == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithHeadingXLargeTallTablet() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconWithHeadingXLargeTallTablet, abstractTheme.sizeIconWithHeadingXLargeTallTablet)
        XCTAssertTrue(inheritedTheme.sizeIconWithHeadingXLargeTallTablet == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithHeadingLargeShortMobile() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconWithHeadingLargeShortMobile, abstractTheme.sizeIconWithHeadingLargeShortMobile)
        XCTAssertTrue(inheritedTheme.sizeIconWithHeadingLargeShortMobile == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithHeadingLargeShortTablet() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconWithHeadingLargeShortTablet, abstractTheme.sizeIconWithHeadingLargeShortTablet)
        XCTAssertTrue(inheritedTheme.sizeIconWithHeadingLargeShortTablet == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithHeadingLargeMediumMobile() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconWithHeadingLargeMediumMobile, abstractTheme.sizeIconWithHeadingLargeMediumMobile)
        XCTAssertTrue(inheritedTheme.sizeIconWithHeadingLargeMediumMobile == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithHeadingLargeMediumTablet() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconWithHeadingLargeMediumTablet, abstractTheme.sizeIconWithHeadingLargeMediumTablet)
        XCTAssertTrue(inheritedTheme.sizeIconWithHeadingLargeMediumTablet == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithHeadingLargeTallMobile() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconWithHeadingLargeTallMobile, abstractTheme.sizeIconWithHeadingLargeTallMobile)
        XCTAssertTrue(inheritedTheme.sizeIconWithHeadingLargeTallMobile == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithHeadingLargeTallTablet() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconWithHeadingLargeTallTablet, abstractTheme.sizeIconWithHeadingLargeTallTablet)
        XCTAssertTrue(inheritedTheme.sizeIconWithHeadingLargeTallTablet == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithHeadingMediumShortMobile() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconWithHeadingMediumShortMobile, abstractTheme.sizeIconWithHeadingMediumShortMobile)
        XCTAssertTrue(inheritedTheme.sizeIconWithHeadingMediumShortMobile == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithHeadingMediumShortTablet() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconWithHeadingMediumShortTablet, abstractTheme.sizeIconWithHeadingMediumShortTablet)
        XCTAssertTrue(inheritedTheme.sizeIconWithHeadingMediumShortTablet == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithHeadingMediumMediumMobile() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconWithHeadingMediumMediumMobile, abstractTheme.sizeIconWithHeadingMediumMediumMobile)
        XCTAssertTrue(inheritedTheme.sizeIconWithHeadingMediumMediumMobile == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithHeadingMediumMediumTablet() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconWithHeadingMediumMediumTablet, abstractTheme.sizeIconWithHeadingMediumMediumTablet)
        XCTAssertTrue(inheritedTheme.sizeIconWithHeadingMediumMediumTablet == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithHeadingMediumTallMobile() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconWithHeadingMediumTallMobile, abstractTheme.sizeIconWithHeadingMediumTallMobile)
        XCTAssertTrue(inheritedTheme.sizeIconWithHeadingMediumTallMobile == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithHeadingMediumTallTablet() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconWithHeadingMediumTallTablet, abstractTheme.sizeIconWithHeadingMediumTallTablet)
        XCTAssertTrue(inheritedTheme.sizeIconWithHeadingMediumTallTablet == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithHeadingSmallShortMobile() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconWithHeadingSmallShortMobile, abstractTheme.sizeIconWithHeadingSmallShortMobile)
        XCTAssertTrue(inheritedTheme.sizeIconWithHeadingSmallShortMobile == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithHeadingSmallShortTablet() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconWithHeadingSmallShortTablet, abstractTheme.sizeIconWithHeadingSmallShortTablet)
        XCTAssertTrue(inheritedTheme.sizeIconWithHeadingSmallShortTablet == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithHeadingSmallMediumMobile() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconWithHeadingSmallMediumMobile, abstractTheme.sizeIconWithHeadingSmallMediumMobile)
        XCTAssertTrue(inheritedTheme.sizeIconWithHeadingSmallMediumMobile == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithHeadingSmallMediumTablet() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconWithHeadingSmallMediumTablet, abstractTheme.sizeIconWithHeadingSmallMediumTablet)
        XCTAssertTrue(inheritedTheme.sizeIconWithHeadingSmallMediumTablet == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithHeadingSmallTallMobile() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconWithHeadingSmallTallMobile, abstractTheme.sizeIconWithHeadingSmallTallMobile)
        XCTAssertTrue(inheritedTheme.sizeIconWithHeadingSmallTallMobile == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithHeadingSmallTallTablet() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconWithHeadingSmallTallTablet, abstractTheme.sizeIconWithHeadingSmallTallTablet)
        XCTAssertTrue(inheritedTheme.sizeIconWithHeadingSmallTallTablet == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithBodyLargeShortMobile() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconWithBodyLargeShortMobile, abstractTheme.sizeIconWithBodyLargeShortMobile)
        XCTAssertTrue(inheritedTheme.sizeIconWithBodyLargeShortMobile == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithBodyLargeShortTablet() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconWithBodyLargeShortTablet, abstractTheme.sizeIconWithBodyLargeShortTablet)
        XCTAssertTrue(inheritedTheme.sizeIconWithBodyLargeShortTablet == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithBodyLargeMediumMobile() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconWithBodyLargeMediumMobile, abstractTheme.sizeIconWithBodyLargeMediumMobile)
        XCTAssertTrue(inheritedTheme.sizeIconWithBodyLargeMediumMobile == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithBodyLargeMediumTablet() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconWithBodyLargeMediumTablet, abstractTheme.sizeIconWithBodyLargeMediumTablet)
        XCTAssertTrue(inheritedTheme.sizeIconWithBodyLargeMediumTablet == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithBodyLargeTallMobile() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconWithBodyLargeTallMobile, abstractTheme.sizeIconWithBodyLargeTallMobile)
        XCTAssertTrue(inheritedTheme.sizeIconWithBodyLargeTallMobile == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithBodyLargeTallTablet() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconWithBodyLargeTallTablet, abstractTheme.sizeIconWithBodyLargeTallTablet)
        XCTAssertTrue(inheritedTheme.sizeIconWithBodyLargeTallTablet == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithBodyMediumShortMobile() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconWithBodyMediumShortMobile, abstractTheme.sizeIconWithBodyMediumShortMobile)
        XCTAssertTrue(inheritedTheme.sizeIconWithBodyMediumShortMobile == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithBodyMediumShortTablet() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconWithBodyMediumShortTablet, abstractTheme.sizeIconWithBodyMediumShortTablet)
        XCTAssertTrue(inheritedTheme.sizeIconWithBodyMediumShortTablet == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithBodyMediumMediumMobile() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconWithBodyMediumMediumMobile, abstractTheme.sizeIconWithBodyMediumMediumMobile)
        XCTAssertTrue(inheritedTheme.sizeIconWithBodyMediumMediumMobile == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithBodyMediumMediumTablet() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconWithBodyMediumMediumTablet, abstractTheme.sizeIconWithBodyMediumMediumTablet)
        XCTAssertTrue(inheritedTheme.sizeIconWithBodyMediumMediumTablet == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithBodyMediumTallMobile() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconWithBodyMediumTallMobile, abstractTheme.sizeIconWithBodyMediumTallMobile)
        XCTAssertTrue(inheritedTheme.sizeIconWithBodyMediumTallMobile == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithBodyMediumTallTablet() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconWithBodyMediumTallTablet, abstractTheme.sizeIconWithBodyMediumTallTablet)
        XCTAssertTrue(inheritedTheme.sizeIconWithBodyMediumTallTablet == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithBodySmallShortMobile() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconWithBodySmallShortMobile, abstractTheme.sizeIconWithBodySmallShortMobile)
        XCTAssertTrue(inheritedTheme.sizeIconWithBodySmallShortMobile == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithBodySmallShortTablet() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconWithBodySmallShortTablet, abstractTheme.sizeIconWithBodySmallShortTablet)
        XCTAssertTrue(inheritedTheme.sizeIconWithBodySmallShortTablet == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithBodySmallMediumMobile() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconWithBodySmallMediumMobile, abstractTheme.sizeIconWithBodySmallMediumMobile)
        XCTAssertTrue(inheritedTheme.sizeIconWithBodySmallMediumMobile == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithBodySmallMediumTablet() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconWithBodySmallMediumTablet, abstractTheme.sizeIconWithBodySmallMediumTablet)
        XCTAssertTrue(inheritedTheme.sizeIconWithBodySmallMediumTablet == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithBodySmallTallMobile() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconWithBodySmallTallMobile, abstractTheme.sizeIconWithBodySmallTallMobile)
        XCTAssertTrue(inheritedTheme.sizeIconWithBodySmallTallMobile == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithBodySmallTallTablet() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconWithBodySmallTallTablet, abstractTheme.sizeIconWithBodySmallTallTablet)
        XCTAssertTrue(inheritedTheme.sizeIconWithBodySmallTallTablet == MockTheme.mockThemeSizeRawToken)
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

    // MARK: - Semantic token - Sizing - Max width

    func testInheritedThemeCanOverrideSemanticTokenSizeMaxWidthTypographyDisplayLargeMobile() throws {
        XCTAssertNotEqual(inheritedTheme.sizeMaxWidthTypeDisplayLargeMobile, abstractTheme.sizeMaxWidthTypeDisplayLargeMobile)
        XCTAssertTrue(inheritedTheme.sizeMaxWidthTypeDisplayLargeMobile == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeMaxWidthTypographyDisplayLargeTablet() throws {
        XCTAssertNotEqual(inheritedTheme.sizeMaxWidthTypeDisplayLargeTablet, abstractTheme.sizeMaxWidthTypeDisplayLargeTablet)
        XCTAssertTrue(inheritedTheme.sizeMaxWidthTypeDisplayLargeTablet == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeMaxWidthTypographyDisplayMediumMobile() throws {
        XCTAssertNotEqual(inheritedTheme.sizeMaxWidthTypeDisplayMediumMobile, abstractTheme.sizeMaxWidthTypeDisplayMediumMobile)
        XCTAssertTrue(inheritedTheme.sizeMaxWidthTypeDisplayMediumMobile == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeMaxWidthTypographyDisplayMediumTablet() throws {
        XCTAssertNotEqual(inheritedTheme.sizeMaxWidthTypeDisplayMediumTablet, abstractTheme.sizeMaxWidthTypeDisplayMediumTablet)
        XCTAssertTrue(inheritedTheme.sizeMaxWidthTypeDisplayMediumTablet == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeMaxWidthTypographyDisplaySmallMobile() throws {
        XCTAssertNotEqual(inheritedTheme.sizeMaxWidthTypeDisplaySmallMobile, abstractTheme.sizeMaxWidthTypeDisplaySmallMobile)
        XCTAssertTrue(inheritedTheme.sizeMaxWidthTypeDisplaySmallMobile == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeMaxWidthTypographyDisplaySmallTablet() throws {
        XCTAssertNotEqual(inheritedTheme.sizeMaxWidthTypeDisplaySmallTablet, abstractTheme.sizeMaxWidthTypeDisplaySmallTablet)
        XCTAssertTrue(inheritedTheme.sizeMaxWidthTypeDisplaySmallTablet == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeMaxWidthTypographyHeadingXLargeMobile() throws {
        XCTAssertNotEqual(inheritedTheme.sizeMaxWidthTypeHeadingXLargeMobile, abstractTheme.sizeMaxWidthTypeHeadingXLargeMobile)
        XCTAssertTrue(inheritedTheme.sizeMaxWidthTypeHeadingXLargeMobile == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeMaxWidthTypographyHeadingXLargeTablet() throws {
        XCTAssertNotEqual(inheritedTheme.sizeMaxWidthTypeHeadingXLargeTablet, abstractTheme.sizeMaxWidthTypeHeadingXLargeTablet)
        XCTAssertTrue(inheritedTheme.sizeMaxWidthTypeHeadingXLargeTablet == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeMaxWidthTypographyHeadingLargeMobile() throws {
        XCTAssertNotEqual(inheritedTheme.sizeMaxWidthTypeHeadingLargeMobile, abstractTheme.sizeMaxWidthTypeHeadingLargeMobile)
        XCTAssertTrue(inheritedTheme.sizeMaxWidthTypeHeadingLargeMobile == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeMaxWidthTypographyHeadingLargeTablet() throws {
        XCTAssertNotEqual(inheritedTheme.sizeMaxWidthTypeHeadingLargeTablet, abstractTheme.sizeMaxWidthTypeHeadingLargeTablet)
        XCTAssertTrue(inheritedTheme.sizeMaxWidthTypeHeadingLargeTablet == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeMaxWidthTypographyHeadingMediumMobile() throws {
        XCTAssertNotEqual(inheritedTheme.sizeMaxWidthTypeHeadingMediumMobile, abstractTheme.sizeMaxWidthTypeHeadingMediumMobile)
        XCTAssertTrue(inheritedTheme.sizeMaxWidthTypeHeadingMediumMobile == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeMaxWidthTypographyHeadingMediumTablet() throws {
        XCTAssertNotEqual(inheritedTheme.sizeMaxWidthTypeHeadingMediumTablet, abstractTheme.sizeMaxWidthTypeHeadingMediumTablet)
        XCTAssertTrue(inheritedTheme.sizeMaxWidthTypeHeadingMediumTablet == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeMaxWidthTypographyHeadingSmallMobile() throws {
        XCTAssertNotEqual(inheritedTheme.sizeMaxWidthTypeHeadingSmallMobile, abstractTheme.sizeMaxWidthTypeHeadingSmallMobile)
        XCTAssertTrue(inheritedTheme.sizeMaxWidthTypeHeadingSmallMobile == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeMaxWidthTypographyHeadingSmallTablet() throws {
        XCTAssertNotEqual(inheritedTheme.sizeMaxWidthTypeHeadingSmallTablet, abstractTheme.sizeMaxWidthTypeHeadingSmallTablet)
        XCTAssertTrue(inheritedTheme.sizeMaxWidthTypeHeadingSmallTablet == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeMaxWidthTypographyBodyLargeMobile() throws {
        XCTAssertNotEqual(inheritedTheme.sizeMaxWidthTypeBodyLargeMobile, abstractTheme.sizeMaxWidthTypeBodyLargeMobile)
        XCTAssertTrue(inheritedTheme.sizeMaxWidthTypeBodyLargeMobile == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeMaxWidthTypographyBodyLargeTablet() throws {
        XCTAssertNotEqual(inheritedTheme.sizeMaxWidthTypeBodyLargeTablet, abstractTheme.sizeMaxWidthTypeBodyLargeTablet)
        XCTAssertTrue(inheritedTheme.sizeMaxWidthTypeBodyLargeTablet == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeMaxWidthTypographyBodyMediumMobile() throws {
        XCTAssertNotEqual(inheritedTheme.sizeMaxWidthTypeBodyMediumMobile, abstractTheme.sizeMaxWidthTypeBodyMediumMobile)
        XCTAssertTrue(inheritedTheme.sizeMaxWidthTypeBodyMediumMobile == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeMaxWidthTypographyBodyMediumTablet() throws {
        XCTAssertNotEqual(inheritedTheme.sizeMaxWidthTypeBodyMediumTablet, abstractTheme.sizeMaxWidthTypeBodyMediumTablet)
        XCTAssertTrue(inheritedTheme.sizeMaxWidthTypeBodyMediumTablet == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeMaxWidthTypographyBodySmallMobile() throws {
        XCTAssertNotEqual(inheritedTheme.sizeMaxWidthTypeBodySmallMobile, abstractTheme.sizeMaxWidthTypeBodySmallMobile)
        XCTAssertTrue(inheritedTheme.sizeMaxWidthTypeBodySmallMobile == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeMaxWidthTypographyBodySmallTablet() throws {
        XCTAssertNotEqual(inheritedTheme.sizeMaxWidthTypeBodySmallTablet, abstractTheme.sizeMaxWidthTypeBodySmallTablet)
        XCTAssertTrue(inheritedTheme.sizeMaxWidthTypeBodySmallTablet == MockTheme.mockThemeSizeRawToken)
    }
}

// swiftlint:enable required_deinit
// swiftlint:enable implicitly_unwrapped_optional
// swiftlint:enable type_body_length
