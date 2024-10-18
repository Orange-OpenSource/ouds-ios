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
import OUDSComponents
import OUDSThemesInverse
import OUDSThemesOrange
import OUDSTokensSemantic
import SnapshotTesting
import SwiftUI
import XCTest

// swiftlint:disable required_deinit

/// To ensure the TokensBorder are tested for UI compatibility with the reference image previously recorded.

class OUDSTokensBorderUITests: XCTestCase {

    // MARK: - Orange Theme Light Mode Width Tests

    /// Verifies that the `BorderWidthNone` token from the orange theme's `Width` section matches the saved reference image in light mode using snapshot testing.
    func testBorderToken_OrangeTheme_SectionWidth_BorderWidthNone_Light() {
        let vc = BorderTokenPage().environment(\.theme, OrangeTheme())
        assertSnapshot(of: vc, as: .image, named: "OrangeTheme/testBorderToken_OrangeTheme_SectionWidth_BorderWidthNone_Light")
    }

    /// Verifies that the `BorderWidthDefault` token from the orange theme's `Width` section matches the saved reference image in light mode using snapshot testing.
    func testBorderToken_OrangeTheme_SectionWidth_BorderWidthDefault_Light() {
        let vc = BorderTokenPage().environment(\.theme, OrangeTheme())
        assertSnapshot(of: vc, as: .image, named: "OrangeTheme/testBorderToken_OrangeTheme_SectionWidth_BorderWidthDefault_Light")
    }

    /// Verifies that the `BorderWidthThin` token from the orange theme's `Width` section matches the saved reference image in light mode using snapshot testing.
    func testBorderToken_OrangeTheme_SectionWidth_BorderWidthThin_Light() {
        let vc = BorderTokenPage().environment(\.theme, OrangeTheme())
        assertSnapshot(of: vc, as: .image, named: "OrangeTheme/testBorderToken_OrangeTheme_SectionWidth_BorderWidthThin_Light")
    }

    /// Verifies that the `BorderWidthMedium` token from the orange theme's `Width` section matches the saved reference image in light mode using snapshot testing.
    func testBorderToken_OrangeTheme_SectionWidth_BorderWidthMedium_Light() {
        let vc = BorderTokenPage().environment(\.theme, OrangeTheme())
        assertSnapshot(of: vc, as: .image, named: "OrangeTheme/testBorderToken_OrangeTheme_SectionWidth_BorderWidthMedium_Light")
    }

    /// Verifies that the `BorderWidthThick` token from the orange theme's `Width` section matches the saved reference image in light mode using snapshot testing.
    func testBorderToken_OrangeTheme_SectionWidth_BorderWidthThick_Light() {
        let vc = BorderTokenPage().environment(\.theme, OrangeTheme())
        assertSnapshot(of: vc, as: .image, named: "OrangeTheme/testBorderToken_OrangeTheme_SectionWidth_BorderWidthThick_Light")
    }

    /// Verifies that the `BorderWidthThicker` token from the orange theme's `Width` section matches the saved reference image in light mode using snapshot testing.
    func testBorderToken_OrangeTheme_SectionWidth_BorderWidthThicker_Light() {
        let vc = BorderTokenPage().environment(\.theme, OrangeTheme())
        assertSnapshot(of: vc, as: .image, named: "OrangeTheme/testBorderToken_OrangeTheme_SectionWidth_BorderWidthThicker_Light")
    }

    /// Verifies that the `BorderWidthOutsideFocus` token from the orange theme's `Width` section matches the saved reference image in light mode using snapshot testing.
    func testBorderToken_OrangeTheme_SectionWidth_BorderWidthOutsideFocus_Light() {
        let vc = BorderTokenPage().environment(\.theme, OrangeTheme())
        assertSnapshot(of: vc, as: .image, named: "OrangeTheme/testBorderToken_OrangeTheme_SectionWidth_BorderWidthOutsideFocus_Light")
    }

    // MARK: - Orange Theme Light Mode Radius Tests

    /// Verifies that the `BorderRadiusNone` token from the orange theme's `Radius` section matches the saved reference image in light mode using snapshot testing.
    func testBorderToken_OrangeTheme_SectionRadius_BorderRadiusNone_Light() {
        let vc = BorderTokenPage().environment(\.theme, OrangeTheme())
        assertSnapshot(of: vc, as: .image, named: "OrangeTheme/testBorderToken_OrangeTheme_SectionRadius_BorderRadiusNone_Light")
    }

    /// Verifies that the `BorderRadiusDefault` token from the orange theme's `Radius` section matches the saved reference image in light mode using snapshot testing.
    func testBorderToken_OrangeTheme_SectionRadius_BorderRadiusDefault_Light() {
        let vc = BorderTokenPage().environment(\.theme, OrangeTheme())
        assertSnapshot(of: vc, as: .image, named: "OrangeTheme/testBorderToken_OrangeTheme_SectionRadius_BorderRadiusDefault_Light")
    }

    /// Verifies that the `BorderRadiusShort` token from the orange theme's `Radius` section matches the saved reference image in light mode using snapshot testing.
    func testBorderToken_OrangeTheme_SectionRadius_BorderRadiusShort_Light() {
        let vc = BorderTokenPage().environment(\.theme, OrangeTheme())
        assertSnapshot(of: vc, as: .image, named: "OrangeTheme/testBorderToken_OrangeTheme_SectionRadius_BorderRadiusShort_Light")
    }

    /// Verifies that the `BorderRadiusMedium` token from the orange theme's `Radius` section matches the saved reference image in light mode using snapshot testing.
    func testBorderToken_OrangeTheme_SectionRadius_BorderRadiusMedium_Light() {
        let vc = BorderTokenPage().environment(\.theme, OrangeTheme())
        assertSnapshot(of: vc, as: .image, named: "OrangeTheme/testBorderToken_OrangeTheme_SectionRadius_BorderRadiusMedium_Light")
    }

    /// Verifies that the `BorderRadiusTall` token from the orange theme's `Radius` section matches the saved reference image in light mode using snapshot testing.
    func testBorderToken_OrangeTheme_SectionRadius_BorderRadiusTall_Light() {
        let vc = BorderTokenPage().environment(\.theme, OrangeTheme())
        assertSnapshot(of: vc, as: .image, named: "OrangeTheme/testBorderToken_OrangeTheme_SectionRadius_BorderRadiusTall_Light")
    }

    // MARK: - Orange Theme Light Mode Style Tests

    /// Verifies that the `BorderRadiusTall` token from the orange theme's `Style` section matches the saved reference image in light mode using snapshot testing.
    func testBorderToken_OrangeTheme_SectionStyle_BorderStyleDefault_Light() {
        let vc = BorderTokenPage().environment(\.theme, OrangeTheme())
        assertSnapshot(of: vc, as: .image, named: "OrangeTheme/testBorderToken_OrangeTheme_SectionStyle_BorderStyleDefault_Light")
    }

    /// Verifies that the `BorderStyleDrag` token from the orange theme's `Style` section matches the saved reference image in light mode using snapshot testing.
    func testBorderToken_OrangeTheme_SectionStyle_BorderStyleDrag_Light() {
        let vc = BorderTokenPage().environment(\.theme, OrangeTheme())
        assertSnapshot(of: vc, as: .image, named: "OrangeTheme/testBorderToken_OrangeTheme_SectionStyle_BorderStyleDrag_Light")
    }

    // MARK: - Inverse Theme Light Mode Width Tests

    /// Verifies that the `BorderWidthNone` token from the inverse theme's `Width` section matches the saved reference image in light mode using snapshot testing.
    func testBorderToken_InverseTheme_SectionWidth_BorderWidthNone_Light() {
        let vc = BorderTokenPage().environment(\.theme, InverseTheme())
        assertSnapshot(of: vc, as: .image, named: "InverseTheme/testBorderToken_InverseTheme_SectionWidth_BorderWidthNone_Light")
    }

    /// Verifies that the `BorderWidthDefault` token from the inverse theme's `Width` section matches the saved reference image in light mode using snapshot testing.
    func testBorderToken_InverseTheme_SectionWidth_BorderWidthDefault_Light() {
        let vc = BorderTokenPage().environment(\.theme, InverseTheme())
        assertSnapshot(of: vc, as: .image, named: "InverseTheme/testBorderToken_InverseTheme_SectionWidth_BorderWidthDefault_Light")
    }

    /// Verifies that the `BorderWidthThin` token from the inverse theme's `Width` section matches the saved reference image in light mode using snapshot testing.
    func testBorderToken_InverseTheme_SectionWidth_BorderWidthThin_Light() {
        let vc = BorderTokenPage().environment(\.theme, InverseTheme())
        assertSnapshot(of: vc, as: .image, named: "InverseTheme/testBorderToken_InverseTheme_SectionWidth_BorderWidthThin_Light")
    }

    /// Verifies that the `BorderWidthMedium` token from the inverse theme's `Width` section matches the saved reference image in light mode using snapshot testing.
    func testBorderToken_InverseTheme_SectionWidth_BorderWidthMedium_Light() {
        let vc = BorderTokenPage().environment(\.theme, InverseTheme())
        assertSnapshot(of: vc, as: .image, named: "InverseTheme/testBorderToken_InverseTheme_SectionWidth_BorderWidthMedium_Light")
    }

    /// Verifies that the `BorderWidthThick` token from the inverse theme's `Width` section matches the saved reference image in light mode using snapshot testing.
    func testBorderToken_InverseTheme_SectionWidth_BorderWidthThick_Light() {
        let vc = BorderTokenPage().environment(\.theme, InverseTheme())
        assertSnapshot(of: vc, as: .image, named: "InverseTheme/testBorderToken_InverseTheme_SectionWidth_BorderWidthThick_Light")
    }

    /// Verifies that the `BorderWidthThicker` token from the inverse theme's `Width` section matches the saved reference image in light mode using snapshot testing.
    func testBorderToken_InverseTheme_SectionWidth_BorderWidthThicker_Light() {
        let vc = BorderTokenPage().environment(\.theme, InverseTheme())
        assertSnapshot(of: vc, as: .image, named: "InverseTheme/testBorderToken_InverseTheme_SectionWidth_BorderWidthThicker_Light")
    }

    /// Verifies that the `BorderWidthOutsideFocus` token from the inverse theme's `Width` section matches the saved reference image in light mode using snapshot testing.
    func testBorderToken_InverseTheme_SectionWidth_BorderWidthOutsideFocus_Light() {
        let vc = BorderTokenPage().environment(\.theme, InverseTheme())
        assertSnapshot(of: vc, as: .image, named: "InverseTheme/testBorderToken_InverseTheme_SectionWidth_BorderWidthOutsideFocus_Light")
    }
}

// MARK: - Inverse Theme Light Mode Radius Tests

/// Verifies that the `BorderRadiusNone` token from the inverse theme's `Radius` section matches the saved reference image in light mode using snapshot testing.
func testBorderToken_InverseTheme_SectionRadius_BorderRadiusNone_Light() {
    let vc = BorderTokenPage().environment(\.theme, InverseTheme())
    assertSnapshot(of: vc, as: .image, named: "InverseTheme/testBorderToken_OrangeTheme_SectionRadius_BorderRadiusNone_Light")
}

/// Verifies that the `BorderRadiusDefault` token from the inverse theme's `Radius` section matches the saved reference image in light mode using snapshot testing.
func testBorderToken_InverseTheme_SectionRadius_BorderRadiusDefault_Light() {
    let vc = BorderTokenPage().environment(\.theme, InverseTheme())
    assertSnapshot(of: vc, as: .image, named: "InverseTheme/testBorderToken_OrangeTheme_SectionRadius_BorderRadiusDefault_Light")
}

/// Verifies that the `BorderRadiusShort` token from the inverse theme's `Radius` section matches the saved reference image in light mode using snapshot testing.
func testBorderToken_InverseTheme_SectionRadius_BorderRadiusShort_Light() {
    let vc = BorderTokenPage().environment(\.theme, InverseTheme())
    assertSnapshot(of: vc, as: .image, named: "InverseTheme/testBorderToken_OrangeTheme_SectionRadius_BorderRadiusShort_Light")
}

/// Verifies that the `BorderRadiusMedium` token from the inverse theme's `Radius` section matches the saved reference image in light mode using snapshot testing.
func testBorderToken_InverseTheme_SectionRadius_BorderRadiusMedium_Light() {
    let vc = BorderTokenPage().environment(\.theme, InverseTheme())
    assertSnapshot(of: vc, as: .image, named: "InverseTheme/testBorderToken_OrangeTheme_SectionRadius_BorderRadiusMedium_Light")
}

/// Verifies that the `BorderRadiusTall` token from the inverse theme's `Radius` section matches the saved reference image in light mode using snapshot testing.
func testBorderToken_InverseTheme_SectionRadius_BorderRadiusTall_Light() {
    let vc = BorderTokenPage().environment(\.theme, InverseTheme())
    assertSnapshot(of: vc, as: .image, named: "InverseTheme/testBorderToken_OrangeTheme_SectionRadius_BorderRadiusTall_Light")
}

// MARK: - Inverse Theme Light Mode Style Tests

/// Verifies that the `BorderStyleDefault` token from the inverse theme's `Radius` section matches the saved reference image in light mode using snapshot testing.
func testBorderToken_InverseTheme_SectionStyle_BorderStyleDefault_Light() {
    let vc = BorderTokenPage().environment(\.theme, InverseTheme())
    assertSnapshot(of: vc, as: .image, named: "InverseTheme/testBorderToken_OrangeTheme_SectionStyle_BorderStyleDefault_Light")
}

/// Verifies that the `BorderStyleDrag` token from the inverse theme's `Radius` section matches the saved reference image in light mode using snapshot testing.
func testBorderToken_InverseTheme_SectionStyle_BorderStyleDrag_Light() {
    let vc = BorderTokenPage().environment(\.theme, InverseTheme())
    assertSnapshot(of: vc, as: .image, named: "InverseTheme/testBorderToken_OrangeTheme_SectionStyle_BorderStyleDrag_Light")
}

// swiftlint:enable required_deinit
