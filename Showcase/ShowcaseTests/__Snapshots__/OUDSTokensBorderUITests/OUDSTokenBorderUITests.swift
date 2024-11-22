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

/// Tests the UI rendering of each **border token** using reference images
final class OUDSTokensBorderUITests: XCTestCase {

    // MARK: - Properties

    private let inverseTheme = InverseTheme()
    private let orangeTheme = OrangeTheme()
    private let lightScheme: ColorScheme = .light
    private let darkScheme: ColorScheme = .dark

    // MARK: - Orange Theme Light Mode Border Tests

    /// This function tests all border tokens in the `OrangeTheme` with the `light` color scheme.
    /// It iterates through all `NamedBorder` cases, rendering each illustration in a `UIHostingController`
    /// and captures a snapshot. The snapshot is saved with a name indicating the border, theme, and color scheme.
    @MainActor func testAllBordersOrangeThemeLight() {
        // Section Width
        for borderWidth in NamedBorderWidth.allCases {
            // Use the `IllustrationWidth` struct to test a single illustration
            let illustration = OUDSThemeableView(theme: orangeTheme) {
                BorderTokenPage.IllustrationWidth(namedWidth: borderWidth)
                    .background(self.orangeTheme.colorBgPrimary.color(for: self.lightScheme))
            }

            // Encapsulate the element in a UIHostingController for snapshot testing
            let hostingVC = UIHostingController(rootView: illustration)

            // Capture the snapshot of the illustration with the correct theme and color scheme
            let snapshotName = "\(borderWidth.rawValue)"
            assertSnapshot(of: hostingVC, as: .image(traits: UITraitCollection(userInterfaceStyle: .light)), named: snapshotName)
        }

        // Section Radius
        for borderRadius in NamedBorderRadius.allCases {
            // Use the `IllustrationRadius` struct to test a single illustration
            let illustration = OUDSThemeableView(theme: orangeTheme) {
                BorderTokenPage.IllustrationRadius(namedRadius: borderRadius)
                    .background(self.orangeTheme.colorBgPrimary.color(for: self.lightScheme))
            }

            // Encapsulate the element in a UIHostingController for snapshot testing
            let hostingVC = UIHostingController(rootView: illustration)

            // Capture the snapshot of the illustration with the correct theme and color scheme
            let snapshotName = "\(borderRadius.rawValue)"
            assertSnapshot(of: hostingVC, as: .image(traits: UITraitCollection(userInterfaceStyle: .light)), named: snapshotName)
        }

        // Section Style
        for borderStyle in NamedBorderStyle.allCases {
            // Use the `IllustrationStyle` struct to test a single illustration
            let illustration = OUDSThemeableView(theme: orangeTheme) {
                BorderTokenPage.IllustrationStyle(namedStyle: borderStyle)
                    .background(self.orangeTheme.colorBgPrimary.color(for: self.lightScheme))
            }

            // Encapsulate the element in a UIHostingController for snapshot testing
            let hostingVC = UIHostingController(rootView: illustration)

            // Capture the snapshot of the illustration with the correct theme and color scheme
            let snapshotName = "\(borderStyle.rawValue)"
            assertSnapshot(of: hostingVC, as: .image(traits: UITraitCollection(userInterfaceStyle: .light)), named: snapshotName)
        }
    }

    // MARK: - Orange Theme Dark Mode Border Tests

    /// This function tests all border tokens in the `OrangeTheme` with the `dark` color scheme.
    /// It iterates through all `NamedBorder` cases, rendering each illustration in a `UIHostingController`
    /// and captures a snapshot. The snapshot is saved with a name indicating the border, theme, and color scheme.
    @MainActor func testAllBordersOrangeThemeDark() {
        // Section Width
        for borderWidth in NamedBorderWidth.allCases {
            // Use the `IllustrationWidth` struct to test a single illustration
            let illustration = OUDSThemeableView(theme: orangeTheme) {
                BorderTokenPage.IllustrationWidth(namedWidth: borderWidth)
                    .background(self.orangeTheme.colorBgPrimary.color(for: self.darkScheme))
            }

            // Encapsulate the element in a UIHostingController for snapshot testing
            let hostingVC = UIHostingController(rootView: illustration)

            /// Capture the snapshot of the illustration with the correct theme and color scheme
            let snapshotName = "\(borderWidth.rawValue)"
            assertSnapshot(of: hostingVC, as: .image(traits: UITraitCollection(userInterfaceStyle: .dark)), named: snapshotName)
        }

        // Section Radius
        for borderRadius in NamedBorderRadius.allCases {
            // Use the `IllustrationRadius` struct to test a single illustration
            let illustration = OUDSThemeableView(theme: orangeTheme) {
                BorderTokenPage.IllustrationRadius(namedRadius: borderRadius)
                    .background(self.orangeTheme.colorBgPrimary.color(for: self.darkScheme))
            }

            // Encapsulate the element in a UIHostingController for snapshot testing
            let hostingVC = UIHostingController(rootView: illustration)

            // Capture the snapshot of the illustration with the correct theme and color scheme
            let snapshotName = "\(borderRadius.rawValue)"
            assertSnapshot(of: hostingVC, as: .image(traits: UITraitCollection(userInterfaceStyle: .dark)), named: snapshotName)
        }

        // Section Style
        for borderStyle in NamedBorderStyle.allCases {
            // Use the `IllustrationStyle` struct to test a single illustration
            let illustration = OUDSThemeableView(theme: orangeTheme) {
                BorderTokenPage.IllustrationStyle(namedStyle: borderStyle)
                    .background(self.orangeTheme.colorBgPrimary.color(for: self.darkScheme))
            }

            // Encapsulate the element in a UIHostingController for snapshot testing
            let hostingVC = UIHostingController(rootView: illustration)

            // Capture the snapshot of the illustration with the correct theme and color scheme
            let snapshotName = "\(borderStyle.rawValue)"
            assertSnapshot(of: hostingVC, as: .image(traits: UITraitCollection(userInterfaceStyle: .dark)), named: snapshotName)
        }
    }

    // MARK: - Inverse Theme Light Mode Border Tests

    /// This function tests all border tokens in the `InverseTheme` with the `light` color scheme.
    /// It iterates through all `NamedBorder` cases, rendering each illustration in a `UIHostingController`
    /// and captures a snapshot. The snapshot is saved with a name indicating the border, theme, and color scheme.
    @MainActor func testAllBordersInverseThemeLight() {
        // Section Width
        for borderWidth in NamedBorderWidth.allCases {
            // Use the `IllustrationWidth` struct to test a single illustration
            let illustration = OUDSThemeableView(theme: inverseTheme) {
                BorderTokenPage.IllustrationWidth(namedWidth: borderWidth)
                    .background(self.inverseTheme.colorBgPrimary.color(for: self.lightScheme))
            }

            // Encapsulate the element in a UIHostingController for snapshot testing
            let hostingVC = UIHostingController(rootView: illustration)

            /// Capture the snapshot of the illustration with the correct theme and color scheme
            let snapshotName = "\(borderWidth.rawValue)"
            assertSnapshot(of: hostingVC, as: .image(traits: UITraitCollection(userInterfaceStyle: .light)), named: snapshotName)
        }

        // Section Radius
        for borderRadius in NamedBorderRadius.allCases {
            // Use the `IllustrationRadius` struct to test a single illustration
            let illustration = OUDSThemeableView(theme: inverseTheme) {
                BorderTokenPage.IllustrationRadius(namedRadius: borderRadius)
                    .background(self.inverseTheme.colorBgPrimary.color(for: self.lightScheme))
            }

            // Encapsulate the element in a UIHostingController for snapshot testing
            let hostingVC = UIHostingController(rootView: illustration)

            // Capture the snapshot of the illustration with the correct theme and color scheme
            let snapshotName = "\(borderRadius.rawValue)"
            assertSnapshot(of: hostingVC, as: .image(traits: UITraitCollection(userInterfaceStyle: .light)), named: snapshotName)
        }

        // Section Style
        for borderStyle in NamedBorderStyle.allCases {
            // Use the `IllustrationStyle` struct to test a single illustration
            let illustration = OUDSThemeableView(theme: inverseTheme) {
                BorderTokenPage.IllustrationStyle(namedStyle: borderStyle)
                    .background(self.inverseTheme.colorBgPrimary.color(for: self.lightScheme))
            }

            // Encapsulate the element in a UIHostingController for snapshot testing
            let hostingVC = UIHostingController(rootView: illustration)

            // Capture the snapshot of the illustration with the correct theme and color scheme
            let snapshotName = "\(borderStyle.rawValue)"
            assertSnapshot(of: hostingVC, as: .image(traits: UITraitCollection(userInterfaceStyle: .light)), named: snapshotName)
        }
    }

    // MARK: - Inverse Theme Dark Mode Border Tests

    /// This function tests all border tokens in the `InverseTheme` with the `dark` color scheme.
    /// It iterates through all `NamedElevation` cases, rendering each illustration in a `UIHostingController`
    /// and captures a snapshot. The snapshot is saved with a name indicating the border, theme, and color scheme.
    @MainActor func testAllBordersInverseThemeDark() {
        // Section Width
        for borderWidth in NamedBorderWidth.allCases {
            // Use the `IllustrationWidth` struct to test a single illustration
            let illustration = OUDSThemeableView(theme: inverseTheme) {
                BorderTokenPage.IllustrationWidth(namedWidth: borderWidth)
                    .background(self.inverseTheme.colorBgPrimary.color(for: self.darkScheme))
            }

            // Encapsulate the element in a UIHostingController for snapshot testing
            let hostingVC = UIHostingController(rootView: illustration)

            /// Capture the snapshot of the illustration with the correct theme and color scheme
            let snapshotName = "\(borderWidth.rawValue)"
            assertSnapshot(of: hostingVC, as: .image(traits: UITraitCollection(userInterfaceStyle: .dark)), named: snapshotName)
        }

        // Section Radius
        for borderRadius in NamedBorderRadius.allCases {
            // Use the `IllustrationRadius` struct to test a single illustration
            let illustration = OUDSThemeableView(theme: inverseTheme) {
                BorderTokenPage.IllustrationRadius(namedRadius: borderRadius)
                    .background(self.inverseTheme.colorBgPrimary.color(for: self.darkScheme))
            }

            // Encapsulate the element in a UIHostingController for snapshot testing
            let hostingVC = UIHostingController(rootView: illustration)

            // Capture the snapshot of the illustration with the correct theme and color scheme
            let snapshotName = "\(borderRadius.rawValue)"
            assertSnapshot(of: hostingVC, as: .image(traits: UITraitCollection(userInterfaceStyle: .dark)), named: snapshotName)
        }

        // Section Style
        for borderStyle in NamedBorderStyle.allCases {
            // Use the `IllustrationStyle` struct to test a single illustration
            let illustration = OUDSThemeableView(theme: inverseTheme) {
                BorderTokenPage.IllustrationStyle(namedStyle: borderStyle)
                    .background(self.inverseTheme.colorBgPrimary.color(for: self.darkScheme))
            }

            // Encapsulate the element in a UIHostingController for snapshot testing
            let hostingVC = UIHostingController(rootView: illustration)

            // Capture the snapshot of the illustration with the correct theme and color scheme
            let snapshotName = "\(borderStyle.rawValue)"
            assertSnapshot(of: hostingVC, as: .image(traits: UITraitCollection(userInterfaceStyle: .dark)), named: snapshotName)
        }
    }
}

// swiftlint:enable required_deinit
