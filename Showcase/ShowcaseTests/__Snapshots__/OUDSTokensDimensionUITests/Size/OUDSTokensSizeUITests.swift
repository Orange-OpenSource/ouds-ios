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

/// Tests the UI rendering of each **size token** using reference images
final class OUDSTokensSizeUITests: XCTestCase {

    // MARK: Properties

    private let inverseTheme = InverseTheme()
    private let orangeTheme = OrangeTheme()
    private let lightScheme: ColorScheme = .light
    private let darkScheme: ColorScheme = .dark

    // MARK: - Orange Theme Light Mode Dimension Tests

    /// This function tests all size tokens in the `OrangeTheme` with the `light` color scheme.
    /// It iterates through all `NamedSize` cases, rendering each illustration in a `UIHostingController`
    /// and captures a snapshot. The snapshot is saved with a name indicating the size, theme, and color scheme.
    @MainActor func testAllSizesOrangeThemeLight() {
        // IconDecorative
        for sizing in NamedSize.IconDecorative.allCases {
            // Use the `IllustrationIconDecorative` struct to test a single illustration
            let illustration = OUDSThemeableView(theme: orangeTheme) {
                SizeTokenPage.IllustrationIconDecorative(namedSize: sizing)
                    .background(self.orangeTheme.colorBgPrimary.color(for: self.lightScheme))
            }

            // Encapsulate the element in a UIHostingController for snapshot testing
            let hostingVC = UIHostingController(rootView: illustration)

            // Capture the snapshot of the illustration with the correct theme and color scheme
            let snapshotName = "\(sizing.rawValue)"
            assertSnapshot(of: hostingVC, as: .image(traits: UITraitCollection(userInterfaceStyle: .light)), named: snapshotName)
        }

        // IconWithLabel
        for sizing in NamedSize.IconWithTypography.allCases {
            // Use the `IllustrationIconWithLabel` struct to test a single illustration
            let illustration = OUDSThemeableView(theme: orangeTheme) {
                SizeTokenPage.IllustrationIconWithLabel(namedSize: sizing)
                    .background(self.orangeTheme.colorBgPrimary.color(for: self.lightScheme))
            }

            // Encapsulate the element in a UIHostingController for snapshot testing
            let hostingVC = UIHostingController(rootView: illustration)

            // Capture the snapshot of the illustration with the correct theme and color scheme
            let snapshotName = "\(sizing.rawValue)"
            assertSnapshot(of: hostingVC, as: .image(traits: UITraitCollection(userInterfaceStyle: .light)), named: snapshotName)
        }
    }

    // MARK: - Orange Theme Dark Mode Border Tests

    /// This function tests all size tokens in the `OrangeTheme` with the `dark` color scheme.
    /// It iterates through all `NamedSize`cases, rendering each illustration in a `UIHostingController`
    /// and captures a snapshot. The snapshot is saved with a name indicating the size, theme, and color scheme.
    @MainActor func testAllSizesOrangeThemeDark() {
        // IconDecorative
        for sizing in NamedSize.IconDecorative.allCases {
            // Use the `IllustrationIconDecorative` struct to test a single illustration
            let illustration = OUDSThemeableView(theme: orangeTheme) {
                SizeTokenPage.IllustrationIconDecorative(namedSize: sizing)
                    .background(self.orangeTheme.colorBgPrimary.color(for: self.darkScheme))
            }

            // Encapsulate the element in a UIHostingController for snapshot testing
            let hostingVC = UIHostingController(rootView: illustration)

            // Capture the snapshot of the illustration with the correct theme and color scheme
            let snapshotName = "\(sizing.rawValue)"
            assertSnapshot(of: hostingVC, as: .image(traits: UITraitCollection(userInterfaceStyle: .dark)), named: snapshotName)
        }

        // IconWithLabel
        for sizing in NamedSize.IconWithTypography.allCases {
            // Use the `IllustrationIconWithLabel` struct to test a single illustration
            let illustration = OUDSThemeableView(theme: orangeTheme) {
                SizeTokenPage.IllustrationIconWithLabel(namedSize: sizing)
                    .background(self.orangeTheme.colorBgPrimary.color(for: self.darkScheme))
            }

            // Encapsulate the element in a UIHostingController for snapshot testing
            let hostingVC = UIHostingController(rootView: illustration)

            // Capture the snapshot of the illustration with the correct theme and color scheme
            let snapshotName = "\(sizing.rawValue)"
            assertSnapshot(of: hostingVC, as: .image(traits: UITraitCollection(userInterfaceStyle: .dark)), named: snapshotName)
        }
    }

    // MARK: - Inverse Theme Light Mode Border Tests

    /// This function tests all size tokens in the `InverseTheme` with the `light` color scheme.
    /// It iterates through all `NamedSize` cases, rendering each illustration in a `UIHostingController`
    /// and captures a snapshot. The snapshot is saved with a name indicating the size, theme, and color scheme.
    @MainActor func testAllSizesInverseThemeLight() {
        // IconDecorative
        for sizing in NamedSize.IconDecorative.allCases {
            // Use the `IllustrationIconDecorative` struct to test a single illustration
            let illustration = OUDSThemeableView(theme: inverseTheme) {
                SizeTokenPage.IllustrationIconDecorative(namedSize: sizing)
                    .background(self.inverseTheme.colorBgPrimary.color(for: self.lightScheme))
            }

            // Encapsulate the element in a UIHostingController for snapshot testing
            let hostingVC = UIHostingController(rootView: illustration)

            // Capture the snapshot of the illustration with the correct theme and color scheme
            let snapshotName = "\(sizing.rawValue)"
            assertSnapshot(of: hostingVC, as: .image(traits: UITraitCollection(userInterfaceStyle: .light)), named: snapshotName)
        }

        // IconWithLabel
        for sizing in NamedSize.IconWithTypography.allCases {
            // Use the `IllustrationIconWithLabel` struct to test a single illustration
            let illustration = OUDSThemeableView(theme: inverseTheme) {
                SizeTokenPage.IllustrationIconWithLabel(namedSize: sizing)
                    .background(self.inverseTheme.colorBgPrimary.color(for: self.lightScheme))
            }

            // Encapsulate the element in a UIHostingController for snapshot testing
            let hostingVC = UIHostingController(rootView: illustration)

            // Capture the snapshot of the illustration with the correct theme and color scheme
            let snapshotName = "\(sizing.rawValue)"
            assertSnapshot(of: hostingVC, as: .image(traits: UITraitCollection(userInterfaceStyle: .light)), named: snapshotName)
        }
    }

    // MARK: - Inverse Theme Dark Mode Border Tests

    /// This function tests all size tokens in the `InverseTheme` with the `dark` color scheme.
    /// It iterates through all `NamedSize` cases, rendering each illustration in a `UIHostingController`
    /// and captures a snapshot. The snapshot is saved with a name indicating the size, theme, and color scheme.
    @MainActor func testAllSizeInverseThemeDark() {
        // IconDecorative
        for sizing in NamedSize.IconDecorative.allCases {
            // Use the `IllustrationIconDecorative` struct to test a single illustration
            let illustration = OUDSThemeableView(theme: inverseTheme) {
                SizeTokenPage.IllustrationIconDecorative(namedSize: sizing)
                    .background(self.inverseTheme.colorBgPrimary.color(for: self.darkScheme))
            }

            // Encapsulate the element in a UIHostingController for snapshot testing
            let hostingVC = UIHostingController(rootView: illustration)

            // Capture the snapshot of the illustration with the correct theme and color scheme
            let snapshotName = "\(sizing.rawValue)"
            assertSnapshot(of: hostingVC, as: .image(traits: UITraitCollection(userInterfaceStyle: .dark)), named: snapshotName)
        }

        // IconWithLabel
        for sizing in NamedSize.IconWithTypography.allCases {
            // Use the `IllustrationIconWithLabel` struct to test a single illustration
            let illustration = OUDSThemeableView(theme: inverseTheme) {
                SizeTokenPage.IllustrationIconWithLabel(namedSize: sizing)
                    .background(self.inverseTheme.colorBgPrimary.color(for: self.darkScheme))
            }

            // Encapsulate the element in a UIHostingController for snapshot testing
            let hostingVC = UIHostingController(rootView: illustration)

            // Capture the snapshot of the illustration with the correct theme and color scheme
            let snapshotName = "\(sizing.rawValue)"
            assertSnapshot(of: hostingVC, as: .image(traits: UITraitCollection(userInterfaceStyle: .dark)), named: snapshotName)
        }
    }
}

// swiftlint:enable required_deinit
