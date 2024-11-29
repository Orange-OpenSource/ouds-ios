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

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithHeadingXlargeSizeShortMobile() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconWithHeadingXlargeSizeShortMobile, abstractTheme.sizeIconWithHeadingXlargeSizeShortMobile)
        XCTAssertTrue(inheritedTheme.sizeIconWithHeadingXlargeSizeShortMobile == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithHeadingXlargeSizeShortTablet() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconWithHeadingXlargeSizeShortTablet, abstractTheme.sizeIconWithHeadingXlargeSizeShortTablet)
        XCTAssertTrue(inheritedTheme.sizeIconWithHeadingXlargeSizeShortTablet == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithHeadingXlargeSizeMediumMobile() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconWithHeadingXlargeSizeMediumMobile, abstractTheme.sizeIconWithHeadingXlargeSizeMediumMobile)
        XCTAssertTrue(inheritedTheme.sizeIconWithHeadingXlargeSizeMediumMobile == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithHeadingXlargeSizeMediumTablet() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconWithHeadingXlargeSizeMediumTablet, abstractTheme.sizeIconWithHeadingXlargeSizeMediumTablet)
        XCTAssertTrue(inheritedTheme.sizeIconWithHeadingXlargeSizeMediumTablet == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithHeadingXlargeSizeTallMobile() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconWithHeadingXlargeSizeTallMobile, abstractTheme.sizeIconWithHeadingXlargeSizeTallMobile)
        XCTAssertTrue(inheritedTheme.sizeIconWithHeadingXlargeSizeTallMobile == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithHeadingXlargeSizeTallTablet() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconWithHeadingXlargeSizeTallTablet, abstractTheme.sizeIconWithHeadingXlargeSizeTallTablet)
        XCTAssertTrue(inheritedTheme.sizeIconWithHeadingXlargeSizeTallTablet == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithHeadingLargeSizeShortMobile() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconWithHeadingLargeSizeShortMobile, abstractTheme.sizeIconWithHeadingLargeSizeShortMobile)
        XCTAssertTrue(inheritedTheme.sizeIconWithHeadingLargeSizeShortMobile == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithHeadingLargeShortTablet() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconWithHeadingLargeSizeShortTablet, abstractTheme.sizeIconWithHeadingLargeSizeShortTablet)
        XCTAssertTrue(inheritedTheme.sizeIconWithHeadingLargeSizeShortTablet == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithHeadingLargeMediumMobile() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconWithHeadingLargeSizeMediumMobile, abstractTheme.sizeIconWithHeadingLargeSizeMediumMobile)
        XCTAssertTrue(inheritedTheme.sizeIconWithHeadingLargeSizeMediumMobile == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithHeadingLargeMediumTablet() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconWithHeadingLargeSizeMediumTablet, abstractTheme.sizeIconWithHeadingLargeSizeMediumTablet)
        XCTAssertTrue(inheritedTheme.sizeIconWithHeadingLargeSizeMediumTablet == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithHeadingLargeTallMobile() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconWithHeadingLargeSizeTallMobile, abstractTheme.sizeIconWithHeadingLargeSizeTallMobile)
        XCTAssertTrue(inheritedTheme.sizeIconWithHeadingLargeSizeTallMobile == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithHeadingLargeTallTablet() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconWithHeadingLargeSizeTallTablet, abstractTheme.sizeIconWithHeadingLargeSizeTallTablet)
        XCTAssertTrue(inheritedTheme.sizeIconWithHeadingLargeSizeTallTablet == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithHeadingMediumShortMobile() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconWithHeadingMediumSizeShortMobile, abstractTheme.sizeIconWithHeadingMediumSizeShortMobile)
        XCTAssertTrue(inheritedTheme.sizeIconWithHeadingMediumSizeShortMobile == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithHeadingMediumShortTablet() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconWithHeadingMediumSizeShortTablet, abstractTheme.sizeIconWithHeadingMediumSizeShortTablet)
        XCTAssertTrue(inheritedTheme.sizeIconWithHeadingMediumSizeShortTablet == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithHeadingMediumMediumMobile() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconWithHeadingMediumSizeMediumMobile, abstractTheme.sizeIconWithHeadingMediumSizeMediumMobile)
        XCTAssertTrue(inheritedTheme.sizeIconWithHeadingMediumSizeMediumMobile == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithHeadingMediumMediumTablet() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconWithHeadingMediumSizeMediumTablet, abstractTheme.sizeIconWithHeadingMediumSizeMediumTablet)
        XCTAssertTrue(inheritedTheme.sizeIconWithHeadingMediumSizeMediumTablet == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithHeadingMediumSizeTallMobile() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconWithHeadingMediumSizeTallMobile, abstractTheme.sizeIconWithHeadingMediumSizeTallMobile)
        XCTAssertTrue(inheritedTheme.sizeIconWithHeadingMediumSizeTallMobile == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithHeadingMediumSizeTallTablet() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconWithHeadingMediumSizeTallTablet, abstractTheme.sizeIconWithHeadingMediumSizeTallTablet)
        XCTAssertTrue(inheritedTheme.sizeIconWithHeadingMediumSizeTallTablet == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithHeadingSmallSizeShortMobile() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconWithHeadingSmallSizeShortMobile, abstractTheme.sizeIconWithHeadingSmallSizeShortMobile)
        XCTAssertTrue(inheritedTheme.sizeIconWithHeadingSmallSizeShortMobile == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithHeadingSmallShortTablet() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconWithHeadingSmallSizeShortTablet, abstractTheme.sizeIconWithHeadingSmallSizeShortTablet)
        XCTAssertTrue(inheritedTheme.sizeIconWithHeadingSmallSizeShortTablet == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithHeadingSmallSizeMediumMobile() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconWithHeadingSmallSizeMediumMobile, abstractTheme.sizeIconWithHeadingSmallSizeMediumMobile)
        XCTAssertTrue(inheritedTheme.sizeIconWithHeadingSmallSizeMediumMobile == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithHeadingSmallMediumTablet() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconWithHeadingSmallSizeMediumTablet, abstractTheme.sizeIconWithHeadingSmallSizeMediumTablet)
        XCTAssertTrue(inheritedTheme.sizeIconWithHeadingSmallSizeMediumTablet == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithHeadingSmallSizeTallMobile() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconWithHeadingSmallSizeTallMobile, abstractTheme.sizeIconWithHeadingSmallSizeTallMobile)
        XCTAssertTrue(inheritedTheme.sizeIconWithHeadingSmallSizeTallMobile == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithHeadingSmallTallTablet() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconWithHeadingSmallSizeTallTablet, abstractTheme.sizeIconWithHeadingSmallSizeTallTablet)
        XCTAssertTrue(inheritedTheme.sizeIconWithHeadingSmallSizeTallTablet == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithBodyLargeSizeShortMobile() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconWithBodyLargeSizeShortMobile, abstractTheme.sizeIconWithBodyLargeSizeShortMobile)
        XCTAssertTrue(inheritedTheme.sizeIconWithBodyLargeSizeShortMobile == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithBodyLargeShortTablet() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconWithBodyLargeSizeShortTablet, abstractTheme.sizeIconWithBodyLargeSizeShortTablet)
        XCTAssertTrue(inheritedTheme.sizeIconWithBodyLargeSizeShortTablet == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithBodyLargeMediumMobile() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconWithBodyLargeSizeMediumMobile, abstractTheme.sizeIconWithBodyLargeSizeMediumMobile)
        XCTAssertTrue(inheritedTheme.sizeIconWithBodyLargeSizeMediumMobile == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithBodyLargeMediumTablet() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconWithBodyLargeSizeMediumTablet, abstractTheme.sizeIconWithBodyLargeSizeMediumTablet)
        XCTAssertTrue(inheritedTheme.sizeIconWithBodyLargeSizeMediumTablet == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithBodyLargeTallMobile() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconWithBodyLargeSizeTallMobile, abstractTheme.sizeIconWithBodyLargeSizeTallMobile)
        XCTAssertTrue(inheritedTheme.sizeIconWithBodyLargeSizeTallMobile == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithBodyLargeTallTablet() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconWithBodyLargeSizeTallTablet, abstractTheme.sizeIconWithBodyLargeSizeTallTablet)
        XCTAssertTrue(inheritedTheme.sizeIconWithBodyLargeSizeTallTablet == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithBodyMediumShortMobile() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconWithBodyMediumSizeShortMobile, abstractTheme.sizeIconWithBodyMediumSizeShortMobile)
        XCTAssertTrue(inheritedTheme.sizeIconWithBodyMediumSizeShortMobile == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithBodyMediumShortTablet() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconWithBodyMediumSizeShortTablet, abstractTheme.sizeIconWithBodyMediumSizeShortTablet)
        XCTAssertTrue(inheritedTheme.sizeIconWithBodyMediumSizeShortTablet == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithBodyMediumMediumMobile() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconWithBodyMediumSizeMediumMobile, abstractTheme.sizeIconWithBodyMediumSizeMediumMobile)
        XCTAssertTrue(inheritedTheme.sizeIconWithBodyMediumSizeMediumMobile == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithBodyMediumMediumTablet() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconWithBodyMediumSizeMediumTablet, abstractTheme.sizeIconWithBodyMediumSizeMediumTablet)
        XCTAssertTrue(inheritedTheme.sizeIconWithBodyMediumSizeMediumTablet == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithBodyMediumSizeTallMobile() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconWithBodyMediumSizeTallMobile, abstractTheme.sizeIconWithBodyMediumSizeTallMobile)
        XCTAssertTrue(inheritedTheme.sizeIconWithBodyMediumSizeTallMobile == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithBodyMediumSizeTallTablet() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconWithBodyMediumSizeTallTablet, abstractTheme.sizeIconWithBodyMediumSizeTallTablet)
        XCTAssertTrue(inheritedTheme.sizeIconWithBodyMediumSizeTallTablet == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithBodySmallSizeShortMobile() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconWithBodySmallSizeShortMobile, abstractTheme.sizeIconWithBodySmallSizeShortMobile)
        XCTAssertTrue(inheritedTheme.sizeIconWithBodySmallSizeShortMobile == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithBodySmallShortTablet() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconWithBodySmallSizeShortTablet, abstractTheme.sizeIconWithBodySmallSizeShortTablet)
        XCTAssertTrue(inheritedTheme.sizeIconWithBodySmallSizeShortTablet == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithBodySmallSizeMediumMobile() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconWithBodySmallSizeMediumMobile, abstractTheme.sizeIconWithBodySmallSizeMediumMobile)
        XCTAssertTrue(inheritedTheme.sizeIconWithBodySmallSizeMediumMobile == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithBodySmallMediumTablet() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconWithBodySmallSizeMediumTablet, abstractTheme.sizeIconWithBodySmallSizeMediumTablet)
        XCTAssertTrue(inheritedTheme.sizeIconWithBodySmallSizeMediumTablet == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithBodySmallSizeTallMobile() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconWithBodySmallSizeTallMobile, abstractTheme.sizeIconWithBodySmallSizeTallMobile)
        XCTAssertTrue(inheritedTheme.sizeIconWithBodySmallSizeTallMobile == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithBodySmallTallTablet() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconWithBodySmallSizeTallTablet, abstractTheme.sizeIconWithBodySmallSizeTallTablet)
        XCTAssertTrue(inheritedTheme.sizeIconWithBodySmallSizeTallTablet == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeWithLabelXlargeSizeShort() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconWithLabelXlargeSizeShort, abstractTheme.sizeIconWithLabelXlargeSizeShort)
        XCTAssertTrue(inheritedTheme.sizeIconWithLabelXlargeSizeShort == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeWithLabelXlargeSizeMedium() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconWithLabelXlargeSizeMedium, abstractTheme.sizeIconWithLabelXlargeSizeMedium)
        XCTAssertTrue(inheritedTheme.sizeIconWithLabelXlargeSizeMedium == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeWithLabelXlargeSizeTall() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconWithLabelXlargeSizeTall, abstractTheme.sizeIconWithLabelXlargeSizeTall)
        XCTAssertTrue(inheritedTheme.sizeIconWithLabelXlargeSizeTall == MockTheme.mockThemeSizeRawToken)
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

    func testInheritedThemeCanOverrideSemanticTokenSizeMaxWidthTypographyHeadingXlargeSizeMobile() throws {
        XCTAssertNotEqual(inheritedTheme.sizeMaxWidthTypeHeadingXlargeMobile, abstractTheme.sizeMaxWidthTypeHeadingXlargeMobile)
        XCTAssertTrue(inheritedTheme.sizeMaxWidthTypeHeadingXlargeMobile == MockTheme.mockThemeSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeMaxWidthTypographyHeadingXlargeSizeTablet() throws {
        XCTAssertNotEqual(inheritedTheme.sizeMaxWidthTypeHeadingXlargeTablet, abstractTheme.sizeMaxWidthTypeHeadingXlargeTablet)
        XCTAssertTrue(inheritedTheme.sizeMaxWidthTypeHeadingXlargeTablet == MockTheme.mockThemeSizeRawToken)
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
