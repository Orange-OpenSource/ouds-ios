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

/// To ensure the TokensColors are tested for UI compatibility with the reference image recorded

final class OUDSTokensColorUITests: XCTestCase {

    // MARK: - Orange Theme Light Mode Color Tests

    /// This function tests all elevation tokens in the `OrangeTheme` with both the `light` color schemes.
    /// It iterates through all sections of `NamedColor`, rendering each illustration in a `UIHostingController`,
    /// and captures a snapshot for each color. The snapshots are saved with names indicating the color, theme, and color scheme.
    @MainActor func testAllColorsOrangeThemeLight() {
        /// Create an instance of the page with a forced OrangeTheme for light mode
        let colorPage = ColorTokenPage(forceTo: OrangeTheme(), colorScheme: .light)

        /// Test all color sections individually for light mode
        testBackgroundColors(using: colorPage, theme: OrangeTheme(), interfaceStyle: .light, colorScheme: .light)
        testActionColors(using: colorPage, theme: OrangeTheme(), interfaceStyle: .light, colorScheme: .light)
        testAlwaysColors(using: colorPage, theme: OrangeTheme(), interfaceStyle: .light, colorScheme: .light)
        testContentColors(using: colorPage, theme: OrangeTheme(), interfaceStyle: .light, colorScheme: .light)
        testContentOnBgColors(using: colorPage, theme: OrangeTheme(), interfaceStyle: .light, colorScheme: .light)
        testBorderColors(using: colorPage, theme: OrangeTheme(), interfaceStyle: .light, colorScheme: .light)
        testElevationColors(using: colorPage, theme: OrangeTheme(), interfaceStyle: .light, colorScheme: .light)
        testDecorativeColors(using: colorPage, theme: OrangeTheme(), interfaceStyle: .light, colorScheme: .light)
        testChartColors(using: colorPage, theme: OrangeTheme(), interfaceStyle: .light, colorScheme: .light)
    }

    // MARK: - Orange Theme Dark Mode Color Tests

    /// This function tests all elevation tokens in the `OrangeTheme` with both the `dark` color schemes.
    /// It iterates through all sections of `NamedColor`, rendering each illustration in a `UIHostingController`,
    /// and captures a snapshot for each color. The snapshots are saved with names indicating the color, theme, and color scheme.
    @MainActor func testAllColorsOrangeThemeDark() {
        /// Create an instance of the page with a forced OrangeTheme for dark mode
        let colorPage = ColorTokenPage(forceTo: OrangeTheme(), colorScheme: .dark)

        /// Test all color sections individually for dark mode
        testBackgroundColors(using: colorPage, theme: OrangeTheme(), interfaceStyle: .dark, colorScheme: .dark)
        testActionColors(using: colorPage, theme: OrangeTheme(), interfaceStyle: .dark, colorScheme: .dark)
        testAlwaysColors(using: colorPage, theme: OrangeTheme(), interfaceStyle: .dark, colorScheme: .dark)
        testContentColors(using: colorPage, theme: OrangeTheme(), interfaceStyle: .dark, colorScheme: .dark)
        testContentOnBgColors(using: colorPage, theme: OrangeTheme(), interfaceStyle: .dark, colorScheme: .dark)
        testBorderColors(using: colorPage, theme: OrangeTheme(), interfaceStyle: .dark, colorScheme: .dark)
        testElevationColors(using: colorPage, theme: OrangeTheme(), interfaceStyle: .dark, colorScheme: .dark)
        testDecorativeColors(using: colorPage, theme: OrangeTheme(), interfaceStyle: .dark, colorScheme: .dark)
        testChartColors(using: colorPage, theme: OrangeTheme(), interfaceStyle: .dark, colorScheme: .dark)
    }

    // MARK: - Inverse Theme Light Mode Color Tests

    /// This function tests all elevation tokens in the `InverseTheme` with both the `light` color schemes.
    /// It iterates through all sections of `NamedColor`, rendering each illustration in a `UIHostingController`,
    /// and captures a snapshot for each color. The snapshots are saved with names indicating the color, theme, and color scheme.
    @MainActor func testAllColorsInverseThemeLight() {
        /// Create an instance of the page with a forced InverseTheme for light mode
        let colorPage = ColorTokenPage(forceTo: InverseTheme(), colorScheme: .light)

        /// Test all color sections individually for light mode
        testBackgroundColors(using: colorPage, theme: InverseTheme(), interfaceStyle: .light, colorScheme: .light)
        testActionColors(using: colorPage, theme: InverseTheme(), interfaceStyle: .light, colorScheme: .light)
        testAlwaysColors(using: colorPage, theme: InverseTheme(), interfaceStyle: .light, colorScheme: .light)
        testContentColors(using: colorPage, theme: InverseTheme(), interfaceStyle: .light, colorScheme: .light)
        testContentOnBgColors(using: colorPage, theme: InverseTheme(), interfaceStyle: .light, colorScheme: .light)
        testBorderColors(using: colorPage, theme: InverseTheme(), interfaceStyle: .light, colorScheme: .light)
        testElevationColors(using: colorPage, theme: InverseTheme(), interfaceStyle: .light, colorScheme: .light)
        testDecorativeColors(using: colorPage, theme: InverseTheme(), interfaceStyle: .light, colorScheme: .light)
        testChartColors(using: colorPage, theme: InverseTheme(), interfaceStyle: .light, colorScheme: .light)
    }

    // MARK: - Inverse Theme Dark Mode Color Tests

    /// This function tests all elevation tokens in the `InverseTheme` with both the `dark` color schemes.
    /// It iterates through all sections of `NamedColor`, rendering each illustration in a `UIHostingController`,
    /// and captures a snapshot for each color. The snapshots are saved with names indicating the color, theme, and color scheme.
    @MainActor func testAllColorsInverseThemeDark() {
        /// Create an instance of the page with a forced InverseTheme for dark mode
        let colorPage = ColorTokenPage(forceTo: InverseTheme(), colorScheme: .dark)

        /// Test all color sections individually for dark interfaceStyle
        testBackgroundColors(using: colorPage, theme: InverseTheme(), interfaceStyle: .dark, colorScheme: .dark)
        testActionColors(using: colorPage, theme: InverseTheme(), interfaceStyle: .dark, colorScheme: .dark)
        testAlwaysColors(using: colorPage, theme: InverseTheme(), interfaceStyle: .dark, colorScheme: .dark)
        testContentColors(using: colorPage, theme: InverseTheme(), interfaceStyle: .dark, colorScheme: .dark)
        testContentOnBgColors(using: colorPage, theme: InverseTheme(), interfaceStyle: .dark, colorScheme: .dark)
        testBorderColors(using: colorPage, theme: InverseTheme(), interfaceStyle: .dark, colorScheme: .dark)
        testElevationColors(using: colorPage, theme: InverseTheme(), interfaceStyle: .dark, colorScheme: .dark)
        testDecorativeColors(using: colorPage, theme: InverseTheme(), interfaceStyle: .dark, colorScheme: .dark)
        testChartColors(using: colorPage, theme: InverseTheme(), interfaceStyle: .dark, colorScheme: .dark)
    }

    /// This function tests colors for the `Background` section of the OrangeTheme.
    /// It captures snapshots for each background color in the specified theme and interfaceStyle (light or dark).
    /// - Parameters:
    ///   - colorPage: The ColorTokenPage instance used to generate illustrations for the colors.
    ///   - theme: The theme (OUDSTheme) from which to retrieve color tokens.
    ///   - interfaceStyle: The user interface style (light or dark) for which to test the colors.
    ///   - colorScheme: The color scheme (light or dark) to be used for testing
    @MainActor private func testBackgroundColors(using colorPage: ColorTokenPage, theme: OUDSTheme, interfaceStyle: UIUserInterfaceStyle, colorScheme: ColorScheme) {
        /// Iterate through all background color cases defined in NamedColor.Background
        for color in NamedColor.Background.allCases {
            /// Retrieve the corresponding color token from the provided theme
            let token = color.token(from: theme)

            /// Generate the illustration for the specified color token using the colorPage instance
            let illustration = colorPage.illustration(for: token, name: color.rawValue)
                .background(theme.colorBgPrimary.color(for: colorScheme))

            /// Encapsulate the generated illustration in a UIHostingController for snapshot testing
            let hostingVC = UIHostingController(rootView: illustration)

            /// Create a unique snapshot name based on the current interfaceStyle (light or dark) and the color's raw value
            let snapshotName = "\(theme.name)_\(color.rawValue)_\(interfaceStyle == .light ? "Light" : "Dark")"

            /// Capture the snapshot of the illustration with the correct user interface style and save it with the snapshot name
            assertSnapshot(of: hostingVC, as: .image(traits: UITraitCollection(userInterfaceStyle: interfaceStyle)), named: snapshotName)
        }
    }

    /// This function tests colors for the `Action` section of the OrangeTheme.
    /// It captures snapshots for each background color in the specified theme and interfaceStyle (light or dark).
    /// - Parameters:
    ///   - colorPage: The ColorTokenPage instance used to generate illustrations for the colors.
    ///   - theme: The theme (OUDSTheme) from which to retrieve color tokens.
    ///   - interfaceStyle: The user interface style (light or dark) for which to test the colors.
    ///   - colorScheme: The color scheme (light or dark) to be used for testing
    @MainActor private func testActionColors(using colorPage: ColorTokenPage, theme: OUDSTheme, interfaceStyle: UIUserInterfaceStyle, colorScheme: ColorScheme) {
        /// Iterate through all background color cases defined in NamedColor.Action
        for color in NamedColor.Action.allCases {
            /// Retrieve the corresponding color token from the provided theme
            let token = color.token(from: theme)

            /// Generate the illustration for the specified color token using the colorPage instance
            let illustration = colorPage.illustration(for: token, name: color.rawValue)
                .background(theme.colorBgPrimary.color(for: colorScheme))

            /// Encapsulate the generated illustration in a UIHostingController for snapshot testing
            let hostingVC = UIHostingController(rootView: illustration)

            /// Create a unique snapshot name based on the current interfaceStyle (light or dark) and the color's raw value
            let snapshotName = "\(theme.name)_\(color.rawValue)_\(interfaceStyle == .light ? "Light" : "Dark")"

            /// Capture the snapshot of the illustration with the correct user interface style and save it with the snapshot name
            assertSnapshot(of: hostingVC, as: .image(traits: UITraitCollection(userInterfaceStyle: interfaceStyle)), named: snapshotName)
        }
    }

    /// This function tests colors for the `Always` section of the OrangeTheme.
    /// It captures snapshots for each background color in the specified theme and interfaceStyle (light or dark).
    /// - Parameters:
    ///   - colorPage: The ColorTokenPage instance used to generate illustrations for the colors.
    ///   - theme: The theme (OUDSTheme) from which to retrieve color tokens.
    ///   - interfaceStyle: The user interface style (light or dark) for which to test the colors.
    ///   - colorScheme: The color scheme (light or dark) to be used for testing
    @MainActor private func testAlwaysColors(using colorPage: ColorTokenPage, theme: OUDSTheme, interfaceStyle: UIUserInterfaceStyle, colorScheme: ColorScheme) {
        /// Iterate through all background color cases defined in NamedColor.Always
        for color in NamedColor.Always.allCases {
            /// Retrieve the corresponding color token from the provided theme
            let token = color.token(from: theme)

            /// Generate the illustration for the specified color token using the colorPage instance
            let illustration = colorPage.illustration(for: token, name: color.rawValue)
                .background(theme.colorBgPrimary.color(for: colorScheme))

            /// Encapsulate the generated illustration in a UIHostingController for snapshot testing
            let hostingVC = UIHostingController(rootView: illustration)

            /// Create a unique snapshot name based on the current interfaceStyle (light or dark) and the color's raw value
            let snapshotName = "\(theme.name)_\(color.rawValue)_\(interfaceStyle == .light ? "Light" : "Dark")"

            /// Capture the snapshot of the illustration with the correct user interface style and save it with the snapshot name
            assertSnapshot(of: hostingVC, as: .image(traits: UITraitCollection(userInterfaceStyle: interfaceStyle)), named: snapshotName)
        }
    }

    /// This function tests colors for the `Content` section of the OrangeTheme.
    /// It captures snapshots for each background color in the specified theme and interfaceStyle (light or dark).
    /// - Parameters:
    ///   - colorPage: The ColorTokenPage instance used to generate illustrations for the colors.
    ///   - theme: The theme (OUDSTheme) from which to retrieve color tokens.
    ///   - interfaceStyle: The user interface style (light or dark) for which to test the colors.
    ///   - colorScheme: The color scheme (light or dark) to be used for testing
    @MainActor private func testContentColors(using colorPage: ColorTokenPage, theme: OUDSTheme, interfaceStyle: UIUserInterfaceStyle, colorScheme: ColorScheme) {
        /// Iterate through all background color cases defined in NamedColor.Content
        for color in NamedColor.Content.allCases {
            /// Retrieve the corresponding color token from the provided theme
            let token = color.token(from: theme)

            /// Generate the illustration for the specified color token using the colorPage instance
            let illustration = colorPage.illustration(for: token, name: color.rawValue)
                .background(theme.colorBgPrimary.color(for: colorScheme))

            /// Encapsulate the generated illustration in a UIHostingController for snapshot testing
            let hostingVC = UIHostingController(rootView: illustration)

            /// Create a unique snapshot name based on the current interfaceStyle (light or dark) and the color's raw value
            let snapshotName = "\(theme.name)_\(color.rawValue)_\(interfaceStyle == .light ? "Light" : "Dark")"

            /// Capture the snapshot of the illustration with the correct user interface style and save it with the snapshot name
            assertSnapshot(of: hostingVC, as: .image(traits: UITraitCollection(userInterfaceStyle: interfaceStyle)), named: snapshotName)
        }
    }

    /// This function tests colors for the `ContentOnBg` section of the OrangeTheme.
    /// It captures snapshots for each background color in the specified theme and interfaceStyle (light or dark).
    /// - Parameters:
    ///   - colorPage: The ColorTokenPage instance used to generate illustrations for the colors.
    ///   - theme: The theme (OUDSTheme) from which to retrieve color tokens.
    ///   - interfaceStyle: The user interface style (light or dark) for which to test the colors.
    ///   - colorScheme: The color scheme (light or dark) to be used for testing
    @MainActor private func testContentOnBgColors(using colorPage: ColorTokenPage, theme: OUDSTheme, interfaceStyle: UIUserInterfaceStyle, colorScheme: ColorScheme) {
        /// Iterate through all background color cases defined in NamedColor.ContentOnBg
        for color in NamedColor.ContentOnBg.allCases {
            /// Retrieve the corresponding color token from the provided theme
            let token = color.token(from: theme)

            /// Generate the illustration for the specified color token using the colorPage instance
            let illustration = colorPage.illustration(for: token, name: color.rawValue)
                .background(theme.colorBgPrimary.color(for: colorScheme))

            /// Encapsulate the generated illustration in a UIHostingController for snapshot testing
            let hostingVC = UIHostingController(rootView: illustration)

            /// Create a unique snapshot name based on the current interfaceStyle (light or dark) and the color's raw value
            let snapshotName = "\(theme.name)_\(color.rawValue)_\(interfaceStyle == .light ? "Light" : "Dark")"

            /// Capture the snapshot of the illustration with the correct user interface style and save it with the snapshot name
            assertSnapshot(of: hostingVC, as: .image(traits: UITraitCollection(userInterfaceStyle: interfaceStyle)), named: snapshotName)
        }
    }

    /// This function tests colors for the `Border` section of the OrangeTheme.
    /// It captures snapshots for each background color in the specified theme and interfaceStyle (light or dark).
    /// - Parameters:
    ///   - colorPage: The ColorTokenPage instance used to generate illustrations for the colors.
    ///   - theme: The theme (OUDSTheme) from which to retrieve color tokens.
    ///   - interfaceStyle: The user interface style (light or dark) for which to test the colors.
    ///   - colorScheme: The color scheme (light or dark) to be used for testing
    @MainActor private func testBorderColors(using colorPage: ColorTokenPage, theme: OUDSTheme, interfaceStyle: UIUserInterfaceStyle, colorScheme: ColorScheme) {
        /// Iterate through all background color cases defined in NamedColor.Border
        for color in NamedColor.Border.allCases {
            /// Retrieve the corresponding color token from the provided theme
            let token = color.token(from: theme)

            /// Generate the illustration for the specified color token using the colorPage instance
            let illustration = colorPage.illustration(for: token, name: color.rawValue)
                .background(theme.colorBgPrimary.color(for: colorScheme))

            /// Encapsulate the generated illustration in a UIHostingController for snapshot testing
            let hostingVC = UIHostingController(rootView: illustration)

            /// Create a unique snapshot name based on the current interfaceStyle (light or dark) and the color's raw value
            let snapshotName = "\(theme.name)_\(color.rawValue)_\(interfaceStyle == .light ? "Light" : "Dark")"

            /// Capture the snapshot of the illustration with the correct user interface style and save it with the snapshot name
            assertSnapshot(of: hostingVC, as: .image(traits: UITraitCollection(userInterfaceStyle: interfaceStyle)), named: snapshotName)
        }
    }

    /// This function tests colors for the `Elevation` section of the OrangeTheme.
    /// It captures snapshots for each background color in the specified theme and interfaceStyle (light or dark).
    /// - Parameters:
    ///   - colorPage: The ColorTokenPage instance used to generate illustrations for the colors.
    ///   - theme: The theme (OUDSTheme) from which to retrieve color tokens.
    ///   - interfaceStyle: The user interface style (light or dark) for which to test the colors.
    ///   - colorScheme: The color scheme (light or dark) to be used for testing
    @MainActor private func testElevationColors(using colorPage: ColorTokenPage, theme: OUDSTheme, interfaceStyle: UIUserInterfaceStyle, colorScheme: ColorScheme) {
        /// Iterate through all background color cases defined in NamedColor.Elevation
        for color in NamedColor.Elevation.allCases {
            /// Retrieve the corresponding color token from the provided theme
            let token = color.token(from: theme)

            /// Generate the illustration for the specified color token using the colorPage instance
            let illustration = colorPage.illustration(for: token, name: color.rawValue)
                .background(theme.colorBgPrimary.color(for: colorScheme))

            /// Encapsulate the generated illustration in a UIHostingController for snapshot testing
            let hostingVC = UIHostingController(rootView: illustration)

            /// Create a unique snapshot name based on the current interfaceStyle (light or dark) and the color's raw value
            let snapshotName = "\(theme.name)_\(color.rawValue)_\(interfaceStyle == .light ? "Light" : "Dark")"

            /// Capture the snapshot of the illustration with the correct user interface style and save it with the snapshot name
            assertSnapshot(of: hostingVC, as: .image(traits: UITraitCollection(userInterfaceStyle: interfaceStyle)), named: snapshotName)
        }
    }

    /// This function tests colors for the `Decorative` section of the OrangeTheme.
    /// It captures snapshots for each background color in the specified theme and interfaceStyle (light or dark).
    /// - Parameters:
    ///   - colorPage: The ColorTokenPage instance used to generate illustrations for the colors.
    ///   - theme: The theme (OUDSTheme) from which to retrieve color tokens.
    ///   - interfaceStyle: The user interface style (light or dark) for which to test the colors.
    ///   - colorScheme: The color scheme (light or dark) to be used for testing
    @MainActor private func testDecorativeColors(using colorPage: ColorTokenPage, theme: OUDSTheme, interfaceStyle: UIUserInterfaceStyle, colorScheme: ColorScheme) {
        /// Iterate through all background color cases defined in NamedColor.Decorative
        for color in NamedColor.Decorative.allCases {
            /// Retrieve the corresponding color token from the provided theme
            let token = color.token(from: theme)

            /// Generate the illustration for the specified color token using the colorPage instance
            let illustration = colorPage.illustration(for: token, name: color.rawValue)
                .background(theme.colorBgPrimary.color(for: colorScheme))

            /// Encapsulate the generated illustration in a UIHostingController for snapshot testing
            let hostingVC = UIHostingController(rootView: illustration)

            /// Create a unique snapshot name based on the current interfaceStyle (light or dark) and the color's raw value
            let snapshotName = "\(theme.name)_\(color.rawValue)_\(interfaceStyle == .light ? "Light" : "Dark")"

            /// Capture the snapshot of the illustration with the correct user interface style and save it with the snapshot name
            assertSnapshot(of: hostingVC, as: .image(traits: UITraitCollection(userInterfaceStyle: interfaceStyle)), named: snapshotName)
        }
    }

    /// This function tests colors for the `Chart` section of the OrangeTheme.
    /// It captures snapshots for each background color in the specified theme and interfaceStyle (light or dark).
    /// - Parameters:
    ///   - colorPage: The ColorTokenPage instance used to generate illustrations for the colors.
    ///   - theme: The theme (OUDSTheme) from which to retrieve color tokens.
    ///   - interfaceStyle: The user interface style (light or dark) for which to test the colors.
    ///   - colorScheme: The color scheme (light or dark) to be used for testing
    @MainActor private func testChartColors(using colorPage: ColorTokenPage, theme: OUDSTheme, interfaceStyle: UIUserInterfaceStyle, colorScheme: ColorScheme) {
        /// Iterate through all background color cases defined in NamedColor.Chart
        for color in NamedColor.Chart.allCases {
            /// Retrieve the corresponding color token from the provided theme
            let token = color.token(from: theme)

            /// Generate the illustration for the specified color token using the colorPage instance
            let illustration = colorPage.illustration(for: token, name: color.rawValue)
                .background(theme.colorBgPrimary.color(for: colorScheme))

            /// Encapsulate the generated illustration in a UIHostingController for snapshot testing
            let hostingVC = UIHostingController(rootView: illustration)

            /// Create a unique snapshot name based on the current interfaceStyle (light or dark) and the color's raw value
            let snapshotName = "\(theme.name)_\(color.rawValue)_\(interfaceStyle == .light ? "Light" : "Dark")"

            /// Capture the snapshot of the illustration with the correct user interface style and save it with the snapshot name
            assertSnapshot(of: hostingVC, as: .image(traits: UITraitCollection(userInterfaceStyle: interfaceStyle)), named: snapshotName)
        }
    }
}

// swiftlint:enable required_deinit
