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

/// To ensure the TokensTypography are tested for UI compatibility with the reference image recorded

final class OUDSTokensTypographyUITests: XCTestCase {

    // MARK: - Orange Theme Light Mode Typography Tests

    /// This function tests all elevation tokens in the `OrangeTheme` with the `light` color scheme.
    /// It iterates through all `NamedTypography` cases, rendering each illustration in a `UIHostingController`
    /// and captures a snapshot. The snapshot is saved with a name indicating the elevation, theme, and color scheme.
    @MainActor func testAllTypographiesOrangeThemeLight() {
        /// Create an instance of the page with a forced OrangeTheme and light color scheme
        let typographyPage = TypographyTokenPage(forceTo: OrangeTheme(), colorScheme: .light)

        for typography in NamedTypography.allCases {
            /// Use the `illustration(from:)` method to test a single illustration
            let illustration = typographyPage.illustration(from: typography)

            /// Encapsulate the element in a UIHostingController for snapshot testing
            let hostingVC = UIHostingController(rootView: illustration)

            /// Capture the snapshot of the illustration with the correct theme and color scheme
            let snapshotName = "\(typography.rawValue)"
            assertSnapshot(of: hostingVC, as: .image(traits: UITraitCollection(userInterfaceStyle: UIUserInterfaceStyle.light)), named: snapshotName)
        }
    }

    // MARK: - Orange Theme Dark Mode Typography Tests

    /// This function tests all elevation tokens in the `OrangeTheme` with the `dark` color scheme.
    /// It iterates through all `NamedTypography` cases, rendering each illustration in a `UIHostingController`
    /// and captures a snapshot. The snapshot is saved with a name indicating the elevation, theme, and color scheme.
    @MainActor func testAllTypographiesOrangeThemeDark() {
        /// Create an instance of the page with a forced OrangeTheme and dark color scheme
        let typographyPage = TypographyTokenPage(forceTo: OrangeTheme(), colorScheme: .dark)

        for typography in NamedTypography.allCases {
            /// Use the `illustration(from:)` method to test a single illustration
            let illustration = typographyPage.illustration(from: typography)

            /// Encapsulate the element in a UIHostingController for snapshot testing
            let hostingVC = UIHostingController(rootView: illustration)

            /// Capture the snapshot of the illustration with the correct theme and color scheme
            let snapshotName = "\(typography.rawValue)"
            assertSnapshot(of: hostingVC, as: .image(traits: UITraitCollection(userInterfaceStyle: UIUserInterfaceStyle.dark)), named: snapshotName)
        }
    }

    // MARK: - Inverse Theme Light Mode Typography Tests

    /// This function tests all elevation tokens in the `InverseTheme` with the `light` color scheme.
    /// It iterates through all `NamedTypography` cases, rendering each illustration in a `UIHostingController`
    /// and captures a snapshot. The snapshot is saved with a name indicating the elevation, theme, and color scheme.
    @MainActor func testAllTypographiesInverseThemeLight() {
        /// Create an instance of the page with a forced InverseTheme and dark color scheme
        let typographyPage = TypographyTokenPage(forceTo: InverseTheme(), colorScheme: .light)

        for typography in NamedTypography.allCases {
            /// Use the `illustration(from:)` method to test a single illustration
            let illustration = typographyPage.illustration(from: typography)

            /// Encapsulate the element in a UIHostingController for snapshot testing
            let hostingVC = UIHostingController(rootView: illustration)

            /// Capture the snapshot of the illustration with the correct theme and color scheme
            let snapshotName = "\(typography.rawValue)"
            assertSnapshot(of: hostingVC, as: .image(traits: UITraitCollection(userInterfaceStyle: UIUserInterfaceStyle.dark)), named: snapshotName)
        }
    }

    // MARK: - Inverse Theme Dark Mode Typography Tests

    /// This function tests all elevation tokens in the `InverseTheme` with the `dark` color scheme.
    /// It iterates through all `NamedTypography` cases, rendering each illustration in a `UIHostingController`
    /// and captures a snapshot. The snapshot is saved with a name indicating the elevation, theme, and color scheme.
    @MainActor func testAllTypographiesInverseThemeDark() {
        /// Create an instance of the page with a forced InverseTheme and dark color scheme
        let typographyPage = TypographyTokenPage(forceTo: InverseTheme(), colorScheme: .dark)

        for typography in NamedTypography.allCases {
            /// Use the `illustration(from:)` method to test a single illustration
            let illustration = typographyPage.illustration(from: typography)

            /// Encapsulate the element in a UIHostingController for snapshot testing
            let hostingVC = UIHostingController(rootView: illustration)

            /// Capture the snapshot of the illustration with the correct theme and color scheme
            let snapshotName = "\(typography.rawValue)"
            assertSnapshot(of: hostingVC, as: .image(traits: UITraitCollection(userInterfaceStyle: UIUserInterfaceStyle.dark)), named: snapshotName)
        }
    }
}

// swiftlint:enable required_deinit
