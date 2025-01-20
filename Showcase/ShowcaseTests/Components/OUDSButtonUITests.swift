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

/// Tests the UI Button rendering of each parameter of `OUDSButton`.
final class OUDSButtonUITests: XCTestCase {

    /// This function tests all buttons configuration in the `OrangeTheme` with the `light` color schemes.
    @MainActor func testAllButtonsOrangeThemeLight() {
        let theme = OrangeTheme()
        let interfaceStyle = UIUserInterfaceStyle.light
        testAllButtons(theme: theme, interfaceStyle: interfaceStyle)
        testAllButtonsOnColoredSurface(theme: theme, interfaceStyle: interfaceStyle)
    }
    /// This function tests all buttons configuration in the `OrangeTheme` with the `dark` color schemes.
    @MainActor func testAllButtonsOrangeThemeDark() {
        let theme = OrangeTheme()
        let interfaceStyle = UIUserInterfaceStyle.dark
        testAllButtons(theme: theme, interfaceStyle: interfaceStyle)
        testAllButtonsOnColoredSurface(theme: theme, interfaceStyle: interfaceStyle)
    }

    /// This function tests all buttons configuration in the `InverseTheme` with the `light` color schemes.
    @MainActor func testAllButtonsInverseThemeLight() {
        let theme = InverseTheme()
        let interfaceStyle = UIUserInterfaceStyle.light
        testAllButtons(theme: theme, interfaceStyle: interfaceStyle)
        testAllButtonsOnColoredSurface(theme: theme, interfaceStyle: interfaceStyle)
    }
    /// This function tests all buttons configuration in the `InverseTheme` with the `dark` color schemes.
    @MainActor func testAllButtonsInverseThemeDark() {
        let theme = InverseTheme()
        let interfaceStyle = UIUserInterfaceStyle.dark
        testAllButtons(theme: theme, interfaceStyle: interfaceStyle)
        testAllButtonsOnColoredSurface(theme: theme, interfaceStyle: interfaceStyle)
    }

    // MARK: - Helpers

    /// This function tests all buttons configuration for the given themen and color schemes on a standard surface.
    ///
    /// /!\ It does not text the hover and pressed states.
    ///
    /// It iterates through all button `hierarchy`, for all `style` with textOnly, textAndIcon and iconOnly layouts
    /// in enable and disbled state.
    ///
    /// - Parameters:
    ///   - theme: The theme (OUDSTheme).
    ///   - interfaceStyle: The user interface style (light or dark).
    @MainActor private func testAllButtons(theme: OUDSTheme, interfaceStyle: UIUserInterfaceStyle) {
        // Iterate through all background color cases defined in NamedColor.Background
        for hierarchy in OUDSButton.Hierarchy.allCases {
            for style in OUDSButton.Style.allCases {
                for layout in ButtonTest.Layout.allCases {
                    testButton(theme: theme, interfaceStyle: interfaceStyle, layout: layout, hierarchy: hierarchy, style: style, disabled: false, onColoredSurface: false)
                    testButton(theme: theme, interfaceStyle: interfaceStyle, layout: layout, hierarchy: hierarchy, style: style, disabled: true, onColoredSurface: false)
                }
            }
        }
    }

    /// This function tests all buttons configuration for the given themen and color schemes on aa colored surface (the `colorSurfaceBrandPrimary` token)
    ///
    /// /!\ It does not text the hover and pressed states.
    ///
    /// It iterates through all button `hierarchy`, for all `style` with textOnly, textAndIcon and iconOnly layouts
    /// in enable and disbled state.
    ///
    /// - Parameters:
    ///   - theme: The theme (OUDSTheme) from which to retrieve color tokens.
    ///   - interfaceStyle: The user interface style (light or dark) for which to test the colors.
    @MainActor private func testAllButtonsOnColoredSurface(theme: OUDSTheme, interfaceStyle: UIUserInterfaceStyle) {
        // Skip test for negative hierarchy because it is not allowed on colored surface
        for hierarchy in OUDSButton.Hierarchy.allCases where hierarchy != .negative {
            for style in OUDSButton.Style.allCases {
                for layout in ButtonTest.Layout.allCases {
                    testButton(theme: theme, interfaceStyle: interfaceStyle, layout: layout, hierarchy: hierarchy, style: style, disabled: false, onColoredSurface: true)
                    testButton(theme: theme, interfaceStyle: interfaceStyle, layout: layout, hierarchy: hierarchy, style: style, disabled: true, onColoredSurface: true)
                }
            }
        }
    }

    // swiftlint:disable multiline_parameters
    /// This function tests button according to all parameters of the configutation available on a `OUDButton`
    /// for the given theme and color schemes and on a colored surface or not.
    ///
    /// It captures a snapshot for each tests. The snapshots are saved with names based on each parameters
    ///    test_<themeName>_<colorScheme>.<coloreSurface>_<layout>_<hierarchy>_<style>_<disabled>
    ///
    /// /!\ It does not text the hover and pressed states.
    ///
    /// - Parameters:
    ///   - theme: The theme (OUDSTheme)
    ///   - interfaceStyle: The user interface style (light or dark)
    ///   - layout: the layout of the button
    ///   - hierarchy; the hierarchy of the button
    ///   - style: the style of the button
    ///   - disabled: the disbled flag
    ///   - onColoredSurface: a flag to know if button is on a colored surface or not
    ///
    @MainActor private func testButton(theme: OUDSTheme, interfaceStyle: UIUserInterfaceStyle,
                                       layout: ButtonTest.Layout,
                                       hierarchy: OUDSButton.Hierarchy, style: OUDSButton.Style, disabled: Bool,
                                       onColoredSurface: Bool = false) {
        // Generate the illustration for the specified configuration
        let illustration = OUDSThemeableView(theme: theme) {
            ButtonTest(layout: layout, hierarchy: hierarchy, style: style, onColoredSurface: onColoredSurface)
                .background(theme.colors.colorBgPrimary.color(for: interfaceStyle == .light ? .light : .dark))
                .disabled(disabled)
        }

        // Encapsulate the generated illustration in a UIHostingController for snapshot testing
        let hostingVC = UIHostingController(rootView: illustration)

        // Create a unique snapshot name based on the current configuration :
        // test_<themeName>_<colorScheme>.<coloreSurfacePatern><layout>_<hierarchy>_<style><disapledPatern> where:
        // - `coloredSurfacePatern` is empty if not on colored surface
        // - `disabledPatern` is empty if not disabled
        let testName = "test_\(theme.name)Theme_\(interfaceStyle == .light ? "Light" : "Dark")"
        let coloredSurfacePatern = onColoredSurface ? "ColoredSurface_" : ""
        let disabledPatern = disabled ? "_Disabled" : ""
        let name = "\(coloredSurfacePatern)\(layout.rawValue.camelCase)_\(hierarchy.description)_\(style.description)\(disabledPatern)"

        // Capture the snapshot of the illustration with the correct user interface style and save it with the snapshot name
        assertSnapshot(of: hostingVC, as: .image(traits: UITraitCollection(userInterfaceStyle: interfaceStyle)), named: name, testName: testName)
    }
    // swiftlint:enable multiline_parameters
}

extension String {
    // swiftlint:disable strict_fileprivate
    fileprivate var camelCase: String {
        self.prefix(1).capitalized + self.dropFirst()
    }
    // swiftlint:enable strict_fileprivate
}

struct ButtonTest: View {
    enum `Layout`: String, CaseIterable {
        case text
        case textAndIcon
        case icon
    }

    @Environment(\.theme) private var theme
    @Environment(\.colorScheme) private var colorScheme

    let layout: `Layout`
    let hierarchy: OUDSButton.Hierarchy
    let style: OUDSButton.Style
    let onColoredSurface: Bool

    var body: some View {
        if onColoredSurface {
            OUDSColoredSurface(color: theme.colors.colorSurfaceBrandPrimary.color(for: colorScheme), content: button)
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
            OUDSButton(icon: Image(decorative: "ic_heart"), hierarchy: hierarchy, style: style) {}
        }
    }
}
// swiftlint:enable required_deinit
