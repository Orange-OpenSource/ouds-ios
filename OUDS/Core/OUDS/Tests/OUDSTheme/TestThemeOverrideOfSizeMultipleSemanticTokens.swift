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

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithHeadingXlargeSizeShort() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconWithHeadingXlargeSizeShort, abstractTheme.sizeIconWithHeadingXlargeSizeShort)
        XCTAssertTrue(inheritedTheme.sizeIconWithHeadingXlargeSizeShort == MockTheme.mockThemeSizeCompositeToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithHeadingXlargeSizeMedium() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconWithHeadingXlargeSizeMedium, abstractTheme.sizeIconWithHeadingXlargeSizeMedium)
        XCTAssertTrue(inheritedTheme.sizeIconWithHeadingXlargeSizeMedium == MockTheme.mockThemeSizeCompositeToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithHeadingXlargeSizeTall() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconWithHeadingXlargeSizeTall, abstractTheme.sizeIconWithHeadingXlargeSizeTall)
        XCTAssertTrue(inheritedTheme.sizeIconWithHeadingXlargeSizeTall == MockTheme.mockThemeSizeCompositeToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithHeadingLargeShort() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconWithHeadingLargeSizeShort, abstractTheme.sizeIconWithHeadingLargeSizeShort)
        XCTAssertTrue(inheritedTheme.sizeIconWithHeadingLargeSizeShort == MockTheme.mockThemeSizeCompositeToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithHeadingLargeMedium() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconWithHeadingLargeSizeMedium, abstractTheme.sizeIconWithHeadingLargeSizeMedium)
        XCTAssertTrue(inheritedTheme.sizeIconWithHeadingLargeSizeMedium == MockTheme.mockThemeSizeCompositeToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithHeadingLargeTall() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconWithHeadingLargeSizeTall, abstractTheme.sizeIconWithHeadingLargeSizeTall)
        XCTAssertTrue(inheritedTheme.sizeIconWithHeadingLargeSizeTall == MockTheme.mockThemeSizeCompositeToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithHeadingMediumShort() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconWithHeadingMediumSizeShort, abstractTheme.sizeIconWithHeadingMediumSizeShort)
        XCTAssertTrue(inheritedTheme.sizeIconWithHeadingMediumSizeShort == MockTheme.mockThemeSizeCompositeToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizIconWithHeadingMediumMedium() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconWithHeadingMediumSizeMedium, abstractTheme.sizeIconWithHeadingMediumSizeMedium)
        XCTAssertTrue(inheritedTheme.sizeIconWithHeadingMediumSizeMedium == MockTheme.mockThemeSizeCompositeToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithHeadingMediumTall() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconWithHeadingMediumSizeTall, abstractTheme.sizeIconWithHeadingMediumSizeTall)
        XCTAssertTrue(inheritedTheme.sizeIconWithHeadingMediumSizeTall == MockTheme.mockThemeSizeCompositeToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithHeadingSmallShort() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconWithHeadingSmallSizeShort, abstractTheme.sizeIconWithHeadingSmallSizeShort)
        XCTAssertTrue(inheritedTheme.sizeIconWithHeadingSmallSizeShort == MockTheme.mockThemeSizeCompositeToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithHeadingSmallMedium() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconWithHeadingSmallSizeMedium, abstractTheme.sizeIconWithHeadingSmallSizeMedium)
        XCTAssertTrue(inheritedTheme.sizeIconWithHeadingSmallSizeMedium == MockTheme.mockThemeSizeCompositeToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithHeadingSmallTall() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconWithHeadingSmallSizeTall, abstractTheme.sizeIconWithHeadingSmallSizeTall)
        XCTAssertTrue(inheritedTheme.sizeIconWithHeadingSmallSizeTall == MockTheme.mockThemeSizeCompositeToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithBodyLargeShort() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconWithBodyLargeSizeShort, abstractTheme.sizeIconWithBodyLargeSizeShort)
        XCTAssertTrue(inheritedTheme.sizeIconWithBodyLargeSizeShort.isEqual(MockTheme.mockThemeSizeCompositeToken))
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithBodyLargeMedium() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconWithBodyLargeSizeMedium, abstractTheme.sizeIconWithBodyLargeSizeMedium)
        XCTAssertTrue(inheritedTheme.sizeIconWithBodyLargeSizeMedium.isEqual(MockTheme.mockThemeSizeCompositeToken))
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithBodyLargeTall() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconWithBodyLargeSizeTall, abstractTheme.sizeIconWithBodyLargeSizeTall)
        XCTAssertTrue(inheritedTheme.sizeIconWithBodyLargeSizeTall.isEqual(MockTheme.mockThemeSizeCompositeToken))
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithBodyMediumShort() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconWithBodyMediumSizeShort, abstractTheme.sizeIconWithBodyMediumSizeShort)
        XCTAssertTrue(inheritedTheme.sizeIconWithBodyMediumSizeShort.isEqual(MockTheme.mockThemeSizeCompositeToken))
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithBodyMediumMedium() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconWithBodyMediumSizeMedium, abstractTheme.sizeIconWithBodyMediumSizeMedium)
        XCTAssertTrue(inheritedTheme.sizeIconWithBodyMediumSizeMedium.isEqual(MockTheme.mockThemeSizeCompositeToken))
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithBodyMediumTall() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconWithBodyMediumSizeTall, abstractTheme.sizeIconWithBodyMediumSizeTall)
        XCTAssertTrue(inheritedTheme.sizeIconWithBodyMediumSizeTall.isEqual(MockTheme.mockThemeSizeCompositeToken))
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithBodySmallShort() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconWithBodySmallSizeShort, abstractTheme.sizeIconWithBodySmallSizeShort)
        XCTAssertTrue(inheritedTheme.sizeIconWithBodySmallSizeShort.isEqual(MockTheme.mockThemeSizeCompositeToken))
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithBodySmallMedium() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconWithBodySmallSizeMedium, abstractTheme.sizeIconWithBodySmallSizeMedium)
        XCTAssertTrue(inheritedTheme.sizeIconWithBodySmallSizeMedium.isEqual(MockTheme.mockThemeSizeCompositeToken))
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeIconWithBodySmallTall() throws {
        XCTAssertNotEqual(inheritedTheme.sizeIconWithBodySmallSizeTall, abstractTheme.sizeIconWithBodySmallSizeTall)
        XCTAssertTrue(inheritedTheme.sizeIconWithBodySmallSizeTall.isEqual(MockTheme.mockThemeSizeCompositeToken))
    }

    // MARK: - Semantic token - Sizing - Max width

    func testInheritedThemeCanOverrideSemanticTokenSizeMaxWidthTypographyDisplayLarge() throws {
        XCTAssertNotEqual(inheritedTheme.sizeMaxWidthTypeDisplayLarge, abstractTheme.sizeMaxWidthTypeDisplayLarge)
        XCTAssertTrue(inheritedTheme.sizeMaxWidthTypeDisplayLarge.isEqual(MockTheme.mockThemeSizeCompositeToken))
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeMaxWidthTypographyDisplayMedium() throws {
        XCTAssertNotEqual(inheritedTheme.sizeMaxWidthTypeDisplayMedium, abstractTheme.sizeMaxWidthTypeDisplayMedium)
        XCTAssertTrue(inheritedTheme.sizeMaxWidthTypeDisplayMedium.isEqual(MockTheme.mockThemeSizeCompositeToken))
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeMaxWidthTypographyDisplaySmall() throws {
        XCTAssertNotEqual(inheritedTheme.sizeMaxWidthTypeDisplaySmall, abstractTheme.sizeMaxWidthTypeDisplaySmall)
        XCTAssertTrue(inheritedTheme.sizeMaxWidthTypeDisplaySmall.isEqual(MockTheme.mockThemeSizeCompositeToken))
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeMaxWidthTypographyHeadingXlargeSize() throws {
        XCTAssertNotEqual(inheritedTheme.sizeMaxWidthTypeHeadingXlarge, abstractTheme.sizeMaxWidthTypeHeadingXlarge)
        XCTAssertTrue(inheritedTheme.sizeMaxWidthTypeHeadingXlarge.isEqual(MockTheme.mockThemeSizeCompositeToken))
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeMaxWidthTypographyHeadingLarge() throws {
        XCTAssertNotEqual(inheritedTheme.sizeMaxWidthTypeHeadingLarge, abstractTheme.sizeMaxWidthTypeHeadingLarge)
        XCTAssertTrue(inheritedTheme.sizeMaxWidthTypeHeadingLarge.isEqual(MockTheme.mockThemeSizeCompositeToken))
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeMaxWidthTypographyHeadingMedium() throws {
        XCTAssertNotEqual(inheritedTheme.sizeMaxWidthTypeHeadingMedium, abstractTheme.sizeMaxWidthTypeHeadingMedium)
        XCTAssertTrue(inheritedTheme.sizeMaxWidthTypeHeadingMedium.isEqual(MockTheme.mockThemeSizeCompositeToken))
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeMaxWidthTypographyHeadingSmall() throws {
        XCTAssertNotEqual(inheritedTheme.sizeMaxWidthTypeHeadingSmall, abstractTheme.sizeMaxWidthTypeHeadingSmall)
        XCTAssertTrue(inheritedTheme.sizeMaxWidthTypeHeadingSmall.isEqual(MockTheme.mockThemeSizeCompositeToken))
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeMaxWidthTypographyBodyLarge() throws {
        XCTAssertNotEqual(inheritedTheme.sizeMaxWidthTypeBodyLarge, abstractTheme.sizeMaxWidthTypeBodyLarge)
        XCTAssertTrue(inheritedTheme.sizeMaxWidthTypeBodyLarge.isEqual(MockTheme.mockThemeSizeCompositeToken))
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeMaxWidthTypographyBodyMedium() throws {
        XCTAssertNotEqual(inheritedTheme.sizeMaxWidthTypeBodyMedium, abstractTheme.sizeMaxWidthTypeBodyMedium)
        XCTAssertTrue(inheritedTheme.sizeMaxWidthTypeBodyMedium.isEqual(MockTheme.mockThemeSizeCompositeToken))
    }

    func testInheritedThemeCanOverrideSemanticTokenSizeMaxWidthTypographyBodySmall() throws {
        XCTAssertNotEqual(inheritedTheme.sizeMaxWidthTypeBodySmall, abstractTheme.sizeMaxWidthTypeBodySmall)
        XCTAssertTrue(inheritedTheme.sizeMaxWidthTypeBodySmall.isEqual(MockTheme.mockThemeSizeCompositeToken))
    }
}

// swiftlint:enable required_deinit
// swiftlint:enable implicitly_unwrapped_optional
// swiftlint:enable type_name
