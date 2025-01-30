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

final class TestThemeOverrideOfSkeletonComponentTokens: XCTestCase {

    private var abstractTheme: OUDSTheme!
    private var inheritedTheme: OUDSTheme!

    override func setUp() async throws {
        abstractTheme = OrangeTheme()
        inheritedTheme = MockTheme()
    }

    func testInheritedThemeCanOverrideSkeletonComponentTokenColorBg() throws {
        XCTAssertNotEqual(inheritedTheme.skeleton.skeletonColorBg, abstractTheme.skeleton.skeletonColorBg)
        XCTAssertTrue(inheritedTheme.skeleton.skeletonColorBg == MockThemeSkeletonComponentTokenProvider.mockThemeSkeletonColor)
    }

    func testInheritedThemeCanOverrideSkeletonComponentTokenColorGradientMiddle() throws {
        XCTAssertNotEqual(inheritedTheme.skeleton.skeletonColorGradientMiddle, abstractTheme.skeleton.skeletonColorGradientMiddle)
        XCTAssertTrue(inheritedTheme.skeleton.skeletonColorGradientMiddle == MockThemeSkeletonComponentTokenProvider.mockThemeSkeletonColor)
    }

    func testInheritedThemeCanOverrideSkeletonComponentTokenColorGradientStartEnd() throws {
        XCTAssertNotEqual(inheritedTheme.skeleton.skeletonColorGradientStartEnd, abstractTheme.skeleton.skeletonColorGradientStartEnd)
        XCTAssertTrue(inheritedTheme.skeleton.skeletonColorGradientStartEnd == MockThemeSkeletonComponentTokenProvider.mockThemeSkeletonColor)
    }
}

// swiftlint:enable required_deinit
// swiftlint:enable implicitly_unwrapped_optional
// swiftlint:enable type_name
