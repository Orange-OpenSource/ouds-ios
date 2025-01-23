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

/// Tests the UI rendering of the `OUDSLink` for each parameter
final class OUDSLinkUITests: XCTestCase {

    /// Tests all link configuration in the `OrangeTheme` with the `light` color schemes.
    @MainActor func testAllLinksOrangeThemeLight() {
        let theme = OrangeTheme()
        let interfaceStyle = UIUserInterfaceStyle.light
        testAllLinks(theme: theme, interfaceStyle: interfaceStyle)
        testAllLinksOnColoredSurface(theme: theme, interfaceStyle: interfaceStyle)
    }

    /// Tests all link configuration in the `OrangeTheme` with the `dark` color schemes.
    @MainActor func testAllLinksOrangeThemeDark() {
        let theme = OrangeTheme()
        let interfaceStyle = UIUserInterfaceStyle.dark
        testAllLinks(theme: theme, interfaceStyle: interfaceStyle)
        testAllLinksOnColoredSurface(theme: theme, interfaceStyle: interfaceStyle)
    }

    /// Tests all link configuration in the `InverseTheme` with the `light` color schemes.
    @MainActor func testAllLinksInverseThemeLight() {
        let theme = InverseTheme()
        let interfaceStyle = UIUserInterfaceStyle.light
        testAllLinks(theme: theme, interfaceStyle: interfaceStyle)
        testAllLinksOnColoredSurface(theme: theme, interfaceStyle: interfaceStyle)
    }

    /// Tests all link configuration in the `InverseTheme` with the `dark` color schemes.
    @MainActor func testAllLinksInverseThemeDark() {
        let theme = InverseTheme()
        let interfaceStyle = UIUserInterfaceStyle.dark
        testAllLinks(theme: theme, interfaceStyle: interfaceStyle)
        testAllLinksOnColoredSurface(theme: theme, interfaceStyle: interfaceStyle)
    }

    // MARK: - Helpers

    /// This function tests all link configuration for the given theme and color schemes on a standard surface.
    ///
    /// **/!\ It does not test the hover and pressed states.**
    /// **The loading style is not tested yet as we face troubles with animations and snapshots.**
    ///
    /// It iterates through all link `layouts`, for all `sizes`
    /// in enable and disabled states.
    ///
    /// - Parameters:
    ///   - theme: The theme (`OUDSTheme`).
    ///   - interfaceStyle: The user interface style (light or dark).
    @MainActor private func testAllLinks(theme: OUDSTheme, interfaceStyle: UIUserInterfaceStyle) {
        for layout in LinkLayout.allCases {
            for size in OUDSLink.Size.allCases {
                testLink(theme: theme, interfaceStyle: interfaceStyle, layout: layout, size: size, disabled: false, onColoredSurface: false)
                testLink(theme: theme, interfaceStyle: interfaceStyle, layout: layout, size: size, disabled: true, onColoredSurface: false)
            }
        }
    }

    /// This function tests all link configuration for the given theme and color schemes on a colored surface (the `colorSurfaceBrandPrimary` token)
    ///
    /// **/!\ It does not text the hover and pressed states.**
    /// **The loading style is not tested yet as we face troubles with animations and snapshots.**
    ///
    /// It iterates through all link `layout`, for all `size`
    /// in enable and disbled state.
    ///
    /// - Parameters:
    ///   - theme: The theme (`OUDSTheme) from which to retrieve color tokens.
    ///   - interfaceStyle: The user interface style (light or dark) for which to test the colors.
    @MainActor private func testAllLinksOnColoredSurface(theme: OUDSTheme, interfaceStyle: UIUserInterfaceStyle) {
        // Skip test for negative hierarchy because it is not allowed on colored surface
        for layout in LinkLayout.allCases {
            for size in OUDSLink.Size.allCases {
                testLink(theme: theme, interfaceStyle: interfaceStyle, layout: layout, size: size, disabled: false, onColoredSurface: true)
                testLink(theme: theme, interfaceStyle: interfaceStyle, layout: layout, size: size, disabled: true, onColoredSurface: true)
            }
        }
    }

    /// This function tests link according to all parameters of the configutation available on a `OUDLink`
    /// for the given theme and color schemes and on a colored surface or not.
    ///
    /// It captures a snapshot for each tests. The snapshots are saved with names based on each parameters
    ///    test_<themeName>_<colorScheme>.<coloreSurface>_<layout>_<size>_<disabled>
    ///
    /// **/!\ It does not text the hover and pressed states.**
    /// **The loading style is not tested yet as we face troubles with animations and snapshots.**
    ///
    /// - Parameters:
    ///   - theme: The theme (OUDSTheme)
    ///   - interfaceStyle: The user interface style (light or dark)
    ///   - layout: the layout of the link
    ///   - size: the size of the link
    ///   - disabled: the disbled flag
    ///   - onColoredSurface: a flag to know if link is on a colored surface or not
    @MainActor private func testLink(theme: OUDSTheme,
                                     interfaceStyle: UIUserInterfaceStyle,
                                     layout: LinkLayout,
                                     size: OUDSLink.Size,
                                     disabled: Bool,
                                     onColoredSurface: Bool = false) {
        // Generate the illustration for the specified configuration
        let illustration = OUDSThemeableView(theme: theme) {
            LinkTest(layout: layout, size: size, onColoredSurface: onColoredSurface)
                .background(theme.colors.colorBgPrimary.color(for: interfaceStyle == .light ? .light : .dark))
                .disabled(disabled)
        }

        // Encapsulate the generated illustration in a UIHostingController for snapshot testing
        let hostingVC = UIHostingController(rootView: illustration)

        // Create a unique snapshot name based on the current configuration :
        // test_<themeName>_<colorScheme>.<coloreSurfacePatern><layout>_<size><disabledPatern> where:
        // - `coloredSurfacePatern` is empty if not on colored surface
        // - `disabledPatern` is empty if not disabled
        let testName = "test_\(theme.name)Theme_\(interfaceStyle == .light ? "Light" : "Dark")"
        let coloredSurfacePatern = onColoredSurface ? "ColoredSurface_" : ""
        let disabledPatern = disabled ? "_Disabled" : ""
        let name = "\(coloredSurfacePatern)\(layout.debugDescription)_\(size.description)\(disabledPatern)"

        // Capture the snapshot of the illustration with the correct user interface style and save it with the snapshot name
        assertSnapshot(of: hostingVC, as: .image(traits: UITraitCollection(userInterfaceStyle: interfaceStyle)), named: name, testName: testName)
    }
}

// MARK: - Link Test

private struct LinkTest: View {

    @Environment(\.theme) private var theme
    @Environment(\.colorScheme) private var colorScheme

    let layout: LinkLayout
    let size: OUDSLink.Size
    let onColoredSurface: Bool

    var body: some View {
        if onColoredSurface {
            OUDSColoredSurface(color: theme.colors.colorSurfaceBrandPrimary.color(for: colorScheme), content: link)
        } else {
            link()
        }
    }

    func link() -> some View {
        switch layout {
        case .textOnly:
            OUDSLink(text: "Link", size: size) {}
        case .iconAndText:
            OUDSLink(text: "Link", icon: Image(decorative: "ic_heart"), size: size) {}
        case .arrowNext:
            OUDSLink(text: "Next", arrow: .next, size: size) {}
        case .arrowBack:
            OUDSLink(text: "Back", arrow: .back, size: size) {}
        }
    }
}

extension OUDSLink.Size: @retroactive CustomDebugStringConvertible {
    public var debugDescription: String {
        switch self {
        case .small:
            "Small"
        case .medium:
            "Medium"
        }
    }
}

extension LinkLayout: CustomDebugStringConvertible {
    public var debugDescription: String {
        switch self {
        case .textOnly:
            "TextOnly"
        case .iconAndText:
            "IconAndText"
        case .arrowBack:
            "ArrowBack"
        case .arrowNext:
            "ArrowNext"
        }
    }
    

}

// swiftlint:enable required_deinit
