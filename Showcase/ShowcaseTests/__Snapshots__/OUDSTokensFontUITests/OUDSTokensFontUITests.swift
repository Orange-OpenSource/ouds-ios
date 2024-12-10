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
import OUDSThemesInverse
import OUDSThemesOrange
import OUDSTokensSemantic
import SnapshotTesting
import SwiftUI
import XCTest

// swiftlint:disable required_deinit

/// Tests the UI rendering of each **font token** using reference images
final class OUDSTokensFontUITests: XCTestCase {

    // MARK: - Orange Theme Light Mode Typography Tests

    /// This function tests all font tokens in the `OrangeTheme` with the `light` color scheme.
    /// It iterates through all `NamedFont` cases, rendering each illustration in a `UIHostingController`
    /// and captures a snapshot. The snapshot is saved with a name indicating the font, theme, color scheme and horizontalSizeClass.
    @MainActor func testAllFontsOrangeThemeLight() {
        let theme = OrangeTheme()
        let interfaceStyle = UIUserInterfaceStyle.light
        testAllFonts(for: theme, in: interfaceStyle)
    }

    // MARK: - Orange Theme Dark Mode Typography Tests

    /// This function tests all font tokens in the `OrangeTheme` with the `dark` color scheme.
    /// It iterates through all `NamedFont` cases, rendering each illustration in a `UIHostingController`
    /// and captures a snapshot. The snapshot is saved with a name indicating the font, theme, color scheme horizontalSizeClass.
    @MainActor func testAllFontsOrangeThemeDark() {
        let theme = OrangeTheme()
        let interfaceStyle = UIUserInterfaceStyle.dark
        testAllFonts(for: theme, in: interfaceStyle)
    }

    // MARK: - Inverse Theme Light Mode Typography Tests

    /// This function tests all font tokens in the `InverseTheme` with the `light` color scheme.
    /// It iterates through all `NamedFont` cases, rendering each illustration in a `UIHostingController`
    /// and captures a snapshot. The snapshot is saved with a name indicating the font, theme, color scheme and horizontalSizeClass
    @MainActor func testAllFontsInverseThemeLight() {
        let theme = InverseTheme()
        let interfaceStyle = UIUserInterfaceStyle.light
        testAllFonts(for: theme, in: interfaceStyle)
    }

    // MARK: - Inverse Theme Dark Mode Typography Tests

    /// This function tests all font tokens in the `InverseTheme` with the `dark` color scheme.
    /// It iterates through all `NamedFont` cases, rendering each illustration in a `UIHostingController`
    /// and captures a snapshot. The snapshot is saved with a name indicating the font, theme, color scheme and horizontalSizeClass.
    @MainActor func testAllFontsInverseThemeDark() {
        let theme = InverseTheme()
        let interfaceStyle = UIUserInterfaceStyle.dark
        testAllFonts(for: theme, in: interfaceStyle)
    }

    // MARK: Private test functions for all typography properties of typography token

    /// Tests all fonts properties by capturing their snapshots.
    /// - Parameters:
    ///   - theme: Theme used for rendering tokens (e.g., `OrangeTheme` or `InverseTheme`).
    ///   - interfaceStyle: The user interface style (light or dark) for which to test the colors.
    @MainActor private func testAllFonts(for theme: OUDSTheme, in interfaceStyle: UIUserInterfaceStyle) {

        // Iterate through all named tokens
        for namedToken in NamedFont.allCases {
            // Use the `IllustrationWidth` struct to test a single illustration
            let illustration = OUDSThemeableView(theme: theme) {
                FontTokenPage.IllustrationFont(namedFont: namedToken)
                    .background(theme.colorBgPrimary.color(for: interfaceStyle == .light ? .light : .dark))
            }

            // Encapsulate the element in a UIHostingController for snapshot testing
            let hostingVC = UIHostingController(rootView: illustration)

            // Create a unique snapshot name based on the current mode (light or dark) and the color's raw value
            let testName = "test_\(theme.name)Theme_\(interfaceStyle == .light ? "Light" : "Dark")"
            let name = namedToken.rawValue

            // Capture the snapshot of the illustration with the correct user interface style and save it with the snapshot name
            assertSnapshot(of: hostingVC, as: .image(traits: UITraitCollection(userInterfaceStyle: interfaceStyle)), named: name, testName: testName)
        }
    }
}

// swiftlint:enable required_deinit
