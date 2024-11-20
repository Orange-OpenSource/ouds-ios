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

/// To ensure the TokensBorder are tested for UI compatibility with the reference image recorded
final class OUDSTokensBorderUITests: XCTestCase {

    // MARK: Properties

    private let inverseTheme = InverseTheme()
    private let orangeTheme = OrangeTheme()
    private let lightScheme: ColorScheme = .light
    private let darkScheme: ColorScheme = .dark

    // MARK: - Orange Theme Light Mode Border Tests

    /// This function tests all elevation tokens in the `OrangeTheme` with the `light` color scheme.
    /// It iterates through all `NamedBorder` cases, rendering each illustration in a `UIHostingController`
    /// and captures a snapshot. The snapshot is saved with a name indicating the border, theme, and color scheme.
    @MainActor func testAllBordersOrangeThemeLight() {
        // Create an instance of the page with a forced OrangeTheme and light color scheme
        let borderPage = BorderTokenPage(forceTo: orangeTheme, colorScheme: lightScheme)

        // Section Width
        for borderWidth in NamedBorderWidth.allCases {
            // Use the `illustration(for:)` method to test a single illustration
            let illustration = borderPage.illustration(for: borderWidth)
                .background(orangeTheme.colorBgPrimary.color(for: lightScheme))

            // Encapsulate the element in a UIHostingController for snapshot testing
            let hostingVC = UIHostingController(rootView: illustration)

            /// Capture the snapshot of the illustration with the correct theme and color scheme
            let snapshotName = "\(borderWidth.rawValue)"
            assertSnapshot(of: hostingVC, as: .image(traits: UITraitCollection(userInterfaceStyle: .light)), named: snapshotName)
        }

        // Section Radius
        for borderRadius in NamedBorderRadius.allCases {
            // Use the `illustration(for:)` method to test a single illustration
            let illustration = borderPage.illustration(for: borderRadius)
                .background(orangeTheme.colorBgPrimary.color(for: lightScheme))

            // Encapsulate the element in a UIHostingController for snapshot testing
            let hostingVC = UIHostingController(rootView: illustration)

            // Capture the snapshot of the illustration with the correct theme and color scheme
            let snapshotName = "\(borderRadius.rawValue)"
            assertSnapshot(of: hostingVC, as: .image(traits: UITraitCollection(userInterfaceStyle: .light)), named: snapshotName)
        }

        // Section Style
        for borderStyle in NamedBorderStyle.allCases {
            // Use the `illustration(for:)` method to test a single illustration
            let illustration = borderPage.illustration(for: borderStyle)
                .background(orangeTheme.colorBgPrimary.color(for: lightScheme))

            // Encapsulate the element in a UIHostingController for snapshot testing
            let hostingVC = UIHostingController(rootView: illustration)

            // Capture the snapshot of the illustration with the correct theme and color scheme
            let snapshotName = "\(borderStyle.rawValue)"
            assertSnapshot(of: hostingVC, as: .image(traits: UITraitCollection(userInterfaceStyle: .light)), named: snapshotName)
        }
    }

    // MARK: - Orange Theme Dark Mode Border Tests

    /// This function tests all elevation tokens in the `OrangeTheme` with the `dark` color scheme.
    /// It iterates through all `NamedBorder` cases, rendering each illustration in a `UIHostingController`
    /// and captures a snapshot. The snapshot is saved with a name indicating the border, theme, and color scheme.
    @MainActor func testAllBordersOrangeThemeDark() {
        // Create an instance of the page with a forced OrangeTheme and dark color scheme
        let borderPage = BorderTokenPage(forceTo: orangeTheme, colorScheme: darkScheme)

        // Section Width
        for borderWidth in NamedBorderWidth.allCases {
            // Use the `illustration(for:)` method to test a single illustration
            let illustration = borderPage.illustration(for: borderWidth)
                .background(orangeTheme.colorBgPrimary.color(for: darkScheme))

            // Encapsulate the element in a UIHostingController for snapshot testing
            let hostingVC = UIHostingController(rootView: illustration)

            // Capture the snapshot of the illustration with the correct theme and color scheme
            let snapshotName = "\(borderWidth.rawValue)"
            assertSnapshot(of: hostingVC, as: .image(traits: UITraitCollection(userInterfaceStyle: .dark)), named: snapshotName)
        }

        // Section Radius
        for borderRadius in NamedBorderRadius.allCases {
            // Use the `illustration(for:)` method to test a single illustration
            let illustration = borderPage.illustration(for: borderRadius)
                .background(orangeTheme.colorBgPrimary.color(for: darkScheme))

            // Encapsulate the element in a UIHostingController for snapshot testing
            let hostingVC = UIHostingController(rootView: illustration)

            // Capture the snapshot of the illustration with the correct theme and color scheme
            let snapshotName = "\(borderRadius.rawValue)"
            assertSnapshot(of: hostingVC, as: .image(traits: UITraitCollection(userInterfaceStyle: .dark)), named: snapshotName)
        }

        // Section Style
        for borderStyle in NamedBorderStyle.allCases {
            // Use the `illustration(for:)` method to test a single illustration
            let illustration = borderPage.illustration(for: borderStyle)
                .background(orangeTheme.colorBgPrimary.color(for: darkScheme))

            // Encapsulate the element in a UIHostingController for snapshot testing
            let hostingVC = UIHostingController(rootView: illustration)

            // Capture the snapshot of the illustration with the correct theme and color scheme
            let snapshotName = "\(borderStyle.rawValue)"
            assertSnapshot(of: hostingVC, as: .image(traits: UITraitCollection(userInterfaceStyle: .dark)), named: snapshotName)
        }
    }

    // MARK: - Inverse Theme Light Mode Border Tests

    /// This function tests all elevation tokens in the `InverseTheme` with the `light` color scheme.
    /// It iterates through all `NamedBorder` cases, rendering each illustration in a `UIHostingController`
    /// and captures a snapshot. The snapshot is saved with a name indicating the border, theme, and color scheme.
    @MainActor func testAllBordersInverseThemeLight() {
        // Create an instance of the page with a forced InverseTheme and light color scheme
        let borderPage = BorderTokenPage(forceTo: inverseTheme, colorScheme: lightScheme)

        // Section Width
        for borderWidth in NamedBorderWidth.allCases {
            // Use the `illustration(for:)` method to test a single illustration
            let illustration = borderPage.illustration(for: borderWidth)
                .background(inverseTheme.colorBgPrimary.color(for: lightScheme))

            // Encapsulate the element in a UIHostingController for snapshot testing
            let hostingVC = UIHostingController(rootView: illustration)

            // Capture the snapshot of the illustration with the correct theme and color scheme
            let snapshotName = "\(borderWidth.rawValue)"
            assertSnapshot(of: hostingVC, as: .image(traits: UITraitCollection(userInterfaceStyle: .light)), named: snapshotName)
        }

        // Section Radius
        for borderRadius in NamedBorderRadius.allCases {
            // Use the `illustration(for:)` method to test a single illustration
            let illustration = borderPage.illustration(for: borderRadius)
                .background(inverseTheme.colorBgPrimary.color(for: lightScheme))

            // Encapsulate the element in a UIHostingController for snapshot testing
            let hostingVC = UIHostingController(rootView: illustration)

            // Capture the snapshot of the illustration with the correct theme and color scheme
            let snapshotName = "\(borderRadius.rawValue)"
            assertSnapshot(of: hostingVC, as: .image(traits: UITraitCollection(userInterfaceStyle: .light)), named: snapshotName)
        }

        // Section Style
        for borderStyle in NamedBorderStyle.allCases {
            // Use the `illustration(for:)` method to test a single illustration
            let illustration = borderPage.illustration(for: borderStyle)
                .background(inverseTheme.colorBgPrimary.color(for: lightScheme))

            // Encapsulate the element in a UIHostingController for snapshot testing
            let hostingVC = UIHostingController(rootView: illustration)

            // Capture the snapshot of the illustration with the correct theme and color scheme
            let snapshotName = "\(borderStyle.rawValue)"
            assertSnapshot(of: hostingVC, as: .image(traits: UITraitCollection(userInterfaceStyle: .light)), named: snapshotName)
        }
    }

    // MARK: - Inverse Theme Dark Mode Border Tests

    /// This function tests all elevation tokens in the `InverseTheme` with the `dark` color scheme.
    /// It iterates through all `NamedElevation` cases, rendering each illustration in a `UIHostingController`
    /// and captures a snapshot. The snapshot is saved with a name indicating the border, theme, and color scheme.
    @MainActor func testAllBordersInverseThemeDark() {
        /// Create an instance of the page with a forced InverseTheme and dark color scheme
        let borderPage = BorderTokenPage(forceTo: inverseTheme, colorScheme: darkScheme)

        // Section Width
        for borderWidth in NamedBorderWidth.allCases {
            // Use the `illustration(for:)` method to test a single illustration
            let illustration = borderPage.illustration(for: borderWidth)
                .background(inverseTheme.colorBgPrimary.color(for: darkScheme))

            // Encapsulate the element in a UIHostingController for snapshot testing
            let hostingVC = UIHostingController(rootView: illustration)

            // Capture the snapshot of the illustration with the correct theme and color scheme
            let snapshotName = "\(borderWidth.rawValue)"
            assertSnapshot(of: hostingVC, as: .image(traits: UITraitCollection(userInterfaceStyle: .dark)), named: snapshotName)
        }

        // Section Radius
        for borderRadius in NamedBorderRadius.allCases {
            // Use the `illustration(for:)` method to test a single illustration
            let illustration = borderPage.illustration(for: borderRadius)
                .background(inverseTheme.colorBgPrimary.color(for: darkScheme))

            // Encapsulate the element in a UIHostingController for snapshot testing
            let hostingVC = UIHostingController(rootView: illustration)

            // Capture the snapshot of the illustration with the correct theme and color scheme
            let snapshotName = "\(borderRadius.rawValue)"
            assertSnapshot(of: hostingVC, as: .image(traits: UITraitCollection(userInterfaceStyle: .dark)), named: snapshotName)
        }

        // Section Style
        for borderStyle in NamedBorderStyle.allCases {
            // Use the `illustration(for:)` method to test a single illustration
            let illustration = borderPage.illustration(for: borderStyle)
                .background(inverseTheme.colorBgPrimary.color(for: darkScheme))

            // Encapsulate the element in a UIHostingController for snapshot testing
            let hostingVC = UIHostingController(rootView: illustration)

            // Capture the snapshot of the illustration with the correct theme and color scheme
            let snapshotName = "\(borderStyle.rawValue)"
            assertSnapshot(of: hostingVC, as: .image(traits: UITraitCollection(userInterfaceStyle: .dark)), named: snapshotName)
        }
    }
}

// swiftlint:enable required_deinit
