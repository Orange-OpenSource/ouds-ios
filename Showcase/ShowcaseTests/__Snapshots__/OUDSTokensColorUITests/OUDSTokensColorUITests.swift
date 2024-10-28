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

    // MARK: - Orange Theme Color Tests

    /// This function tests all elevation tokens in the `OrangeTheme` with both the `light` and `dark` color schemes.
    /// It iterates through all sections of `NamedColor`, rendering each illustration in a `UIHostingController`,
    /// and captures a snapshot for each color. The snapshots are saved with names indicating the color, theme, and color scheme.
    @MainActor func testAllColorsOrangeTheme() {
        /// Create an instance of the page with a forced OrangeTheme for light mode
        let lightColorPage = ColorTokenPage(forceTo: OrangeTheme(), colorScheme: .light)
        /// Create an instance of the page with a forced OrangeTheme for dark mode
        let darkColorPage = ColorTokenPage(forceTo: OrangeTheme(), colorScheme: .dark)

        /// Test all color sections individually for light mode
        testBackgroundColors(using: lightColorPage, theme: OrangeTheme(), mode: .light)
        testActionColors(using: lightColorPage, theme: OrangeTheme(), mode: .light)
        testAlwaysColors(using: lightColorPage, theme: OrangeTheme(), mode: .light)
        testContentColors(using: lightColorPage, theme: OrangeTheme(), mode: .light)
        testContentOnBgColors(using: lightColorPage, theme: OrangeTheme(), mode: .light)
        testBorderColors(using: lightColorPage, theme: OrangeTheme(), mode: .light)
        testElevationColors(using: lightColorPage, theme: OrangeTheme(), mode: .light)
        testDecorativeColors(using: lightColorPage, theme: OrangeTheme(), mode: .light)
        testChartColors(using: lightColorPage, theme: OrangeTheme(), mode: .light)

        /// Test all color sections individually for dark mode
        testBackgroundColors(using: darkColorPage, theme: OrangeTheme(), mode: .dark)
        testActionColors(using: darkColorPage, theme: OrangeTheme(), mode: .dark)
        testAlwaysColors(using: darkColorPage, theme: OrangeTheme(), mode: .dark)
        testContentColors(using: darkColorPage, theme: OrangeTheme(), mode: .dark)
        testContentOnBgColors(using: darkColorPage, theme: OrangeTheme(), mode: .dark)
        testBorderColors(using: darkColorPage, theme: OrangeTheme(), mode: .dark)
        testElevationColors(using: darkColorPage, theme: OrangeTheme(), mode: .dark)
        testDecorativeColors(using: darkColorPage, theme: OrangeTheme(), mode: .dark)
        testChartColors(using: darkColorPage, theme: OrangeTheme(), mode: .dark)
    }

    // MARK: - Inverse Theme Color Tests

    /// This function tests all elevation tokens in the `InverseTheme` with both the `light` and `dark` color schemes.
    /// It iterates through all sections of `NamedColor`, rendering each illustration in a `UIHostingController`,
    /// and captures a snapshot for each color. The snapshots are saved with names indicating the color, theme, and color scheme.
    @MainActor func testAllColorsInverseTheme() {
        /// Create an instance of the page with a forced InverseTheme for light mode
        let lightColorPage = ColorTokenPage(forceTo: InverseTheme(), colorScheme: .light)
        /// Create an instance of the page with a forced InverseTheme for dark mode
        let darkColorPage = ColorTokenPage(forceTo: InverseTheme(), colorScheme: .dark)

        /// Test all color sections individually for light mode
        testBackgroundColors(using: lightColorPage, theme: InverseTheme(), mode: .light)
        testActionColors(using: lightColorPage, theme: InverseTheme(), mode: .light)
        testAlwaysColors(using: lightColorPage, theme: InverseTheme(), mode: .light)
        testContentColors(using: lightColorPage, theme: InverseTheme(), mode: .light)
        testContentOnBgColors(using: lightColorPage, theme: InverseTheme(), mode: .light)
        testBorderColors(using: lightColorPage, theme: InverseTheme(), mode: .light)
        testElevationColors(using: lightColorPage, theme: InverseTheme(), mode: .light)
        testDecorativeColors(using: lightColorPage, theme: InverseTheme(), mode: .light)
        testChartColors(using: lightColorPage, theme: InverseTheme(), mode: .light)

        /// Test all color sections individually for dark mode
        testBackgroundColors(using: darkColorPage, theme: InverseTheme(), mode: .dark)
        testActionColors(using: darkColorPage, theme: InverseTheme(), mode: .dark)
        testAlwaysColors(using: darkColorPage, theme: InverseTheme(), mode: .dark)
        testContentColors(using: darkColorPage, theme: InverseTheme(), mode: .dark)
        testContentOnBgColors(using: darkColorPage, theme: InverseTheme(), mode: .dark)
        testBorderColors(using: darkColorPage, theme: InverseTheme(), mode: .dark)
        testElevationColors(using: darkColorPage, theme: InverseTheme(), mode: .dark)
        testDecorativeColors(using: darkColorPage, theme: InverseTheme(), mode: .dark)
        testChartColors(using: darkColorPage, theme: InverseTheme(), mode: .dark)
    }

    /// This function tests colors for the `Background` section of the OrangeTheme.
    /// It captures snapshots for each background color in the specified theme and mode (light or dark).
    /// - Parameters:
    ///   - colorPage: The ColorTokenPage instance used to generate illustrations for the colors.
    ///   - theme: The theme (OUDSTheme) from which to retrieve color tokens.
    ///   - mode: The user interface style (light or dark) for which to test the colors.
    @MainActor private func testBackgroundColors(using colorPage: ColorTokenPage, theme: OUDSTheme, mode: UIUserInterfaceStyle) {
        /// Iterate through all background color cases defined in NamedColor.Background
        for color in NamedColor.Background.allCases {
            /// Retrieve the corresponding color token from the provided theme
            let token = color.token(from: theme)

            /// Generate the illustration for the specified color token using the colorPage instance
            let illustration = colorPage.illustration(for: token, name: color.rawValue)

            /// Encapsulate the generated illustration in a UIHostingController for snapshot testing
            let hostingVC = UIHostingController(rootView: illustration)

            /// Create a unique snapshot name based on the current mode (light or dark) and the color's raw value
            let snapshotName = "\(theme.name)_\(color.rawValue)_\(mode == .light ? "Light" : "Dark")"

            /// Capture the snapshot of the illustration with the correct user interface style and save it with the snapshot name
            assertSnapshot(of: hostingVC, as: .image(traits: UITraitCollection(userInterfaceStyle: mode)), named: snapshotName)
        }
    }

    /// This function tests colors for the `Action` section of the OrangeTheme.
    /// It captures snapshots for each background color in the specified theme and mode (light or dark).
    /// - Parameters:
    ///   - colorPage: The ColorTokenPage instance used to generate illustrations for the colors.
    ///   - theme: The theme (OUDSTheme) from which to retrieve color tokens.
    ///   - mode: The user interface style (light or dark) for which to test the colors.
    @MainActor private func testActionColors(using colorPage: ColorTokenPage, theme: OUDSTheme, mode: UIUserInterfaceStyle) {
        /// Iterate through all background color cases defined in NamedColor.Action
        for color in NamedColor.Action.allCases {
            /// Retrieve the corresponding color token from the provided theme
            let token = color.token(from: theme)

            /// Generate the illustration for the specified color token using the colorPage instance
            let illustration = colorPage.illustration(for: token, name: color.rawValue)

            /// Encapsulate the generated illustration in a UIHostingController for snapshot testing
            let hostingVC = UIHostingController(rootView: illustration)

            /// Create a unique snapshot name based on the current mode (light or dark) and the color's raw value
            let snapshotName = "\(theme.name)_\(color.rawValue)_\(mode == .light ? "Light" : "Dark")"

            /// Capture the snapshot of the illustration with the correct user interface style and save it with the snapshot name
            assertSnapshot(of: hostingVC, as: .image(traits: UITraitCollection(userInterfaceStyle: mode)), named: snapshotName)
        }
    }

    /// This function tests colors for the `Always` section of the OrangeTheme.
    /// It captures snapshots for each background color in the specified theme and mode (light or dark).
    /// - Parameters:
    ///   - colorPage: The ColorTokenPage instance used to generate illustrations for the colors.
    ///   - theme: The theme (OUDSTheme) from which to retrieve color tokens.
    ///   - mode: The user interface style (light or dark) for which to test the colors.
    @MainActor private func testAlwaysColors(using colorPage: ColorTokenPage, theme: OUDSTheme, mode: UIUserInterfaceStyle) {
        /// Iterate through all background color cases defined in NamedColor.Always
        for color in NamedColor.Always.allCases {
            /// Retrieve the corresponding color token from the provided theme
            let token = color.token(from: theme)

            /// Generate the illustration for the specified color token using the colorPage instance
            let illustration = colorPage.illustration(for: token, name: color.rawValue)

            /// Encapsulate the generated illustration in a UIHostingController for snapshot testing
            let hostingVC = UIHostingController(rootView: illustration)

            /// Create a unique snapshot name based on the current mode (light or dark) and the color's raw value
            let snapshotName = "\(theme.name)_\(color.rawValue)_\(mode == .light ? "Light" : "Dark")"

            /// Capture the snapshot of the illustration with the correct user interface style and save it with the snapshot name
            assertSnapshot(of: hostingVC, as: .image(traits: UITraitCollection(userInterfaceStyle: mode)), named: snapshotName)
        }
    }

    /// This function tests colors for the `Content` section of the OrangeTheme.
    /// It captures snapshots for each background color in the specified theme and mode (light or dark).
    /// - Parameters:
    ///   - colorPage: The ColorTokenPage instance used to generate illustrations for the colors.
    ///   - theme: The theme (OUDSTheme) from which to retrieve color tokens.
    ///   - mode: The user interface style (light or dark) for which to test the colors.
    @MainActor private func testContentColors(using colorPage: ColorTokenPage, theme: OUDSTheme, mode: UIUserInterfaceStyle) {
        /// Iterate through all background color cases defined in NamedColor.Content
        for color in NamedColor.Content.allCases {
            /// Retrieve the corresponding color token from the provided theme
            let token = color.token(from: theme)

            /// Generate the illustration for the specified color token using the colorPage instance
            let illustration = colorPage.illustration(for: token, name: color.rawValue)

            /// Encapsulate the generated illustration in a UIHostingController for snapshot testing
            let hostingVC = UIHostingController(rootView: illustration)

            /// Create a unique snapshot name based on the current mode (light or dark) and the color's raw value
            let snapshotName = "\(theme.name)_\(color.rawValue)_\(mode == .light ? "Light" : "Dark")"

            /// Capture the snapshot of the illustration with the correct user interface style and save it with the snapshot name
            assertSnapshot(of: hostingVC, as: .image(traits: UITraitCollection(userInterfaceStyle: mode)), named: snapshotName)
        }
    }

    /// This function tests colors for the `ContentOnBg` section of the OrangeTheme.
    /// It captures snapshots for each background color in the specified theme and mode (light or dark).
    /// - Parameters:
    ///   - colorPage: The ColorTokenPage instance used to generate illustrations for the colors.
    ///   - theme: The theme (OUDSTheme) from which to retrieve color tokens.
    ///   - mode: The user interface style (light or dark) for which to test the colors.
    @MainActor private func testContentOnBgColors(using colorPage: ColorTokenPage, theme: OUDSTheme, mode: UIUserInterfaceStyle) {
        /// Iterate through all background color cases defined in NamedColor.ContentOnBg
        for color in NamedColor.ContentOnBg.allCases {
            /// Retrieve the corresponding color token from the provided theme
            let token = color.token(from: theme)

            /// Generate the illustration for the specified color token using the colorPage instance
            let illustration = colorPage.illustration(for: token, name: color.rawValue)

            /// Encapsulate the generated illustration in a UIHostingController for snapshot testing
            let hostingVC = UIHostingController(rootView: illustration)

            /// Create a unique snapshot name based on the current mode (light or dark) and the color's raw value
            let snapshotName = "\(theme.name)_\(color.rawValue)_\(mode == .light ? "Light" : "Dark")"

            /// Capture the snapshot of the illustration with the correct user interface style and save it with the snapshot name
            assertSnapshot(of: hostingVC, as: .image(traits: UITraitCollection(userInterfaceStyle: mode)), named: snapshotName)
        }
    }

    /// This function tests colors for the `Border` section of the OrangeTheme.
    /// It captures snapshots for each background color in the specified theme and mode (light or dark).
    /// - Parameters:
    ///   - colorPage: The ColorTokenPage instance used to generate illustrations for the colors.
    ///   - theme: The theme (OUDSTheme) from which to retrieve color tokens.
    ///   - mode: The user interface style (light or dark) for which to test the colors.
    @MainActor private func testBorderColors(using colorPage: ColorTokenPage, theme: OUDSTheme, mode: UIUserInterfaceStyle) {
        /// Iterate through all background color cases defined in NamedColor.Border
        for color in NamedColor.Border.allCases {
            /// Retrieve the corresponding color token from the provided theme
            let token = color.token(from: theme)

            /// Generate the illustration for the specified color token using the colorPage instance
            let illustration = colorPage.illustration(for: token, name: color.rawValue)

            /// Encapsulate the generated illustration in a UIHostingController for snapshot testing
            let hostingVC = UIHostingController(rootView: illustration)

            /// Create a unique snapshot name based on the current mode (light or dark) and the color's raw value
            let snapshotName = "\(theme.name)_\(color.rawValue)_\(mode == .light ? "Light" : "Dark")"

            /// Capture the snapshot of the illustration with the correct user interface style and save it with the snapshot name
            assertSnapshot(of: hostingVC, as: .image(traits: UITraitCollection(userInterfaceStyle: mode)), named: snapshotName)
        }
    }

    /// This function tests colors for the `Elevation` section of the OrangeTheme.
    /// It captures snapshots for each background color in the specified theme and mode (light or dark).
    /// - Parameters:
    ///   - colorPage: The ColorTokenPage instance used to generate illustrations for the colors.
    ///   - theme: The theme (OUDSTheme) from which to retrieve color tokens.
    ///   - mode: The user interface style (light or dark) for which to test the colors.
    @MainActor private func testElevationColors(using colorPage: ColorTokenPage, theme: OUDSTheme, mode: UIUserInterfaceStyle) {
        /// Iterate through all background color cases defined in NamedColor.Elevation
        for color in NamedColor.Elevation.allCases {
            /// Retrieve the corresponding color token from the provided theme
            let token = color.token(from: theme)

            /// Generate the illustration for the specified color token using the colorPage instance
            let illustration = colorPage.illustration(for: token, name: color.rawValue)

            /// Encapsulate the generated illustration in a UIHostingController for snapshot testing
            let hostingVC = UIHostingController(rootView: illustration)

            /// Create a unique snapshot name based on the current mode (light or dark) and the color's raw value
            let snapshotName = "\(theme.name)_\(color.rawValue)_\(mode == .light ? "Light" : "Dark")"

            /// Capture the snapshot of the illustration with the correct user interface style and save it with the snapshot name
            assertSnapshot(of: hostingVC, as: .image(traits: UITraitCollection(userInterfaceStyle: mode)), named: snapshotName)
        }
    }

    /// This function tests colors for the `Decorative` section of the OrangeTheme.
    /// It captures snapshots for each background color in the specified theme and mode (light or dark).
    /// - Parameters:
    ///   - colorPage: The ColorTokenPage instance used to generate illustrations for the colors.
    ///   - theme: The theme (OUDSTheme) from which to retrieve color tokens.
    ///   - mode: The user interface style (light or dark) for which to test the colors.
    @MainActor private func testDecorativeColors(using colorPage: ColorTokenPage, theme: OUDSTheme, mode: UIUserInterfaceStyle) {
        /// Iterate through all background color cases defined in NamedColor.Decorative
        for color in NamedColor.Decorative.allCases {
            /// Retrieve the corresponding color token from the provided theme
            let token = color.token(from: theme)

            /// Generate the illustration for the specified color token using the colorPage instance
            let illustration = colorPage.illustration(for: token, name: color.rawValue)

            /// Encapsulate the generated illustration in a UIHostingController for snapshot testing
            let hostingVC = UIHostingController(rootView: illustration)

            /// Create a unique snapshot name based on the current mode (light or dark) and the color's raw value
            let snapshotName = "\(theme.name)_\(color.rawValue)_\(mode == .light ? "Light" : "Dark")"

            /// Capture the snapshot of the illustration with the correct user interface style and save it with the snapshot name
            assertSnapshot(of: hostingVC, as: .image(traits: UITraitCollection(userInterfaceStyle: mode)), named: snapshotName)
        }
    }

    /// This function tests colors for the `Chart` section of the OrangeTheme.
    /// It captures snapshots for each background color in the specified theme and mode (light or dark).
    /// - Parameters:
    ///   - colorPage: The ColorTokenPage instance used to generate illustrations for the colors.
    ///   - theme: The theme (OUDSTheme) from which to retrieve color tokens.
    ///   - mode: The user interface style (light or dark) for which to test the colors.
    @MainActor private func testChartColors(using colorPage: ColorTokenPage, theme: OUDSTheme, mode: UIUserInterfaceStyle) {
        /// Iterate through all background color cases defined in NamedColor.Chart
        for color in NamedColor.Chart.allCases {
            /// Retrieve the corresponding color token from the provided theme
            let token = color.token(from: theme)

            /// Generate the illustration for the specified color token using the colorPage instance
            let illustration = colorPage.illustration(for: token, name: color.rawValue)

            /// Encapsulate the generated illustration in a UIHostingController for snapshot testing
            let hostingVC = UIHostingController(rootView: illustration)

            /// Create a unique snapshot name based on the current mode (light or dark) and the color's raw value
            let snapshotName = "\(theme.name)_\(color.rawValue)_\(mode == .light ? "Light" : "Dark")"

            /// Capture the snapshot of the illustration with the correct user interface style and save it with the snapshot name
            assertSnapshot(of: hostingVC, as: .image(traits: UITraitCollection(userInterfaceStyle: mode)), named: snapshotName)
        }
    }
}

// swiftlint:enable required_deinit
