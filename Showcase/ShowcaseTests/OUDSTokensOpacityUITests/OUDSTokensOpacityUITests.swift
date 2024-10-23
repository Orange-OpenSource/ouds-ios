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

/// To ensure the TokensOpacity are tested for UI compatibility with the reference image recorded

final class OUDSTokensOpacityUITests: XCTestCase {

    // MARK: - Orange Theme Light Mode Opacity Tests

    /// This function tests all opacity tokens in the `OrangeTheme` with the `light` color scheme.
    /// It iterates through all `NamedOpacity` cases, rendering each illustration in a `UIHostingController`
    /// and captures a snapshot. The snapshot is saved with a name indicating the opacity, theme, and color scheme.
    func testAllOpacitiesOrangeThemeLight() {
        /// Create an instance of the page with a forced OrangeTheme and light color scheme
        let opacityPage = OpacityTokenPage(forceTo: OrangeTheme(), colorScheme: .light)

        for opacity in NamedOpacity.allCases {
            /// Use the `illustration(for:)` method to test a single illustration
            let illustration = opacityPage.illustration(for: opacity)

            /// Encapsulate the element in a UIHostingController for snapshot testing
            let hostingVC = UIHostingController(rootView: illustration)

            /// Capture the snapshot of the illustration with the correct theme and color scheme
            let snapshotName = "\(opacity.rawValue)"
            assertSnapshot(of: hostingVC, as: .image(traits: UITraitCollection(userInterfaceStyle: UIUserInterfaceStyle.light)), named: snapshotName)
        }
    }

    // MARK: - Orange Theme Dark Mode Opacity Tests

    /// This function tests all opacity tokens in the `OrangeTheme` with the `dark` color scheme.
    /// It iterates through all `NamedOpacity` cases, rendering each illustration in a `UIHostingController`
    /// and captures a snapshot. The snapshot is saved with a name indicating the opacity, theme, and color scheme.
    func testAllOpacitiesOrangeThemeDark() {
        /// Create an instance of the page with a forced OrangeTheme and dark color scheme
        let opacityPage = OpacityTokenPage(forceTo: OrangeTheme(), colorScheme: .dark)

        for opacity in NamedOpacity.allCases {
            /// Use the `illustration(for:)` method to test a single illustration
            let illustration = opacityPage.illustration(for: opacity)

            /// Encapsulate the element in a UIHostingController for snapshot testing
            let hostingVC = UIHostingController(rootView: illustration)

            /// Capture the snapshot of the illustration with the correct theme and color scheme
            let snapshotName = "\(opacity.rawValue)"
            assertSnapshot(of: hostingVC, as: .image(traits: UITraitCollection(userInterfaceStyle: UIUserInterfaceStyle.dark)), named: snapshotName)
        }
    }

    // MARK: - Inverse Theme Light Mode Opacity Tests

    /// This function tests all opacity tokens in the `InverseTheme` with the `light` color scheme.
    /// It iterates through all `NamedOpacity` cases, rendering each illustration in a `UIHostingController`
    /// and captures a snapshot. The snapshot is saved with a name indicating the opacity, theme, and color scheme.
    func testAllOpacitiesInverseThemeLight() {
        /// Create an instance of the page with a forced InverseTheme and dark color scheme
        let opacityPage = OpacityTokenPage(forceTo: InverseTheme(), colorScheme: .light)

        for opacity in NamedOpacity.allCases {
            /// Use the `illustration(for:)` method to test a single illustration
            let illustration = opacityPage.illustration(for: opacity)

            /// Encapsulate the element in a UIHostingController for snapshot testing
            let hostingVC = UIHostingController(rootView: illustration)

            /// Capture the snapshot of the illustration with the correct theme and color scheme
            let snapshotName = "\(opacity.rawValue)"
            assertSnapshot(of: hostingVC, as: .image(traits: UITraitCollection(userInterfaceStyle: UIUserInterfaceStyle.dark)), named: snapshotName)
        }
    }

    // MARK: - Inverse Theme Dark Mode Opacity Tests

    /// This function tests all opacity tokens in the `InverseTheme` with the `dark` color scheme.
    /// It iterates through all `NamedOpacity` cases, rendering each illustration in a `UIHostingController`
    /// and captures a snapshot. The snapshot is saved with a name indicating the opacity, theme, and color scheme.
    func testAllOpacitiesInverseThemeDark() {
        /// Create an instance of the page with a forced InverseTheme and dark color scheme
        let opacityPage = OpacityTokenPage(forceTo: InverseTheme(), colorScheme: .dark)

        for opacity in NamedOpacity.allCases {
            /// Use the `illustration(for:)` method to test a single illustration
            let illustration = opacityPage.illustration(for: opacity)

            /// Encapsulate the element in a UIHostingController for snapshot testing
            let hostingVC = UIHostingController(rootView: illustration)

            /// Capture the snapshot of the illustration with the correct theme and color scheme
            let snapshotName = "\(opacity.rawValue)"
            assertSnapshot(of: hostingVC, as: .image(traits: UITraitCollection(userInterfaceStyle: UIUserInterfaceStyle.dark)), named: snapshotName)
        }
    }
}

// swiftlint:enable required_deinit
