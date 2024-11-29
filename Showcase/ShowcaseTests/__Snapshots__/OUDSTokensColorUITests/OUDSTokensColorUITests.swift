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

/// Tests the UI rendering of each **color token** using reference images
final class OUDSTokensColorUITests: XCTestCase {

    // MARK: - Orange Theme Light Mode Color Tests

    /// This function tests all color tokens in the `OrangeTheme` with both the `light` color schemes.
    /// It iterates through all sections of `NamedColor`, rendering each illustration in a `UIHostingController`,
    /// and captures a snapshot for each color. The snapshots are saved with names indicating the color, theme, and color scheme.
    @MainActor func testAllColorsOrangeThemeLight() {
        let theme = OrangeTheme()
        let interfaceStyle = UIUserInterfaceStyle.light

        // Test all color sections individually for light mode
        testBackgroundColors(theme: theme, interfaceStyle: interfaceStyle)
        testActionColors(theme: theme, interfaceStyle: interfaceStyle)
        testAlwaysColors(theme: theme, interfaceStyle: interfaceStyle)
        testContentColors(theme: theme, interfaceStyle: interfaceStyle)
        testBorderColors(theme: theme, interfaceStyle: interfaceStyle)
        testElevationColors(theme: theme, interfaceStyle: interfaceStyle)
        testDecorativeColors(theme: theme, interfaceStyle: interfaceStyle)
        testChartColors(theme: theme, interfaceStyle: interfaceStyle)
    }

    // MARK: - Orange Theme Dark Mode Color Tests

    /// This function tests all color tokens in the `OrangeTheme` with both the `dark` color schemes.
    /// It iterates through all sections of `NamedColor`, rendering each illustration in a `UIHostingController`,
    /// and captures a snapshot for each color. The snapshots are saved with names indicating the color, theme, and color scheme.
    @MainActor func testAllColorsOrangeThemeDark() {
        let theme = OrangeTheme()
        let interfaceStyle = UIUserInterfaceStyle.dark

        // Test all color sections individually for dark mode
        testBackgroundColors(theme: theme, interfaceStyle: interfaceStyle)
        testActionColors(theme: theme, interfaceStyle: interfaceStyle)
        testAlwaysColors(theme: theme, interfaceStyle: interfaceStyle)
        testContentColors(theme: theme, interfaceStyle: interfaceStyle)
        testBorderColors(theme: theme, interfaceStyle: interfaceStyle)
        testElevationColors(theme: theme, interfaceStyle: interfaceStyle)
        testDecorativeColors(theme: theme, interfaceStyle: interfaceStyle)
        testChartColors(theme: theme, interfaceStyle: interfaceStyle)
    }

    // MARK: - Inverse Theme Light Mode Color Tests

    /// This function tests all color tokens in the `InverseTheme` with both the `light` color schemes.
    /// It iterates through all sections of `NamedColor`, rendering each illustration in a `UIHostingController`,
    /// and captures a snapshot for each color. The snapshots are saved with names indicating the color, theme, and color scheme.
    @MainActor func testAllColorsInverseThemeLight() {
        let theme = InverseTheme()
        let interfaceStyle = UIUserInterfaceStyle.light

        // Test all color sections individually for light mode
        testBackgroundColors(theme: theme, interfaceStyle: interfaceStyle)
        testActionColors(theme: theme, interfaceStyle: interfaceStyle)
        testAlwaysColors(theme: theme, interfaceStyle: interfaceStyle)
        testContentColors(theme: theme, interfaceStyle: interfaceStyle)
        testBorderColors(theme: theme, interfaceStyle: interfaceStyle)
        testElevationColors(theme: theme, interfaceStyle: interfaceStyle)
        testDecorativeColors(theme: theme, interfaceStyle: interfaceStyle)
        testChartColors(theme: theme, interfaceStyle: interfaceStyle)
    }

    // MARK: - Inverse Theme Dark Mode Color Tests

    /// This function tests all color tokens in the `InverseTheme` with both the `dark` color schemes.
    /// It iterates through all sections of `NamedColor`, rendering each illustration in a `UIHostingController`,
    /// and captures a snapshot for each color. The snapshots are saved with names indicating the color, theme, and color scheme.
    @MainActor func testAllColorsInverseThemeDark() {
        let theme = InverseTheme()
        let interfaceStyle = UIUserInterfaceStyle.dark

        // Test all color sections individually for dark interfaceStyle
        testBackgroundColors(theme: theme, interfaceStyle: interfaceStyle)
        testActionColors(theme: theme, interfaceStyle: interfaceStyle)
        testAlwaysColors(theme: theme, interfaceStyle: interfaceStyle)
        testContentColors(theme: theme, interfaceStyle: interfaceStyle)
        testBorderColors(theme: theme, interfaceStyle: interfaceStyle)
        testElevationColors(theme: theme, interfaceStyle: interfaceStyle)
        testDecorativeColors(theme: theme, interfaceStyle: interfaceStyle)
        testChartColors(theme: theme, interfaceStyle: interfaceStyle)
    }

    // MARK: - Helpers

    /// This function tests colors for the `Background` category of the given theme.
    /// It captures snapshots for each background color in the specified theme and interfaceStyle (light or dark).
    /// - Parameters:
    ///   - theme: The theme (OUDSTheme) from which to retrieve color tokens.
    ///   - interfaceStyle: The user interface style (light or dark) for which to test the colors.
    @MainActor private func testBackgroundColors(theme: OUDSTheme, interfaceStyle: UIUserInterfaceStyle) {
        // Iterate through all background color cases defined in NamedColor.Background
        for color in NamedColor.Background.allCases {
            // Retrieve the corresponding color token from the provided theme
            let token = color.token(from: theme)

            // Generate the illustration for the specified color token
            let illustration = OUDSThemeableView(theme: theme) {
                ColorTokenPage.Illustration(token: token, name: color.rawValue)
                    .background(theme.colorBgPrimary.color(for: interfaceStyle == .light ? .light : .dark))
            }

            // Encapsulate the generated illustration in a UIHostingController for snapshot testing
            let hostingVC = UIHostingController(rootView: illustration)

            // Create a unique snapshot name based on the current interfaceStyle (light or dark) and the color's raw value
            let testName = "test_\(theme.name)Theme_\(interfaceStyle == .light ? "Light" : "Dark")"
            let name = color.rawValue

            // Capture the snapshot of the illustration with the correct user interface style and save it with the snapshot name
            assertSnapshot(of: hostingVC, as: .image(traits: UITraitCollection(userInterfaceStyle: interfaceStyle)), named: name, testName: testName)
        }
    }

    /// This function tests colors for the `Action` category of the given theme.
    /// It captures snapshots for each background color in the specified theme and interfaceStyle (light or dark).
    /// - Parameters:
    ///   - theme: The theme (OUDSTheme) from which to retrieve color tokens.
    ///   - interfaceStyle: The user interface style (light or dark) for which to test the colors.
    @MainActor private func testActionColors(theme: OUDSTheme, interfaceStyle: UIUserInterfaceStyle) {
        // Iterate through all background color cases defined in NamedColor.Action
        for color in NamedColor.Action.allCases {
            // Retrieve the corresponding color token from the provided theme
            let token = color.token(from: theme)

            // Generate the illustration for the specified color token
            let illustration = OUDSThemeableView(theme: theme) {
                ColorTokenPage.Illustration(token: token, name: color.rawValue)
                    .background(theme.colorBgPrimary.color(for: interfaceStyle == .light ? .light : .dark))
            }

            // Encapsulate the generated illustration in a UIHostingController for snapshot testing
            let hostingVC = UIHostingController(rootView: illustration)

            // Create a unique snapshot name based on the current interfaceStyle (light or dark) and the color's raw value
            let testName = "test_\(theme.name)Theme_\(interfaceStyle == .light ? "Light" : "Dark")"
            let name = color.rawValue

            // Capture the snapshot of the illustration with the correct user interface style and save it with the snapshot name
            assertSnapshot(of: hostingVC, as: .image(traits: UITraitCollection(userInterfaceStyle: interfaceStyle)), named: name, testName: testName)
        }
    }

    /// This function tests colors for the `Always` category of the given theme.
    /// It captures snapshots for each background color in the specified theme and interfaceStyle (light or dark).
    /// - Parameters:
    ///   - theme: The theme (OUDSTheme) from which to retrieve color tokens.
    ///   - interfaceStyle: The user interface style (light or dark) for which to test the colors.
    @MainActor private func testAlwaysColors(theme: OUDSTheme, interfaceStyle: UIUserInterfaceStyle) {
        // Iterate through all background color cases defined in NamedColor.Always
        for color in NamedColor.Always.allCases {
            // Retrieve the corresponding color token from the provided theme
            let token = color.token(from: theme)

            // Generate the illustration for the specified color token
            let illustration = OUDSThemeableView(theme: theme) {
                ColorTokenPage.Illustration(token: token, name: color.rawValue)
                    .background(theme.colorBgPrimary.color(for: interfaceStyle == .light ? .light : .dark))
            }

            // Encapsulate the generated illustration in a UIHostingController for snapshot testing
            let hostingVC = UIHostingController(rootView: illustration)

            // Create a unique snapshot name based on the current interfaceStyle (light or dark) and the color's raw value
            let testName = "test_\(theme.name)Theme_\(interfaceStyle == .light ? "Light" : "Dark")"
            let name = color.rawValue

            // Capture the snapshot of the illustration with the correct user interface style and save it with the snapshot name
            assertSnapshot(of: hostingVC, as: .image(traits: UITraitCollection(userInterfaceStyle: interfaceStyle)), named: name, testName: testName)
        }
    }

    /// This function tests colors for the `Content` category of the given theme.
    /// It captures snapshots for each background color in the specified theme and interfaceStyle (light or dark).
    /// - Parameters:
    ///   - theme: The theme (OUDSTheme) from which to retrieve color tokens.
    ///   - interfaceStyle: The user interface style (light or dark) for which to test the colors.
    @MainActor private func testContentColors(theme: OUDSTheme, interfaceStyle: UIUserInterfaceStyle) {
        // Iterate through all background color cases defined in NamedColor.Content
        for color in NamedColor.Content.allCases {
            // Retrieve the corresponding color token from the provided theme
            let token = color.token(from: theme)

            // Generate the illustration for the specified color token
            let illustration = OUDSThemeableView(theme: theme) {
                ColorTokenPage.Illustration(token: token, name: color.rawValue)
                    .background(theme.colorBgPrimary.color(for: interfaceStyle == .light ? .light : .dark))
            }

            // Encapsulate the generated illustration in a UIHostingController for snapshot testing
            let hostingVC = UIHostingController(rootView: illustration)

            // Create a unique snapshot name based on the current interfaceStyle (light or dark) and the color's raw value
            let testName = "test_\(theme.name)Theme_\(interfaceStyle == .light ? "Light" : "Dark")"
            let name = color.rawValue

            // Capture the snapshot of the illustration with the correct user interface style and save it with the snapshot name
            assertSnapshot(of: hostingVC, as: .image(traits: UITraitCollection(userInterfaceStyle: interfaceStyle)), named: name, testName: testName)
        }
    }

    /// This function tests colors for the `Border` category of the given theme.
    /// It captures snapshots for each background color in the specified theme and interfaceStyle (light or dark).
    /// - Parameters:
    ///   - theme: The theme (OUDSTheme) from which to retrieve color tokens.
    ///   - interfaceStyle: The user interface style (light or dark) for which to test the colors.
    @MainActor private func testBorderColors(theme: OUDSTheme, interfaceStyle: UIUserInterfaceStyle) {
        // Iterate through all background color cases defined in NamedColor.Border
        for color in NamedColor.Border.allCases {
            // Retrieve the corresponding color token from the provided theme
            let token = color.token(from: theme)

            // Generate the illustration for the specified color token
            let illustration = OUDSThemeableView(theme: theme) {
                ColorTokenPage.Illustration(token: token, name: color.rawValue)
                    .background(theme.colorBgPrimary.color(for: interfaceStyle == .light ? .light : .dark))
            }

            // Encapsulate the generated illustration in a UIHostingController for snapshot testing
            let hostingVC = UIHostingController(rootView: illustration)

            // Create a unique snapshot name based on the current interfaceStyle (light or dark) and the color's raw value
            let testName = "test_\(theme.name)Theme_\(interfaceStyle == .light ? "Light" : "Dark")"
            let name = color.rawValue

            // Capture the snapshot of the illustration with the correct user interface style and save it with the snapshot name
            assertSnapshot(of: hostingVC, as: .image(traits: UITraitCollection(userInterfaceStyle: interfaceStyle)), named: name, testName: testName)
        }
    }

    /// This function tests colors for the `Elevation` category of the given theme.
    /// It captures snapshots for each background color in the specified theme and interfaceStyle (light or dark).
    /// - Parameters:
    ///   - theme: The theme (OUDSTheme) from which to retrieve color tokens.
    ///   - interfaceStyle: The user interface style (light or dark) for which to test the colors.
    @MainActor private func testElevationColors(theme: OUDSTheme, interfaceStyle: UIUserInterfaceStyle) {
        // Iterate through all background color cases defined in NamedColor.Elevation
        for color in NamedColor.Elevation.allCases {
            // Retrieve the corresponding color token from the provided theme
            let token = color.token(from: theme)

            // Generate the illustration for the specified color token
            let illustration = OUDSThemeableView(theme: theme) {
                ColorTokenPage.Illustration(token: token, name: color.rawValue)
                    .background(theme.colorBgPrimary.color(for: interfaceStyle == .light ? .light : .dark))
            }

            // Encapsulate the generated illustration in a UIHostingController for snapshot testing
            let hostingVC = UIHostingController(rootView: illustration)

            // Create a unique snapshot name based on the current interfaceStyle (light or dark) and the color's raw value
            let testName = "test_\(theme.name)Theme_\(interfaceStyle == .light ? "Light" : "Dark")"
            let name = color.rawValue

            // Capture the snapshot of the illustration with the correct user interface style and save it with the snapshot name
            assertSnapshot(of: hostingVC, as: .image(traits: UITraitCollection(userInterfaceStyle: interfaceStyle)), named: name, testName: testName)
        }
    }

    /// This function tests colors for the `Decorative` category of the given theme.
    /// It captures snapshots for each background color in the specified theme and interfaceStyle (light or dark).
    /// - Parameters:
    ///   - theme: The theme (OUDSTheme) from which to retrieve color tokens.
    ///   - interfaceStyle: The user interface style (light or dark) for which to test the colors.
    @MainActor private func testDecorativeColors(theme: OUDSTheme, interfaceStyle: UIUserInterfaceStyle) {
        // Iterate through all background color cases defined in NamedColor.Decorative
        for color in NamedColor.Decorative.allCases {
            // Retrieve the corresponding color token from the provided theme
            let token = color.token(from: theme)

            // Generate the illustration for the specified color token
            let illustration = OUDSThemeableView(theme: theme) {
                ColorTokenPage.Illustration(token: token, name: color.rawValue)
                    .background(theme.colorBgPrimary.color(for: interfaceStyle == .light ? .light : .dark))
            }

            // Encapsulate the generated illustration in a UIHostingController for snapshot testing
            let hostingVC = UIHostingController(rootView: illustration)

            // Create a unique snapshot name based on the current interfaceStyle (light or dark) and the color's raw value
            let testName = "test_\(theme.name)Theme_\(interfaceStyle == .light ? "Light" : "Dark")"
            let name = color.rawValue

            // Capture the snapshot of the illustration with the correct user interface style and save it with the snapshot name
            assertSnapshot(of: hostingVC, as: .image(traits: UITraitCollection(userInterfaceStyle: interfaceStyle)), named: name, testName: testName)
        }
    }

    /// This function tests colors for the `Chart` category of the given theme.
    /// It captures snapshots for each background color in the specified theme and interfaceStyle (light or dark).
    /// - Parameters:
    ///   - theme: The theme (OUDSTheme) from which to retrieve color tokens.
    ///   - interfaceStyle: The user interface style (light or dark) for which to test the colors.
    @MainActor private func testChartColors(theme: OUDSTheme, interfaceStyle: UIUserInterfaceStyle) {
        // Iterate through all background color cases defined in NamedColor.Chart
        for color in NamedColor.Chart.allCases {
            // Retrieve the corresponding color token from the provided theme
            let token = color.token(from: theme)

            // Generate the illustration for the specified color token
            let illustration = OUDSThemeableView(theme: theme) {
                ColorTokenPage.Illustration(token: token, name: color.rawValue)
                    .background(theme.colorBgPrimary.color(for: interfaceStyle == .light ? .light : .dark))
            }

            // Encapsulate the generated illustration in a UIHostingController for snapshot testing
            let hostingVC = UIHostingController(rootView: illustration)

            // Create a unique snapshot name based on the current interfaceStyle (light or dark) and the color's raw value
            let testName = "test_\(theme.name)Theme_\(interfaceStyle == .light ? "Light" : "Dark")"
            let name = color.rawValue

            // Capture the snapshot of the illustration with the correct user interface style and save it with the snapshot name
            assertSnapshot(of: hostingVC, as: .image(traits: UITraitCollection(userInterfaceStyle: interfaceStyle)), named: name, testName: testName)
        }
    }
}

// swiftlint:enable required_deinit
