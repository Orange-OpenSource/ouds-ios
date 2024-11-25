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

/// Tests the UI rendering of each **elevation token** using reference images
final class OUDSTokensElevationUITests: XCTestCase {

    // MARK: Properties

    private let inverseTheme = InverseTheme()
    private let orangeTheme = OrangeTheme()
    private let lightScheme: ColorScheme = .light
    private let darkScheme: ColorScheme = .dark

    // MARK: - Orange Theme Light Mode Elevation Tests

    /// This function tests all elevation tokens in the `OrangeTheme` with the `light` color scheme.
    /// It iterates through all `NamedElevation` cases, rendering each illustration in a `UIHostingController`
    /// and captures a snapshot. The snapshot is saved with a name indicating the elevation, theme, and color scheme.
    @MainActor func testAllElevationsOrangeThemeLight() {
        // Create an instance of the page with a forced OrangeTheme and light color scheme
        let elevationPage = ElevationTokenPage(forceTo: orangeTheme, colorScheme: .light)

        for elevation in NamedElevation.allCases {
            // Use the `illustration(for:)` method to test a single illustration
            let illustration = elevationPage.illustration(for: elevation)
                .background(orangeTheme.colorBgPrimary.color(for: lightScheme))

            // Encapsulate the element in a UIHostingController for snapshot testing
            let hostingVC = UIHostingController(rootView: illustration)

            // Capture the snapshot of the illustration with the correct theme and color scheme
            let snapshotName = "\(elevation.rawValue)"
            assertSnapshot(of: hostingVC, as: .image(traits: UITraitCollection(userInterfaceStyle: .light)), named: snapshotName)
        }
    }

    // MARK: - Orange Theme Dark Mode Elevation Tests

    /// This function tests all elevation tokens in the `OrangeTheme` with the `dark` color scheme.
    /// It iterates through all `NamedElevation` cases, rendering each illustration in a `UIHostingController`
    /// and captures a snapshot. The snapshot is saved with a name indicating the elevation, theme, and color scheme.
    @MainActor func testAllElevationsOrangeThemeDark() {
        // Create an instance of the page with a forced OrangeTheme and dark color scheme
        let elevationPage = ElevationTokenPage(forceTo: orangeTheme, colorScheme: darkScheme)

        for elevation in NamedElevation.allCases {
            // Use the `illustration(for:)` method to test a single illustration
            let illustration = elevationPage.illustration(for: elevation)
                .background(orangeTheme.colorBgPrimary.color(for: darkScheme))

            // Encapsulate the element in a UIHostingController for snapshot testing
            let hostingVC = UIHostingController(rootView: illustration)

            // Capture the snapshot of the illustration with the correct theme and color scheme
            let snapshotName = "\(elevation.rawValue)"
            assertSnapshot(of: hostingVC, as: .image(traits: UITraitCollection(userInterfaceStyle: .dark)), named: snapshotName)
        }
    }

    // MARK: - Inverse Theme Light Mode Elevation Tests

    /// This function tests all elevation tokens in the `InverseTheme` with the `light` color scheme.
    /// It iterates through all `NamedElevation` cases, rendering each illustration in a `UIHostingController`
    /// and captures a snapshot. The snapshot is saved with a name indicating the elevation, theme, and color scheme.
    @MainActor func testAllElevationsInverseThemeLight() {
        // Create an instance of the page with a forced InverseTheme and dark color scheme
        let elevationPage = ElevationTokenPage(forceTo: inverseTheme, colorScheme: .light)

        for elevation in NamedElevation.allCases {
            // Use the `illustration(for:)` method to test a single illustration
            let illustration = elevationPage.illustration(for: elevation)
                .background(inverseTheme.colorBgPrimary.color(for: lightScheme))

            // Encapsulate the element in a UIHostingController for snapshot testing
            let hostingVC = UIHostingController(rootView: illustration)

            // Capture the snapshot of the illustration with the correct theme and color scheme
            let snapshotName = "\(elevation.rawValue)"
            assertSnapshot(of: hostingVC, as: .image(traits: UITraitCollection(userInterfaceStyle: .light)), named: snapshotName)
        }
    }

    // MARK: - Inverse Theme Dark Mode Elevation Tests

    /// This function tests all elevation tokens in the `InverseTheme` with the `dark` color scheme.
    /// It iterates through all `NamedElevation` cases, rendering each illustration in a `UIHostingController`
    /// and captures a snapshot. The snapshot is saved with a name indicating the elevation, theme, and color scheme.
    @MainActor func testAllElevationsInverseThemeDark() {
        // Create an instance of the page with a forced InverseTheme and dark color scheme
        let elevationPage = ElevationTokenPage(forceTo: inverseTheme, colorScheme: .dark)

        for elevation in NamedElevation.allCases {
            // Use the `illustration(for:)` method to test a single illustration
            let illustration = elevationPage.illustration(for: elevation)
                .background(inverseTheme.colorBgPrimary.color(for: darkScheme))

            // Encapsulate the element in a UIHostingController for snapshot testing
            let hostingVC = UIHostingController(rootView: illustration)

            // Capture the snapshot of the illustration with the correct theme and color scheme
            let snapshotName = "\(elevation.rawValue)"
            assertSnapshot(of: hostingVC, as: .image(traits: UITraitCollection(userInterfaceStyle: .dark)), named: snapshotName)
        }
    }
}

// swiftlint:enable required_deinit
