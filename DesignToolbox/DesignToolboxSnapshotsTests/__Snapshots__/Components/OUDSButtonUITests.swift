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

/// Tests the UI rendering of the `OUDSButton` for each parameter
final class OUDSButtonUITests: XCTestCase {

    /// Tests all buttons configuration in the `OrangeTheme` with the `light` color schemes.
    @MainActor func testAllButtonsOrangeThemeLight() {
        let theme = OrangeTheme()
        let interfaceStyle = UIUserInterfaceStyle.light
        testAllButtons(theme: theme, interfaceStyle: interfaceStyle)
        testAllButtonsOnColoredSurface(theme: theme, interfaceStyle: interfaceStyle)
    }

    /// Tests all buttons configuration in the `OrangeTheme` with the `dark` color schemes.
    @MainActor func testAllButtonsOrangeThemeDark() {
        let theme = OrangeTheme()
        let interfaceStyle = UIUserInterfaceStyle.dark
        testAllButtons(theme: theme, interfaceStyle: interfaceStyle)
        testAllButtonsOnColoredSurface(theme: theme, interfaceStyle: interfaceStyle)
    }

    /// Tests all buttons configuration in the `InverseTheme` with the `light` color schemes.
    @MainActor func testAllButtonsInverseThemeLight() {
        let theme = InverseTheme()
        let interfaceStyle = UIUserInterfaceStyle.light
        testAllButtons(theme: theme, interfaceStyle: interfaceStyle)
        testAllButtonsOnColoredSurface(theme: theme, interfaceStyle: interfaceStyle)
    }

    /// Tests all buttons configuration in the `InverseTheme` with the `dark` color schemes.
    @MainActor func testAllButtonsInverseThemeDark() {
        let theme = InverseTheme()
        let interfaceStyle = UIUserInterfaceStyle.dark
        testAllButtons(theme: theme, interfaceStyle: interfaceStyle)
        testAllButtonsOnColoredSurface(theme: theme, interfaceStyle: interfaceStyle)
    }

    // MARK: - Helpers

    /// This function tests all buttons configuration for the given theme and color schemes on a standard surface.
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
    @MainActor private func testAllButtons(theme: OUDSTheme, interfaceStyle: UIUserInterfaceStyle) {
        for hierarchy in OUDSButton.Hierarchy.allCases {
            for layout in ButtonTest.Layout.allCases {
                testButton(theme: theme, interfaceStyle: interfaceStyle, layout: layout, hierarchy: hierarchy, disabled: false, onColoredSurface: false)
                testButton(theme: theme, interfaceStyle: interfaceStyle, layout: layout, hierarchy: hierarchy, disabled: true, onColoredSurface: false)
            }
        }
    }

    /// This function tests all buttons configuration for the given themen and color schemes on aa colored surface (the `colorSurfaceBrandPrimary` token)
    ///
    /// **/!\ It does not text the hover and pressed states.**
    /// **The loading style is not tested yet as we face troubles with animations and snapshots.**
    ///
    /// It iterates through all button `hierarchy`, for all `style` with* textOnly, textAndIcon and iconOnly layouts*
    /// in enabled and disabled state.
    ///
    /// - Parameters:
    ///   - theme: The theme (`OUDSTheme) from which to retrieve color tokens.
    ///   - interfaceStyle: The user interface style (light or dark) for which to test the colors.
    @MainActor private func testAllButtonsOnColoredSurface(theme: OUDSTheme, interfaceStyle: UIUserInterfaceStyle) {
        // Skip test for negative hierarchy because it is not allowed on colored surface
        for hierarchy in OUDSButton.Hierarchy.allCases where hierarchy != .negative {
            for layout in ButtonTest.Layout.allCases {
                testButton(theme: theme, interfaceStyle: interfaceStyle, layout: layout, hierarchy: hierarchy, disabled: false, onColoredSurface: true)
                testButton(theme: theme, interfaceStyle: interfaceStyle, layout: layout, hierarchy: hierarchy, disabled: true, onColoredSurface: true)
            }
        }
    }

    /// This function tests button according to all parameters of the configutation available on a `OUDButton`
    /// for the given theme and color schemes and on a colored surface or not.
    ///
    /// It captures a snapshot for each tests. The snapshots are saved with names based on each parameters
    ///    test_<themeName>_<colorScheme>.<coloreSurface>_<layout>_<hierarchy>_<style>_<disabled>
    ///
    /// **/!\ It does not text the hover and pressed states.**
    /// **The loading style is not tested yet as we face troubles with animations and snapshots.**
    ///
    /// - Parameters:
    ///   - theme: The theme (OUDSTheme)
    ///   - interfaceStyle: The user interface style (light or dark)
    ///   - layout: the layout of the button
    ///   - hierarchy; the hierarchy of the button
    ///   - disabled: the disabled flag
    ///   - onColoredSurface: a flag to know if button is on a colored surface or not
    @MainActor private func testButton(theme: OUDSTheme,
                                       interfaceStyle: UIUserInterfaceStyle,
                                       layout: ButtonTest.Layout,
                                       hierarchy: OUDSButton.Hierarchy,
                                       disabled: Bool,
                                       onColoredSurface: Bool = false) {
        // Generate the illustration for the specified configuration
        let illustration = OUDSThemeableView(theme: theme) {
            ButtonTest(layout: layout, hierarchy: hierarchy, style: .default, onColoredSurface: onColoredSurface)
                .background(theme.colors.colorBgPrimary.color(for: interfaceStyle == .light ? .light : .dark))
                .disabled(disabled)
        }

        // Create a unique snapshot name based on the current configuration :
        // test_<themeName>_<colorScheme>.<coloreSurfacePatern><layout>_<hierarchy>_<style><disapledPatern> where:
        // - `coloredSurfacePatern` is empty if not on colored surface
        // - `disabledPatern` is empty if not disabled
        let testName = "test_\(theme.name)Theme_\(interfaceStyle == .light ? "Light" : "Dark")"
        let coloredSurfacePatern = onColoredSurface ? "ColoredSurface_" : ""
        let disabledPatern = disabled ? "_Disabled" : ""
        let name = "\(coloredSurfacePatern)\(layout.rawValue.camelCase)_\(hierarchy.description)_\(OUDSButton.Style.default.description)\(disabledPatern)"

        // Capture the snapshot of the illustration with the correct user interface style and save it with the snapshot name
        assertIllustration(illustration,
                           on: interfaceStyle,
                           named: name,
                           testName: testName)
    }
}

// MARK: - Button Test

private struct ButtonTest: View {

    enum `Layout`: String, CaseIterable {
        case text
        case textAndIcon
        case icon
    }

    let layout: `Layout`
    let hierarchy: OUDSButton.Hierarchy
    let style: OUDSButton.Style
    let onColoredSurface: Bool

    @Environment(\.theme) private var theme

    var body: some View {
        if onColoredSurface {
            OUDSColoredSurface(color: theme.colorModes.modeOnBrandPrimary, content: button)
        } else {
            button()
        }
    }

    func button() -> some View {
        switch layout {
        case .text:
            OUDSButton(text: "Button", hierarchy: hierarchy, style: style) {}
        case .textAndIcon:
            OUDSButton(icon: Image(decorative: "ic_heart"), text: "Button", hierarchy: hierarchy, style: style) {}
        case .icon:
            OUDSButton(icon: Image(decorative: "ic_heart"), accessibilityLabel: "Icon", hierarchy: hierarchy, style: style) {}
        }
    }
}

// swiftlint:enable required_deinit
