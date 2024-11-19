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

/// To ensure the TokensSize are tested for UI compatibility with the reference image recorded
final class OUDSTokensSizeUITests: XCTestCase {

    // MARK: Properties

    private let inverseTheme = InverseTheme()
    private let orangeTheme = OrangeTheme()
    private let lightScheme: ColorScheme = .light
    private let darkScheme: ColorScheme = .dark

    // MARK: - Orange Theme Light Mode Dimension Tests

    /// This function tests all dimensions tokens in the `OrangeTheme` with the `light` color scheme.
    /// It iterates through all `NamedSize` cases, rendering each illustration in a `UIHostingController`
    /// and captures a snapshot. The snapshot is saved with a name indicating the size, theme, and color scheme.
    @MainActor func testAllSizesOrangeThemeLight() {
        // Create an instance of the page with a forced OrangeTheme,  light color scheme and horizontalSizeClass
        let sizePage = SizeTokenPage(forceTo: orangeTheme, colorScheme: lightScheme, horizontalSizeClass: .compact)

        // IconDecorative
        for sizing in NamedSize.IconDecorative.allCases {
            /// Use the `illustrationIconDecorative(for:)` method to test a single illustration
            let illustration = sizePage.illustrationIconDecorative(for: sizing)
                .background(orangeTheme.colorBgPrimary.color(for: lightScheme))

            // Encapsulate the element in a UIHostingController for snapshot testing
            let hostingVC = UIHostingController(rootView: illustration)

            // Capture the snapshot of the illustration with the correct theme and color scheme
            let snapshotName = "\(sizing.rawValue)"
            assertSnapshot(of: hostingVC, as: .image(traits: UITraitCollection(userInterfaceStyle: .light)), named: snapshotName)
        }

        // IconWithLabel
        for sizing in NamedSize.IconWithTypography.allCases {
            // Use the `illustrationIconDecorative(for:)` method to test a single illustration
            let illustration = sizePage.illustrationIconWithLabel(for: sizing)
                .background(orangeTheme.colorBgPrimary.color(for: lightScheme))

            // Encapsulate the element in a UIHostingController for snapshot testing
            let hostingVC = UIHostingController(rootView: illustration)

            // Capture the snapshot of the illustration with the correct theme and color scheme
            let snapshotName = "\(sizing.rawValue)"
            assertSnapshot(of: hostingVC, as: .image(traits: UITraitCollection(userInterfaceStyle: .light)), named: snapshotName)
        }
    }

    // MARK: - Orange Theme Dark Mode Border Tests

    /// This function tests all dimensions tokens in the `OrangeTheme` with the `dark` color scheme.
    /// It iterates through all `NamedSize`cases, rendering each illustration in a `UIHostingController`
    /// and captures a snapshot. The snapshot is saved with a name indicating the size, theme, and color scheme.
    @MainActor func testAllSizesOrangeThemeDark() {
        // Create an instance of the page with a forced OrangeTheme, dark color scheme and horizontalSizeClass
        let sizePage = SizeTokenPage(forceTo: orangeTheme, colorScheme: darkScheme, horizontalSizeClass: .compact)

        // IconDecorative
        for sizing in NamedSize.IconDecorative.allCases {
            // Use the `illustrationIconDecorative(for:)` method to test a single illustration
            let illustration = sizePage.illustrationIconDecorative(for: sizing)
                .background(orangeTheme.colorBgPrimary.color(for: darkScheme))

            // Encapsulate the element in a UIHostingController for snapshot testing
            let hostingVC = UIHostingController(rootView: illustration)

            // Capture the snapshot of the illustration with the correct theme and color scheme
            let snapshotName = "\(sizing.rawValue)"
            assertSnapshot(of: hostingVC, as: .image(traits: UITraitCollection(userInterfaceStyle: .dark)), named: snapshotName)
        }

        // IconWithLabel
        for sizing in NamedSize.IconWithTypography.allCases {
            // Use the `illustrationIconDecorative(for:)` method to test a single illustration
            let illustration = sizePage.illustrationIconWithLabel(for: sizing)
                .background(orangeTheme.colorBgPrimary.color(for: darkScheme))

            // Encapsulate the element in a UIHostingController for snapshot testing
            let hostingVC = UIHostingController(rootView: illustration)

            // Capture the snapshot of the illustration with the correct theme and color scheme
            let snapshotName = "\(sizing.rawValue)"
            assertSnapshot(of: hostingVC, as: .image(traits: UITraitCollection(userInterfaceStyle: .dark)), named: snapshotName)
        }
    }

    // MARK: - Inverse Theme Light Mode Border Tests

    /// This function tests all dimensions tokens in the `InverseTheme` with the `light` color scheme.
    /// It iterates through all `NamedSize` cases, rendering each illustration in a `UIHostingController`
    /// and captures a snapshot. The snapshot is saved with a name indicating the size, theme, and color scheme.
    @MainActor func testAllSizesInverseThemeLight() {
        // Create an instance of the page with a forced InverseTheme and light color scheme and horizontalSizeClass
        let sizePage = SizeTokenPage(forceTo: inverseTheme, colorScheme: lightScheme, horizontalSizeClass: .compact)

        // IconDecorative
        for sizing in NamedSize.IconDecorative.allCases {
            // Use the `illustrationIconDecorative(for:)` method to test a single illustration
            let illustration = sizePage.illustrationIconDecorative(for: sizing)
                .background(inverseTheme.colorBgPrimary.color(for: lightScheme))

            // Encapsulate the element in a UIHostingController for snapshot testing
            let hostingVC = UIHostingController(rootView: illustration)

            // Capture the snapshot of the illustration with the correct theme and color scheme
            let snapshotName = "\(sizing.rawValue)"
            assertSnapshot(of: hostingVC, as: .image(traits: UITraitCollection(userInterfaceStyle: .light)), named: snapshotName)
        }

        // IconWithLabel
        for sizing in NamedSize.IconWithTypography.allCases {
            // Use the `illustrationIconDecorative(for:)` method to test a single illustration
            let illustration = sizePage.illustrationIconWithLabel(for: sizing)
                .background(inverseTheme.colorBgPrimary.color(for: lightScheme))

            // Encapsulate the element in a UIHostingController for snapshot testing
            let hostingVC = UIHostingController(rootView: illustration)

            // Capture the snapshot of the illustration with the correct theme and color scheme
            let snapshotName = "\(sizing.rawValue)"
            assertSnapshot(of: hostingVC, as: .image(traits: UITraitCollection(userInterfaceStyle: .light)), named: snapshotName)
        }
    }

    // MARK: - Inverse Theme Dark Mode Border Tests

    /// This function tests all dimensions tokens in the `InverseTheme` with the `dark` color scheme.
    /// It iterates through all `NamedSize` cases, rendering each illustration in a `UIHostingController`
    /// and captures a snapshot. The snapshot is saved with a name indicating the size, theme, and color scheme.
    @MainActor func testAllSizeInverseThemeDark() {
        // Create an instance of the page with a forced InverseTheme and dark color scheme and horizontalSizeClass
        let sizePage = SizeTokenPage(forceTo: inverseTheme, colorScheme: darkScheme, horizontalSizeClass: .compact)

        // IconDecorative
        for sizing in NamedSize.IconDecorative.allCases {
            // Use the `illustrationIconDecorative(for:)` method to test a single illustration
            let illustration = sizePage.illustrationIconDecorative(for: sizing)
                .background(inverseTheme.colorBgPrimary.color(for: darkScheme))

            // Encapsulate the element in a UIHostingController for snapshot testing
            let hostingVC = UIHostingController(rootView: illustration)

            // Capture the snapshot of the illustration with the correct theme and color scheme
            let snapshotName = "\(sizing.rawValue)"
            assertSnapshot(of: hostingVC, as: .image(traits: UITraitCollection(userInterfaceStyle: .dark)), named: snapshotName)
        }

        // IconWithLabel
        for sizing in NamedSize.IconWithTypography.allCases {
            // Use the `illustrationIconDecorative(for:)` method to test a single illustration
            let illustration = sizePage.illustrationIconWithLabel(for: sizing)
                .background(inverseTheme.colorBgPrimary.color(for: darkScheme))

            // Encapsulate the element in a UIHostingController for snapshot testing
            let hostingVC = UIHostingController(rootView: illustration)

            // Capture the snapshot of the illustration with the correct theme and color scheme
            let snapshotName = "\(sizing.rawValue)"
            assertSnapshot(of: hostingVC, as: .image(traits: UITraitCollection(userInterfaceStyle: .dark)), named: snapshotName)
        }
    }
}

// swiftlint:enable required_deinit
