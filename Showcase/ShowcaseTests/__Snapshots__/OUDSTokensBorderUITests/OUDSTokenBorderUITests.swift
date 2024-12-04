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

/// Tests the UI rendering of each **border token** using reference images
final class OUDSTokensBorderUITests: XCTestCase {

    /// This function tests all border tokens in the `OrangeTheme` with the `light` color schemes.
    /// It iterates through all `NamedBorderWidth`, `NamedBorderRafius`, and`NamedBorderStyle` cases, rendering each illustration in a `UIHostingController`
    /// and captures a snapshot. Each snapshot is saved with a name that indicates the spacing type, theme, and color scheme.
    @MainActor func testAllBorderOrangeThemeLight() {
        let theme = OrangeTheme()
        let interfaceStyle = UIUserInterfaceStyle.light
        testBorderWidth(for: theme, in: interfaceStyle)
        testBorderRadius(for: theme, in: interfaceStyle)
        testBorderStyle(for: theme, in: interfaceStyle)
    }

    /// This function tests all border tokens in the `OrangeTheme` with  the `dark` color schemes.
    /// It iterates through all `NamedSize` cases, rendering each illustration in a `UIHostingController`
    /// and captures a snapshot. Each snapshot is saved with a name that indicates the spacing type, theme, and color scheme.
    @MainActor func testAllBorderOrangeThemeDark() {
        let theme = OrangeTheme()
        let interfaceStyle = UIUserInterfaceStyle.dark
        testBorderWidth(for: theme, in: interfaceStyle)
        testBorderRadius(for: theme, in: interfaceStyle)
        testBorderStyle(for: theme, in: interfaceStyle)
    }

    /// This function tests all border tokens in the `InverseTheme` with the `light` color schemes.
    /// It iterates through all `NamedSize` cases, rendering each illustration in a `UIHostingController`
    /// and captures a snapshot. Each snapshot is saved with a name that indicates the spacing type, theme, and color scheme.
    @MainActor func testAllBorderInverseThemeLight() {
        let theme = InverseTheme()
        let interfaceStyle = UIUserInterfaceStyle.light
        testBorderWidth(for: theme, in: interfaceStyle)
        testBorderRadius(for: theme, in: interfaceStyle)
        testBorderStyle(for: theme, in: interfaceStyle)
    }

    /// This function tests all border tokens in the `InverseTheme` with the `dark` color schemes.
    /// It iterates through all `NamedSize` cases, rendering each illustration in a `UIHostingController`
    /// and captures a snapshot. Each snapshot is saved with a name that indicates the spacing type, theme, and color scheme.
    @MainActor func testAllBorderInverseThemeDark() {
        let theme = InverseTheme()
        let interfaceStyle = UIUserInterfaceStyle.dark
        testBorderWidth(for: theme, in: interfaceStyle)
        testBorderRadius(for: theme, in: interfaceStyle)
        testBorderStyle(for: theme, in: interfaceStyle)
    }

    // MARK: Private test functions for all properties of border token

    /// Tests all border width properties by capturing their snapshots.
    /// - Parameters:
    ///   - theme: Theme used for rendering tokens (e.g., OrangeTheme or InverseTheme).
    ///   - interfaceStyle: The user interface style (light or dark) for which to test the colors.
    @MainActor private func testBorderWidth(for theme: OUDSTheme, in interfaceStyle: UIUserInterfaceStyle) {

        // Iterate through all named tokens
        for namedToken in NamedBorderWidth.allCases {
            // Use the `IllustrationWidth` struct to test a single illustration
            let illustration = OUDSThemeableView(theme: theme) {
                BorderTokenPage.IllustrationWidth(namedWidth: namedToken)
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

    /// Tests all border radius properties by capturing their snapshots.
    /// - Parameters:
    ///   - theme: Theme used for rendering tokens (e.g., OrangeTheme or InverseTheme).
    ///   - interfaceStyle: The user interface style (light or dark) for which to test the colors.
    @MainActor private func testBorderRadius(for theme: OUDSTheme, in interfaceStyle: UIUserInterfaceStyle) {

        // Iterate through all named tokens
        for namedToken in NamedBorderRadius.allCases {
            // Use the `IllustrationWidth` struct to test a single illustration
            let illustration = OUDSThemeableView(theme: theme) {
                BorderTokenPage.IllustrationRadius(namedRadius: namedToken)
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

    /// Tests all border style properties by capturing their snapshots.
    /// - Parameters:
    ///   - theme: Theme used for rendering tokens (e.g., OrangeTheme or InverseTheme).
    ///   - interfaceStyle: The user interface style (light or dark) for which to test the colors.
    @MainActor private func testBorderStyle(for theme: OUDSTheme, in interfaceStyle: UIUserInterfaceStyle) {

        // Iterate through all named tokens
        for namedToken in NamedBorderStyle.allCases {
            // Use the `IllustrationWidth` struct to test a single illustration
            let illustration = OUDSThemeableView(theme: theme) {
                BorderTokenPage.IllustrationStyle(namedStyle: namedToken)
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
