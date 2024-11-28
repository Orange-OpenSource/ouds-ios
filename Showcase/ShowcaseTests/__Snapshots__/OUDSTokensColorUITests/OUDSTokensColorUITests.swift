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

    // MARK: Properties

    private let inverseTheme = InverseTheme()
    private let orangeTheme = OrangeTheme()
    private let lightScheme: ColorScheme = .light
    private let lightInterfaceStyle: UIUserInterfaceStyle = .light
    private let darkScheme: ColorScheme = .dark
    private let darkInterfaceStyle: UIUserInterfaceStyle = .dark

    // MARK: - Orange Theme Light Mode Color Tests

    /// This function tests all color tokens in the `OrangeTheme` with both the `light` color schemes.
    /// It iterates through all sections of `NamedColor`, rendering each illustration in a `UIHostingController`,
    /// and captures a snapshot for each color. The snapshots are saved with names indicating the color, theme, and color scheme.
    @MainActor func testAllColorsOrangeThemeLight() {

        // Test all color sections individually for light mode
        testBackgroundColors(theme: self.orangeTheme, interfaceStyle: self.lightInterfaceStyle, colorScheme: self.lightScheme)
        testActionColors(theme: self.orangeTheme, interfaceStyle: self.lightInterfaceStyle, colorScheme: self.lightScheme)
        testAlwaysColors(theme: self.orangeTheme, interfaceStyle: self.lightInterfaceStyle, colorScheme: self.lightScheme)
        testContentColors(theme: self.orangeTheme, interfaceStyle: self.lightInterfaceStyle, colorScheme: self.lightScheme)
        testBorderColors(theme: self.orangeTheme, interfaceStyle: self.lightInterfaceStyle, colorScheme: self.lightScheme)
        testElevationColors(theme: self.orangeTheme, interfaceStyle: self.lightInterfaceStyle, colorScheme: self.lightScheme)
        testDecorativeColors(theme: self.orangeTheme, interfaceStyle: self.lightInterfaceStyle, colorScheme: self.lightScheme)
        testChartColors(theme: self.orangeTheme, interfaceStyle: self.lightInterfaceStyle, colorScheme: self.lightScheme)
    }

    // MARK: - Orange Theme Dark Mode Color Tests

    /// This function tests all color tokens in the `OrangeTheme` with both the `dark` color schemes.
    /// It iterates through all sections of `NamedColor`, rendering each illustration in a `UIHostingController`,
    /// and captures a snapshot for each color. The snapshots are saved with names indicating the color, theme, and color scheme.
    @MainActor func testAllColorsOrangeThemeDark() {

        // Test all color sections individually for dark mode
        testBackgroundColors(theme: self.orangeTheme, interfaceStyle: self.darkInterfaceStyle, colorScheme: self.darkScheme)
        testActionColors(theme: self.orangeTheme, interfaceStyle: self.darkInterfaceStyle, colorScheme: self.darkScheme)
        testAlwaysColors(theme: self.orangeTheme, interfaceStyle: self.darkInterfaceStyle, colorScheme: self.darkScheme)
        testContentColors(theme: self.orangeTheme, interfaceStyle: self.darkInterfaceStyle, colorScheme: self.darkScheme)
        testBorderColors(theme: self.orangeTheme, interfaceStyle: self.darkInterfaceStyle, colorScheme: self.darkScheme)
        testElevationColors(theme: self.orangeTheme, interfaceStyle: self.darkInterfaceStyle, colorScheme: self.darkScheme)
        testDecorativeColors(theme: self.orangeTheme, interfaceStyle: self.darkInterfaceStyle, colorScheme: self.darkScheme)
        testChartColors(theme: self.orangeTheme, interfaceStyle: self.darkInterfaceStyle, colorScheme: self.darkScheme)
    }

    // MARK: - Inverse Theme Light Mode Color Tests

    /// This function tests all color tokens in the `InverseTheme` with both the `light` color schemes.
    /// It iterates through all sections of `NamedColor`, rendering each illustration in a `UIHostingController`,
    /// and captures a snapshot for each color. The snapshots are saved with names indicating the color, theme, and color scheme.
    @MainActor func testAllColorsInverseThemeLight() {

        // Test all color sections individually for light mode
        testBackgroundColors(theme: self.inverseTheme, interfaceStyle: self.lightInterfaceStyle, colorScheme: self.lightScheme)
        testActionColors(theme: self.inverseTheme, interfaceStyle: self.lightInterfaceStyle, colorScheme: self.lightScheme)
        testAlwaysColors(theme: self.inverseTheme, interfaceStyle: self.lightInterfaceStyle, colorScheme: self.lightScheme)
        testContentColors(theme: self.inverseTheme, interfaceStyle: self.lightInterfaceStyle, colorScheme: self.lightScheme)
        testBorderColors(theme: self.inverseTheme, interfaceStyle: self.lightInterfaceStyle, colorScheme: self.lightScheme)
        testElevationColors(theme: self.inverseTheme, interfaceStyle: self.lightInterfaceStyle, colorScheme: self.lightScheme)
        testDecorativeColors(theme: self.inverseTheme, interfaceStyle: self.lightInterfaceStyle, colorScheme: self.lightScheme)
        testChartColors(theme: self.inverseTheme, interfaceStyle: self.lightInterfaceStyle, colorScheme: self.lightScheme)
    }

    // MARK: - Inverse Theme Dark Mode Color Tests

    /// This function tests all color tokens in the `InverseTheme` with both the `dark` color schemes.
    /// It iterates through all sections of `NamedColor`, rendering each illustration in a `UIHostingController`,
    /// and captures a snapshot for each color. The snapshots are saved with names indicating the color, theme, and color scheme.
    @MainActor func testAllColorsInverseThemeDark() {

        // Test all color sections individually for dark interfaceStyle
        testBackgroundColors(theme: self.inverseTheme, interfaceStyle: .dark, colorScheme: self.darkScheme)
        testActionColors(theme: self.inverseTheme, interfaceStyle: self.darkInterfaceStyle, colorScheme: self.darkScheme)
        testAlwaysColors(theme: self.inverseTheme, interfaceStyle: self.darkInterfaceStyle, colorScheme: self.darkScheme)
        testContentColors(theme: self.inverseTheme, interfaceStyle: self.darkInterfaceStyle, colorScheme: self.darkScheme)
        testBorderColors(theme: self.inverseTheme, interfaceStyle: self.darkInterfaceStyle, colorScheme: self.darkScheme)
        testElevationColors(theme: self.inverseTheme, interfaceStyle: self.darkInterfaceStyle, colorScheme: self.darkScheme)
        testDecorativeColors(theme: self.inverseTheme, interfaceStyle: self.darkInterfaceStyle, colorScheme: self.darkScheme)
        testChartColors(theme: self.inverseTheme, interfaceStyle: self.darkInterfaceStyle, colorScheme: self.darkScheme)
    }

    // MARK: - Helpers

    /// This function tests colors for the `Background` category of the given theme.
    /// It captures snapshots for each background color in the specified theme and interfaceStyle (light or dark).
    /// - Parameters:
    ///   - theme: The theme (OUDSTheme) from which to retrieve color tokens.
    ///   - interfaceStyle: The user interface style (light or dark) for which to test the colors.
    ///   - colorScheme: The color scheme (light or dark) to be used for testing
    @MainActor private func testBackgroundColors(theme: OUDSTheme, interfaceStyle: UIUserInterfaceStyle, colorScheme: ColorScheme) {
        // Iterate through all background color cases defined in NamedColor.Background
        for color in NamedColor.Background.allCases {
            // Retrieve the corresponding color token from the provided theme
            let token = color.token(from: theme)

            // Generate the illustration for the specified color token
            let illustration = OUDSThemeableView(theme: theme) {
                ColorTokenPage.Illustration(token: token, name: color.rawValue)
                    .background(theme.colorBgPrimary.color(for: colorScheme))
            }

            // Encapsulate the generated illustration in a UIHostingController for snapshot testing
            let hostingVC = UIHostingController(rootView: illustration)

            // Create a unique snapshot name based on the current interfaceStyle (light or dark) and the color's raw value
            let snapshotName = "\(theme.name)_\(color.rawValue)_\(interfaceStyle == .light ? "Light" : "Dark")"

            // Capture the snapshot of the illustration with the correct user interface style and save it with the snapshot name
            assertSnapshot(of: hostingVC, as: .image(traits: UITraitCollection(userInterfaceStyle: interfaceStyle)), named: snapshotName)
        }
    }

    /// This function tests colors for the `Action` category of the given theme.
    /// It captures snapshots for each background color in the specified theme and interfaceStyle (light or dark).
    /// - Parameters:
    ///   - theme: The theme (OUDSTheme) from which to retrieve color tokens.
    ///   - interfaceStyle: The user interface style (light or dark) for which to test the colors.
    ///   - colorScheme: The color scheme (light or dark) to be used for testing
    @MainActor private func testActionColors(theme: OUDSTheme, interfaceStyle: UIUserInterfaceStyle, colorScheme: ColorScheme) {
        // Iterate through all background color cases defined in NamedColor.Action
        for color in NamedColor.Action.allCases {
            // Retrieve the corresponding color token from the provided theme
            let token = color.token(from: theme)

            // Generate the illustration for the specified color token
            let illustration = OUDSThemeableView(theme: theme) {
                ColorTokenPage.Illustration(token: token, name: color.rawValue)
                    .background(theme.colorBgPrimary.color(for: colorScheme))
            }

            // Encapsulate the generated illustration in a UIHostingController for snapshot testing
            let hostingVC = UIHostingController(rootView: illustration)

            // Create a unique snapshot name based on the current interfaceStyle (light or dark) and the color's raw value
            let snapshotName = "\(theme.name)_\(color.rawValue)_\(interfaceStyle == .light ? "Light" : "Dark")"

            // Capture the snapshot of the illustration with the correct user interface style and save it with the snapshot name
            assertSnapshot(of: hostingVC, as: .image(traits: UITraitCollection(userInterfaceStyle: interfaceStyle)), named: snapshotName)
        }
    }

    /// This function tests colors for the `Always` category of the given theme.
    /// It captures snapshots for each background color in the specified theme and interfaceStyle (light or dark).
    /// - Parameters:
    ///   - theme: The theme (OUDSTheme) from which to retrieve color tokens.
    ///   - interfaceStyle: The user interface style (light or dark) for which to test the colors.
    ///   - colorScheme: The color scheme (light or dark) to be used for testing
    @MainActor private func testAlwaysColors(theme: OUDSTheme, interfaceStyle: UIUserInterfaceStyle, colorScheme: ColorScheme) {
        // Iterate through all background color cases defined in NamedColor.Always
        for color in NamedColor.Always.allCases {
            // Retrieve the corresponding color token from the provided theme
            let token = color.token(from: theme)

            // Generate the illustration for the specified color token
            let illustration = OUDSThemeableView(theme: theme) {
                ColorTokenPage.Illustration(token: token, name: color.rawValue)
                    .background(theme.colorBgPrimary.color(for: colorScheme))
            }

            // Encapsulate the generated illustration in a UIHostingController for snapshot testing
            let hostingVC = UIHostingController(rootView: illustration)

            // Create a unique snapshot name based on the current interfaceStyle (light or dark) and the color's raw value
            let snapshotName = "\(theme.name)_\(color.rawValue)_\(interfaceStyle == .light ? "Light" : "Dark")"

            // Capture the snapshot of the illustration with the correct user interface style and save it with the snapshot name
            assertSnapshot(of: hostingVC, as: .image(traits: UITraitCollection(userInterfaceStyle: interfaceStyle)), named: snapshotName)
        }
    }

    /// This function tests colors for the `Content` category of the given theme.
    /// It captures snapshots for each background color in the specified theme and interfaceStyle (light or dark).
    /// - Parameters:
    ///   - theme: The theme (OUDSTheme) from which to retrieve color tokens.
    ///   - interfaceStyle: The user interface style (light or dark) for which to test the colors.
    ///   - colorScheme: The color scheme (light or dark) to be used for testing
    @MainActor private func testContentColors(theme: OUDSTheme, interfaceStyle: UIUserInterfaceStyle, colorScheme: ColorScheme) {
        // Iterate through all background color cases defined in NamedColor.Content
        for color in NamedColor.Content.allCases {
            // Retrieve the corresponding color token from the provided theme
            let token = color.token(from: theme)

            // Generate the illustration for the specified color token
            let illustration = OUDSThemeableView(theme: theme) {
                ColorTokenPage.Illustration(token: token, name: color.rawValue)
                    .background(theme.colorBgPrimary.color(for: colorScheme))
            }

            // Encapsulate the generated illustration in a UIHostingController for snapshot testing
            let hostingVC = UIHostingController(rootView: illustration)

            // Create a unique snapshot name based on the current interfaceStyle (light or dark) and the color's raw value
            let snapshotName = "\(theme.name)_\(color.rawValue)_\(interfaceStyle == .light ? "Light" : "Dark")"

            // Capture the snapshot of the illustration with the correct user interface style and save it with the snapshot name
            assertSnapshot(of: hostingVC, as: .image(traits: UITraitCollection(userInterfaceStyle: interfaceStyle)), named: snapshotName)
        }
    }

    /// This function tests colors for the `Border` category of the given theme.
    /// It captures snapshots for each background color in the specified theme and interfaceStyle (light or dark).
    /// - Parameters:
    ///   - theme: The theme (OUDSTheme) from which to retrieve color tokens.
    ///   - interfaceStyle: The user interface style (light or dark) for which to test the colors.
    ///   - colorScheme: The color scheme (light or dark) to be used for testing
    @MainActor private func testBorderColors(theme: OUDSTheme, interfaceStyle: UIUserInterfaceStyle, colorScheme: ColorScheme) {
        // Iterate through all background color cases defined in NamedColor.Border
        for color in NamedColor.Border.allCases {
            // Retrieve the corresponding color token from the provided theme
            let token = color.token(from: theme)

            // Generate the illustration for the specified color token
            let illustration = OUDSThemeableView(theme: theme) {
                ColorTokenPage.Illustration(token: token, name: color.rawValue)
                    .background(theme.colorBgPrimary.color(for: colorScheme))
            }

            // Encapsulate the generated illustration in a UIHostingController for snapshot testing
            let hostingVC = UIHostingController(rootView: illustration)

            // Create a unique snapshot name based on the current interfaceStyle (light or dark) and the color's raw value
            let snapshotName = "\(theme.name)_\(color.rawValue)_\(interfaceStyle == .light ? "Light" : "Dark")"

            // Capture the snapshot of the illustration with the correct user interface style and save it with the snapshot name
            assertSnapshot(of: hostingVC, as: .image(traits: UITraitCollection(userInterfaceStyle: interfaceStyle)), named: snapshotName)
        }
    }

    /// This function tests colors for the `Elevation` category of the given theme.
    /// It captures snapshots for each background color in the specified theme and interfaceStyle (light or dark).
    /// - Parameters:
    ///   - theme: The theme (OUDSTheme) from which to retrieve color tokens.
    ///   - interfaceStyle: The user interface style (light or dark) for which to test the colors.
    ///   - colorScheme: The color scheme (light or dark) to be used for testing
    @MainActor private func testElevationColors(theme: OUDSTheme, interfaceStyle: UIUserInterfaceStyle, colorScheme: ColorScheme) {
        // Iterate through all background color cases defined in NamedColor.Elevation
        for color in NamedColor.Elevation.allCases {
            // Retrieve the corresponding color token from the provided theme
            let token = color.token(from: theme)

            // Generate the illustration for the specified color token
            let illustration = OUDSThemeableView(theme: theme) {
                ColorTokenPage.Illustration(token: token, name: color.rawValue)
                    .background(theme.colorBgPrimary.color(for: colorScheme))
            }

            // Encapsulate the generated illustration in a UIHostingController for snapshot testing
            let hostingVC = UIHostingController(rootView: illustration)

            // Create a unique snapshot name based on the current interfaceStyle (light or dark) and the color's raw value
            let snapshotName = "\(theme.name)_\(color.rawValue)_\(interfaceStyle == .light ? "Light" : "Dark")"

            // Capture the snapshot of the illustration with the correct user interface style and save it with the snapshot name
            assertSnapshot(of: hostingVC, as: .image(traits: UITraitCollection(userInterfaceStyle: interfaceStyle)), named: snapshotName)
        }
    }

    /// This function tests colors for the `Decorative` category of the given theme.
    /// It captures snapshots for each background color in the specified theme and interfaceStyle (light or dark).
    /// - Parameters:
    ///   - theme: The theme (OUDSTheme) from which to retrieve color tokens.
    ///   - interfaceStyle: The user interface style (light or dark) for which to test the colors.
    ///   - colorScheme: The color scheme (light or dark) to be used for testing
    @MainActor private func testDecorativeColors(theme: OUDSTheme, interfaceStyle: UIUserInterfaceStyle, colorScheme: ColorScheme) {
        // Iterate through all background color cases defined in NamedColor.Decorative
        for color in NamedColor.Decorative.allCases {
            // Retrieve the corresponding color token from the provided theme
            let token = color.token(from: theme)

            // Generate the illustration for the specified color token
            let illustration = OUDSThemeableView(theme: theme) {
                ColorTokenPage.Illustration(token: token, name: color.rawValue)
                    .background(theme.colorBgPrimary.color(for: colorScheme))
            }

            // Encapsulate the generated illustration in a UIHostingController for snapshot testing
            let hostingVC = UIHostingController(rootView: illustration)

            // Create a unique snapshot name based on the current interfaceStyle (light or dark) and the color's raw value
            let snapshotName = "\(theme.name)_\(color.rawValue)_\(interfaceStyle == .light ? "Light" : "Dark")"

            // Capture the snapshot of the illustration with the correct user interface style and save it with the snapshot name
            assertSnapshot(of: hostingVC, as: .image(traits: UITraitCollection(userInterfaceStyle: interfaceStyle)), named: snapshotName)
        }
    }

    /// This function tests colors for the `Chart` category of the given theme.
    /// It captures snapshots for each background color in the specified theme and interfaceStyle (light or dark).
    /// - Parameters:
    ///   - theme: The theme (OUDSTheme) from which to retrieve color tokens.
    ///   - interfaceStyle: The user interface style (light or dark) for which to test the colors.
    ///   - colorScheme: The color scheme (light or dark) to be used for testing
    @MainActor private func testChartColors(theme: OUDSTheme, interfaceStyle: UIUserInterfaceStyle, colorScheme: ColorScheme) {
        // Iterate through all background color cases defined in NamedColor.Chart
        for color in NamedColor.Chart.allCases {
            // Retrieve the corresponding color token from the provided theme
            let token = color.token(from: theme)

            // Generate the illustration for the specified color token
            let illustration = OUDSThemeableView(theme: theme) {
                ColorTokenPage.Illustration(token: token, name: color.rawValue)
                    .background(theme.colorBgPrimary.color(for: colorScheme))
            }

            // Encapsulate the generated illustration in a UIHostingController for snapshot testing
            let hostingVC = UIHostingController(rootView: illustration)

            // Create a unique snapshot name based on the current interfaceStyle (light or dark) and the color's raw value
            let snapshotName = "\(theme.name)_\(color.rawValue)_\(interfaceStyle == .light ? "Light" : "Dark")"

            // Capture the snapshot of the illustration with the correct user interface style and save it with the snapshot name
            assertSnapshot(of: hostingVC, as: .image(traits: UITraitCollection(userInterfaceStyle: interfaceStyle)), named: snapshotName)
        }
    }
}

// swiftlint:enable required_deinit
