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

// MARK: - Test Cases

/// Tests the UI rendering of the `OUDSDivider` for each parameter
final class OUDSDividerUITests: XCTestCase {

    /// Tests all divider configuration in the `OrangeTheme` with the `light` color schemes.
    @MainActor func testAllDividerOrangeThemeLight() {
        let theme = OrangeTheme()
        let interfaceStyle = UIUserInterfaceStyle.light
        testAllDividers(theme: theme, interfaceStyle: interfaceStyle)
    }

    /// Tests all buttons configuration in the `OrangeTheme` with the `dark` color schemes.
    @MainActor func testAllDividerOrangeThemeDark() {
        let theme = OrangeTheme()
        let interfaceStyle = UIUserInterfaceStyle.dark
        testAllDividers(theme: theme, interfaceStyle: interfaceStyle)
    }

    /// Tests all buttons configuration in the `InverseTheme` with the `light` color schemes.
    @MainActor func testAllButtonsInverseThemeLight() {
        let theme = InverseTheme()
        let interfaceStyle = UIUserInterfaceStyle.light
        testAllDividers(theme: theme, interfaceStyle: interfaceStyle)
    }

    /// Tests all buttons configuration in the `InverseTheme` with the `dark` color schemes.
    @MainActor func testAllButtonsInverseThemeDark() {
        let theme = InverseTheme()
        let interfaceStyle = UIUserInterfaceStyle.dark
        testAllDividers(theme: theme, interfaceStyle: interfaceStyle)
    }

    // MARK: - Helpers

    /// This function tests all Divider configuration for the given theme and color schemes on a standard surface.
    ///
    /// **/!\ It does not test the hover and pressed states.**
    /// **The loading style is not tested yet as we face troubles with animations and snapshots.**
    ///
    /// It iterates through all button `hierarchy`, for all `style` with *textOnly, textAndIcon and iconOnly* layouts
    /// in enabled and disabled states.
    ///
    /// - Parameters:
    ///   - theme: The theme (`OUDSTheme`).
    ///   - interfaceStyle: The user interface style (light or dark).
    @MainActor private func testAllDividers(theme: OUDSTheme, interfaceStyle: UIUserInterfaceStyle) {
        for orientation: DividerConfigurationModel.Orientation in [.horizontal, .vertical] {
            for dividerColor in OUDSDividerColor.allCases {
                testDivider(theme: theme, interfaceStyle: interfaceStyle, dividerColor: dividerColor, orientation: orientation)
            }
        }
    }

    /// This function tests divider according to all parameters of the configutation available on a `OUDSDivider`
    /// for the given theme and color schemes and on a colored surface or not.
    ///
    /// It captures a snapshot for each tests. The snapshots are saved with names based on each parameters
    ///    test_<themeName>_<colorScheme>.<orientation>.<dividerColor>
    ///
    /// - Parameters:
    ///   - theme: The theme (OUDSTheme)
    ///   - interfaceStyle: The user interface style (light or dark)
    ///   - dividerColor: the color of the divider
    ///   - orientation; the oriention of the divider (i.e. OUDSHorizontalDivider or OUDSVerticalDivider)
    @MainActor private func testDivider(theme: OUDSTheme,
                                        interfaceStyle: UIUserInterfaceStyle,
                                        dividerColor: OUDSDividerColor,
                                        orientation: DividerConfigurationModel.Orientation) {
        // Generate the illustration for the specified configuration
        let illustration = OUDSThemeableView(theme: theme) {
            DividerDemo(model: DividerConfigurationModel(orientation: orientation, selectedColor: dividerColor))
        }

        // Create a unique snapshot name based on the current configuration :
        //    test_<themeName>_<colorScheme>.<orientation>.<dividerColor>
        let testName = "test_\(theme.name)Theme_\(interfaceStyle == .light ? "Light" : "Dark")"
        let dividerColorPatern = dividerColor.description
        let orientationPatern = orientation == .horizontal ? "Horizontal" : "Vertical"
        let name = "\(orientationPatern).\(dividerColorPatern)"

        // Capture the snapshot of the illustration with the correct user interface style and save it with the snapshot name
        assertIllustration(illustration,
                           on: interfaceStyle,
                           named: name,
                           testName: testName)
    }
}
// swiftlint:enable required_deinit
