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
import XCTest

// swiftlint:disable required_deinit
// swiftlint:disable implicitly_unwrapped_optional
// swiftlint:disable type_name

final class TestThemeOverrideOfCheckRadioComponentTokens: XCTestCase {

    private var abstractTheme: OUDSTheme!
    private var inheritedTheme: OUDSTheme!

    override func setUp() async throws {
        abstractTheme = OrangeTheme()
        inheritedTheme = MockTheme()
    }

    // MARK: - Sizes

    func testInheritedThemeCanOverrideCheckRadioComponentTokenSize() throws {
        XCTAssertNotEqual(inheritedTheme.checkRadio.checkRadioSizeSelector, abstractTheme.checkRadio.checkRadioSizeSelector)
        XCTAssertTrue(inheritedTheme.checkRadio.checkRadioSizeSelector == MockThemeCheckRadioComponentTokenProvider.mockThemeCheckRadioSize)
    }

    // MARK: - Dimensions

    func testInheritedThemeCanOverrideCheckRadioComponentTokenSizeMinHeightSelectorOnly() throws {
        XCTAssertNotEqual(inheritedTheme.checkRadio.checkRadioSizeMinHeightSelectorOnly, abstractTheme.checkRadio.checkRadioSizeMinHeightSelectorOnly)
        XCTAssertTrue(inheritedTheme.checkRadio.checkRadioSizeMinHeightSelectorOnly == MockThemeCheckRadioComponentTokenProvider.mockThemeCheckRadioDimension)
    }

    func testInheritedThemeCanOverrideCheckRadioComponentTokenSizeMinWidthSelectorOnly() throws {
        XCTAssertNotEqual(inheritedTheme.checkRadio.checkRadioSizeMinWidthSelectorOnly, abstractTheme.checkRadio.checkRadioSizeMinWidthSelectorOnly)
        XCTAssertTrue(inheritedTheme.checkRadio.checkRadioSizeMinWidthSelectorOnly == MockThemeCheckRadioComponentTokenProvider.mockThemeCheckRadioDimension)
    }

    func testInheritedThemeCanOverrideCheckRadioComponentTokenSizeMaxHeightSelectorOnly() throws {
        XCTAssertNotEqual(inheritedTheme.checkRadio.checkRadioSizeMaxHeightSelectorOnly, abstractTheme.checkRadio.checkRadioSizeMaxHeightSelectorOnly)
        XCTAssertTrue(inheritedTheme.checkRadio.checkRadioSizeMaxHeightSelectorOnly == MockThemeCheckRadioComponentTokenProvider.mockThemeCheckRadioDimension)
    }

    func testInheritedThemeCanOverrideCheckRadioComponentTokenSizeMaxHeightAssetsContainer() throws {
        XCTAssertNotEqual(inheritedTheme.checkRadio.checkRadioSizeMaxHeightAssetsContainer, abstractTheme.checkRadio.checkRadioSizeMaxHeightAssetsContainer)
        XCTAssertTrue(inheritedTheme.checkRadio.checkRadioSizeMaxHeightAssetsContainer == MockThemeCheckRadioComponentTokenProvider.mockThemeCheckRadioDimension)
    }

    // TODO: #264 - Add missing unit tests for new components tokens
}

// swiftlint:enable required_deinit
// swiftlint:enable implicitly_unwrapped_optional
// swiftlint:enable type_name
