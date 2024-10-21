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

/// To ensure the TokensTypography are tested for UI compatibility with the reference image previously recorded.

final class OUDSTokensTypographyUITests: XCTestCase {

    // MARK: - Orange Theme Light Mode Typography Tests

    /// Verifies that the `DisplayLarge` token from the orange theme's matches the saved reference image
    func testTypographyToken_OrangeTheme_DisplayLarge_Light() {
        let vc = TypographyTokenPage().environment(\.theme, OrangeTheme())
        assertSnapshot(of: vc, as: .image, named: "OrangeTheme/testTypographyToken_OrangeTheme_TypographyDisplayLarge_Light")
    }

    /// Verifies that the `DisplayMedium` token from the orange theme's matches the saved reference image
    func testTypographyToken_OrangeTheme_DisplayMedium_Light() {
        let vc = TypographyTokenPage().environment(\.theme, OrangeTheme())
        assertSnapshot(of: vc, as: .image, named: "OrangeTheme/testTypographyToken_OrangeTheme_TypographyDisplayMedium_Light")
    }

    /// Verifies that the `DisplaySmall` token from the orange theme's matches the saved reference image
    func testTypographyToken_OrangeTheme_TypographyDisplaySmall_Light() {
        let vc = TypographyTokenPage().environment(\.theme, OrangeTheme())
        assertSnapshot(of: vc, as: .image, named: "OrangeTheme/testTypographyToken_OrangeTheme_TypographyDisplaySmall_Light")
    }

    /// Verifies that the `HeadingXLarge` token from the orange theme's matches the saved reference image
    func testTypographyToken_OrangeTheme_TypographyHeadingXLarge_Light() {
        let vc = TypographyTokenPage().environment(\.theme, OrangeTheme())
        assertSnapshot(of: vc, as: .image, named: "OrangeTheme/testTypographyToken_OrangeTheme_TypographyHeadingXLarge_Light")
    }

    /// Verifies that the `HeadingLarge` token from the orange theme's matches the saved reference image
    func testTypographyToken_OrangeTheme_TypographyHeadingLarge_Light() {
        let vc = TypographyTokenPage().environment(\.theme, OrangeTheme())
        assertSnapshot(of: vc, as: .image, named: "OrangeTheme/testTypographyToken_OrangeTheme_TypographyHeadingLarge_Light")
    }

    /// Verifies that the `HeadingMedium` token from the orange theme's matches the saved reference image
    func testTypographyToken_OrangeTheme_HeadingMedium_Light() {
        let vc = TypographyTokenPage().environment(\.theme, OrangeTheme())
        assertSnapshot(of: vc, as: .image, named: "OrangeTheme/testTypographyToken_OrangeTheme_TypographyHeadingMedium_Light")
    }

    /// Verifies that the `HeadingSmall` token from the orange theme's matches the saved reference image
    func testTypographyToken_OrangeTheme_HeadingSmall_Light() {
        let vc = TypographyTokenPage().environment(\.theme, OrangeTheme())
        assertSnapshot(of: vc, as: .image, named: "OrangeTheme/testTypographyToken_OrangeTheme_HeadingSmall_Light")
    }

    /// Verifies that the `BodyDefaultLarge` token from the orange theme's matches the saved reference image
    func testTypographyToken_OrangeTheme_BodyDefaultLarge_Light() {
        let vc = TypographyTokenPage().environment(\.theme, OrangeTheme())
        assertSnapshot(of: vc, as: .image, named: "OrangeTheme/testTypographyToken_OrangeTheme_BodyDefaultLarge_Light")
    }

    /// Verifies that the `BodyDefaultMedium` token from the orange theme's matches the saved reference image
    func testTypographyToken_OrangeTheme_BodyDefaultMedium_Light() {
        let vc = TypographyTokenPage().environment(\.theme, OrangeTheme())
        assertSnapshot(of: vc, as: .image, named: "OrangeTheme/testTypographyToken_OrangeTheme_BodyDefaultMedium_Light")
    }

    /// Verifies that the `BodyDefaultSmall` token from the orange theme's matches the saved reference image
    func testTypographyToken_OrangeTheme_BodyDefaultSmall_Light() {
        let vc = TypographyTokenPage().environment(\.theme, OrangeTheme())
        assertSnapshot(of: vc, as: .image, named: "OrangeTheme/testTypographyToken_OrangeTheme_BodyDefaultSmall_Light")
    }

    /// Verifies that the `BodyStrongLarge` token from the orange theme's matches the saved reference image
    func testTypographyToken_OrangeTheme_BodyStrongLarge_Light() {
        let vc = TypographyTokenPage().environment(\.theme, OrangeTheme())
        assertSnapshot(of: vc, as: .image, named: "OrangeTheme/testTypographyToken_OrangeTheme_BodyStrongLarge_Light")
    }

    /// Verifies that the `BodyStrongMedium` token from the orange theme's matches the saved reference image
    func testTypographyToken_OrangeTheme_BodyStrongMedium_Light() {
        let vc = TypographyTokenPage().environment(\.theme, OrangeTheme())
        assertSnapshot(of: vc, as: .image, named: "OrangeTheme/testTypographyToken_OrangeTheme_BodyStrongMedium_Light")
    }

    /// Verifies that the `BodyStrongSmall` token from the orange theme's matches the saved reference image
    func testTypographyToken_OrangeTheme_BodyStrongSmall_Light() {
        let vc = TypographyTokenPage().environment(\.theme, OrangeTheme())
        assertSnapshot(of: vc, as: .image, named: "OrangeTheme/testTypographyToken_OrangeTheme_BodyStrongSmall_Light")
    }

    /// Verifies that the `labelDefaultXLarge` token from the orange theme's matches the saved reference image
    func testTypographyToken_OrangeTheme_labelDefaultXLarge_Light() {
        let vc = TypographyTokenPage().environment(\.theme, OrangeTheme())
        assertSnapshot(of: vc, as: .image, named: "OrangeTheme/testTypographyToken_OrangeTheme_LabelDefaultXLarge_Light")
    }

    /// Verifies that the `labelDefaultLarge` token from the orange theme's matches the saved reference image
    func testTypographyToken_OrangeTheme_labelDefaultLarge_Light() {
        let vc = TypographyTokenPage().environment(\.theme, OrangeTheme())
        assertSnapshot(of: vc, as: .image, named: "OrangeTheme/testTypographyToken_OrangeTheme_LabelDefaultLarge_Light")
    }

    /// Verifies that the `labelDefaultMedium` token from the orange theme's matches the saved reference image
    func testTypographyToken_OrangeTheme_labelDefaultMedium_Light() {
        let vc = TypographyTokenPage().environment(\.theme, OrangeTheme())
        assertSnapshot(of: vc, as: .image, named: "OrangeTheme/testTypographyToken_OrangeTheme_LabelDefaultMedium_Light")
    }

    /// Verifies that the `TypographyDisplayLarge` token from the orange theme's matches the saved reference image
    func testTypographyToken_OrangeTheme_labelDefaultSmall_Light() {
        let vc = TypographyTokenPage().environment(\.theme, OrangeTheme())
        assertSnapshot(of: vc, as: .image, named: "OrangeTheme/testTypographyToken_OrangeTheme_LabelDefaultSmall_Light")
    }

    /// Verifies that the `TypographyDisplayLarge` token from the orange theme's matches the saved reference image
    func testTypographyToken_OrangeTheme_labelStrongXLarge_Light() {
        let vc = TypographyTokenPage().environment(\.theme, OrangeTheme())
        assertSnapshot(of: vc, as: .image, named: "OrangeTheme/testTypographyToken_OrangeTheme_LabelStrongXLarge_Light")
    }

    /// Verifies that the `TypographyDisplayLarge` token from the orange theme's matches the saved reference image
    func testTypographyToken_OrangeTheme_labelStrongLarge_Light() {
        let vc = TypographyTokenPage().environment(\.theme, OrangeTheme())
        assertSnapshot(of: vc, as: .image, named: "OrangeTheme/testTypographyToken_OrangeTheme_LabelStrongLarge_Light")
    }

    /// Verifies that the `TypographyDisplayLarge` token from the orange theme's matches the saved reference image
    func testTypographyToken_OrangeTheme_labelStrongMedium_Light() {
        let vc = TypographyTokenPage().environment(\.theme, OrangeTheme())
        assertSnapshot(of: vc, as: .image, named: "OrangeTheme/testTypographyToken_OrangeTheme_LabelStrongMedium_Light")
    }

    /// Verifies that the `TypographyDisplayLarge` token from the orange theme's matches the saved reference image
    func testTypographyToken_OrangeTheme_labelStrongSmall_Light() {
        let vc = TypographyTokenPage().environment(\.theme, OrangeTheme())
        assertSnapshot(of: vc, as: .image, named: "OrangeTheme/testTypographyToken_OrangeTheme_LabelStrongSmall_Light")
    }

    /// Verifies that the `TypographyDisplayLarge` token from the orange theme's matches the saved reference image
    func testTypographyToken_OrangeTheme_codeMedium_Light() {
        let vc = TypographyTokenPage().environment(\.theme, OrangeTheme())
        assertSnapshot(of: vc, as: .image, named: "OrangeTheme/testTypographyToken_OrangeTheme_CodeMedium_Light")
    }

    /// Verifies that the `TypographyDisplayLarge` token from the orange theme's matches the saved reference image
    func testTypographyToken_OrangeTheme_codeSmall_Light() {
        let vc = TypographyTokenPage().environment(\.theme, OrangeTheme())
        assertSnapshot(of: vc, as: .image, named: "OrangeTheme/testTypographyToken_OrangeTheme_CodeSmall_Light")
    }

    // MARK: - Inverse Theme Light Mode Typography Tests

    /// Verifies that the `DisplayLarge` token from the inverse theme's matches the saved reference image
    func testTypographyToken_InverseTheme_DisplayLarge_Light() {
        let vc = TypographyTokenPage().environment(\.theme, InverseTheme())
        assertSnapshot(of: vc, as: .image, named: "OrangeTheme/testTypographyToken_InverseTheme_TypographyDisplayLarge_Light")
    }

    /// Verifies that the `DisplayLarge` token from the inverse theme's matches the saved reference image
    func testTypographyToken_InverseTheme_DisplayMedium_Light() {
        let vc = TypographyTokenPage().environment(\.theme, InverseTheme())
        assertSnapshot(of: vc, as: .image, named: "OrangeTheme/testTypographyToken_InverseTheme_TypographyDisplayMedium_Light")
    }

    /// Verifies that the `DisplaySmall` token from the inverse theme's matches the saved reference image
    func testTypographyToken_InverseTheme_DisplaySmall_Light() {
        let vc = TypographyTokenPage().environment(\.theme, InverseTheme())
        assertSnapshot(of: vc, as: .image, named: "OrangeTheme/testTypographyToken_InverseTheme_TypographyDisplaySmall_Light")
    }

    /// Verifies that the `HeadingXLarge` token from the inverse theme's matches the saved reference image
    func testTypographyToken_InverseTheme_HeadingXLarge_Light() {
        let vc = TypographyTokenPage().environment(\.theme, InverseTheme())
        assertSnapshot(of: vc, as: .image, named: "OrangeTheme/testTypographyToken_InverseTheme_TypographyHeadingXLarge_Light")
    }

    /// Verifies that the `HeadingLarge` token from the inverse theme's matches the saved reference image
    func testTypographyToken_InverseTheme_HeadingLarge_Light() {
        let vc = TypographyTokenPage().environment(\.theme, InverseTheme())
        assertSnapshot(of: vc, as: .image, named: "OrangeTheme/testTypographyToken_InverseTheme_TypographyHeadingLarge_Light")
    }

    /// Verifies that the `HeadingMedium` token from the inverse theme's matches the saved reference image
    func testTypographyToken_InverseTheme_HeadingMedium_Light() {
        let vc = TypographyTokenPage().environment(\.theme, InverseTheme())
        assertSnapshot(of: vc, as: .image, named: "OrangeTheme/testTypographyToken_InverseTheme_TypographyHeadingMedium_Light")
    }

    /// Verifies that the `HeadingSmall` token from the inverse theme's matches the saved reference image
    func testTypographyToken_InverseTheme_HeadingSmall_Light() {
        let vc = TypographyTokenPage().environment(\.theme, InverseTheme())
        assertSnapshot(of: vc, as: .image, named: "OrangeTheme/testTypographyToken_InverseTheme_HeadingSmall_Light")
    }

    /// Verifies that the `BodyDefaultLarge` token from the inverse theme's matches the saved reference image
    func testTypographyToken_InverseTheme_BodyDefaultLarge_Light() {
        let vc = TypographyTokenPage().environment(\.theme, InverseTheme())
        assertSnapshot(of: vc, as: .image, named: "OrangeTheme/testTypographyToken_InverseTheme_BodyDefaultLarge_Light")
    }

    /// Verifies that the `BodyDefaultMedium` token from the inverse theme's matches the saved reference image
    func testTypographyToken_InverseTheme_BodyDefaultMedium_Light() {
        let vc = TypographyTokenPage().environment(\.theme, InverseTheme())
        assertSnapshot(of: vc, as: .image, named: "OrangeTheme/testTypographyToken_InverseTheme_BodyDefaultMedium_Light")
    }

    /// Verifies that the `BodyDefaultSmall` token from the inverse theme's matches the saved reference image
    func testTypographyToken_InverseTheme_BodyDefaultSmall_Light() {
        let vc = TypographyTokenPage().environment(\.theme, InverseTheme())
        assertSnapshot(of: vc, as: .image, named: "OrangeTheme/testTypographyToken_InverseTheme_BodyDefaultSmall_Light")
    }

    /// Verifies that the `BodyStrongLarge` token from the inverse theme's matches the saved reference image
    func testTypographyToken_InverseTheme_BodyStrongLarge_Light() {
        let vc = TypographyTokenPage().environment(\.theme, InverseTheme())
        assertSnapshot(of: vc, as: .image, named: "OrangeTheme/testTypographyToken_InverseTheme_BodyStrongLarge_Light")
    }

    /// Verifies that the `BodyStrongMedium` token from the inverse theme's matches the saved reference image
    func testTypographyToken_InverseTheme_BodyStrongMedium_Light() {
        let vc = TypographyTokenPage().environment(\.theme, InverseTheme())
        assertSnapshot(of: vc, as: .image, named: "OrangeTheme/testTypographyToken_InverseTheme_BodyStrongMedium_Light")
    }

    /// Verifies that the `BodyStrongSmall` token from the inverse theme's matches the saved reference image
    func testTypographyToken_InverseTheme_BodyStrongSmall_Light() {
        let vc = TypographyTokenPage().environment(\.theme, InverseTheme())
        assertSnapshot(of: vc, as: .image, named: "OrangeTheme/testTypographyToken_InverseTheme_BodyStrongSmall_Light")
    }

    /// Verifies that the `LabelDefaultXLarge` token from the inverse theme's matches the saved reference image
    func testTypographyToken_InverseTheme_LabelDefaultXLarge_Light() {
        let vc = TypographyTokenPage().environment(\.theme, InverseTheme())
        assertSnapshot(of: vc, as: .image, named: "OrangeTheme/testTypographyToken_InverseTheme_LabelDefaultXLarge_Light")
    }

    /// Verifies that the `LabelDefaultLarge` token from the inverse theme's matches the saved reference image
    func testTypographyToken_InverseTheme_LabelDefaultLarge_Light() {
        let vc = TypographyTokenPage().environment(\.theme, InverseTheme())
        assertSnapshot(of: vc, as: .image, named: "OrangeTheme/testTypographyToken_InverseTheme_LabelDefaultLarge_Light")
    }

    /// Verifies that the `LabelDefaultMedium` token from the inverse theme's matches the saved reference image
    func testTypographyToken_InverseTheme_LabelDefaultMedium_Light() {
        let vc = TypographyTokenPage().environment(\.theme, InverseTheme())
        assertSnapshot(of: vc, as: .image, named: "OrangeTheme/testTypographyToken_InverseTheme_LabelDefaultMedium_Light")
    }

    /// Verifies that the `LabelDefaultSmall` token from the inverse theme's matches the saved reference image
    func testTypographyToken_InverseTheme_LabelDefaultSmall_Light() {
        let vc = TypographyTokenPage().environment(\.theme, InverseTheme())
        assertSnapshot(of: vc, as: .image, named: "OrangeTheme/testTypographyToken_InverseTheme_LabelDefaultSmall_Light")
    }

    /// Verifies that the `LabelStrongXLarge` token from the inverse theme's matches the saved reference image
    func testTypographyToken_InverseTheme_LabelStrongXLarge_Light() {
        let vc = TypographyTokenPage().environment(\.theme, InverseTheme())
        assertSnapshot(of: vc, as: .image, named: "OrangeTheme/testTypographyToken_InverseTheme_LabelStrongXLarge_Light")
    }

    /// Verifies that the `LabelStrongLarge` token from the inverse theme's matches the saved reference image
    func testTypographyToken_InverseTheme_LabelStrongLarge_Light() {
        let vc = TypographyTokenPage().environment(\.theme, InverseTheme())
        assertSnapshot(of: vc, as: .image, named: "OrangeTheme/testTypographyToken_InverseTheme_LabelStrongLarge_Light")
    }

    /// Verifies that the `LabelStrongMedium` token from the inverse theme's matches the saved reference image
    func testTypographyToken_InverseTheme_LabelStrongMedium_Light() {
        let vc = TypographyTokenPage().environment(\.theme, InverseTheme())
        assertSnapshot(of: vc, as: .image, named: "OrangeTheme/testTypographyToken_InverseTheme_LabelStrongMedium_Light")
    }

    /// Verifies that the `LabelStrongSmall` token from the inverse theme's matches the saved reference image
    func testTypographyToken_InverseTheme_LabelStrongSmall_Light() {
        let vc = TypographyTokenPage().environment(\.theme, InverseTheme())
        assertSnapshot(of: vc, as: .image, named: "OrangeTheme/testTypographyToken_InverseTheme_LabelStrongSmall_Light")
    }

    /// Verifies that the `CodeMedium` token from the inverse theme's matches the saved reference image
    func testTypographyToken_InverseTheme_CodeMedium_Light() {
        let vc = TypographyTokenPage().environment(\.theme, InverseTheme())
        assertSnapshot(of: vc, as: .image, named: "OrangeTheme/testTypographyToken_InverseTheme_CodeMedium_Light")
    }

    /// Verifies that the `CodeSmall` token from the inverse theme's matches the saved reference image
    func testTypographyToken_InverseTheme_CodeSmall_Light() {
        let vc = TypographyTokenPage().environment(\.theme, InverseTheme())
        assertSnapshot(of: vc, as: .image, named: "OrangeTheme/testTypographyToken_InverseTheme_CodeSmall_Light")
    }
}

// swiftlint:enable required_deinit
