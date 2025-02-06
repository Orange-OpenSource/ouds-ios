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

/// Tests the UI rendering of the `OUDSCheckbox` for each parameter
final class OUDSCheckboxUITests: XCTestCase {

    /// Tests all buttons configuration in the `OrangeTheme` with the `light` color schemes.
    @MainActor func testAllCheckboxesOrangeThemeLight() {
        let theme = OrangeTheme()
        let interfaceStyle = UIUserInterfaceStyle.light
        testAllCheckboxes(theme: theme, interfaceStyle: interfaceStyle)
        testAllCheckboxesOnColoredSurface(theme: theme, interfaceStyle: interfaceStyle)
    }

    /// Tests all buttons configuration in the `OrangeTheme` with the `dark` color schemes.
    @MainActor func testAllCheckboxesOrangeThemeDark() {
        let theme = OrangeTheme()
        let interfaceStyle = UIUserInterfaceStyle.dark
        testAllCheckboxes(theme: theme, interfaceStyle: interfaceStyle)
        testAllCheckboxesOnColoredSurface(theme: theme, interfaceStyle: interfaceStyle)
    }

    /// Tests all buttons configuration in the `InverseTheme` with the `light` color schemes.
    @MainActor func testAllCheckboxesInverseThemeLight() {
        let theme = InverseTheme()
        let interfaceStyle = UIUserInterfaceStyle.light
        testAllCheckboxes(theme: theme, interfaceStyle: interfaceStyle)
        testAllCheckboxesOnColoredSurface(theme: theme, interfaceStyle: interfaceStyle)
    }

    /// Tests all buttons configuration in the `InverseTheme` with the `dark` color schemes.
    @MainActor func testAllCheckboxesInverseThemeDark() {
        let theme = InverseTheme()
        let interfaceStyle = UIUserInterfaceStyle.dark
        testAllCheckboxes(theme: theme, interfaceStyle: interfaceStyle)
        testAllCheckboxesOnColoredSurface(theme: theme, interfaceStyle: interfaceStyle)
    }

    // MARK: - Helpers

    /// This function tests all checkboxes configuration for the given theme and color schemes on a standard surface.
    ///
    /// **/!\ It does not text the hover and pressed states.**
    ///
    /// It iterates through all button `OUDSCheckbox.SelectorState`, for all combinations of layouts in enabled and disabled state.
    ///
    /// - Parameters:
    ///   - theme: The theme (`OUDSTheme`) from which to retrieve color tokens.
    ///   - interfaceStyle: The user interface style (light or dark) for which to test the colors.
    @MainActor private func testAllCheckboxes(theme: OUDSTheme, interfaceStyle: UIUserInterfaceStyle) {
        for selectorState in OUDSCheckbox.SelectorState.allCases {
            for someLayout in availableLayouts(isError: false, isReadOnly: false) {
                testCheckbox(theme: theme,
                             interfaceStyle: interfaceStyle,
                             layout: someLayout,
                             selectorState: selectorState,
                             isDisabled: false,
                             onColoredSurface: false)

                testCheckbox(theme: theme,
                             interfaceStyle: interfaceStyle,
                             layout: someLayout,
                             selectorState: selectorState,
                             isDisabled: true,
                             onColoredSurface: false)
            }
        }

        for selectorState in OUDSCheckbox.SelectorState.allCases {
            for someLayout in availableLayouts(isError: true, isReadOnly: false) {
                testCheckbox(theme: theme,
                             interfaceStyle: interfaceStyle,
                             layout: someLayout,
                             selectorState: selectorState,
                             isDisabled: false,
                             onColoredSurface: false)
            }
        }

        for selectorState in OUDSCheckbox.SelectorState.allCases {
            for someLayout in availableLayouts(isError: false, isReadOnly: true) {
                testCheckbox(theme: theme,
                             interfaceStyle: interfaceStyle,
                             layout: someLayout,
                             selectorState: selectorState,
                             isDisabled: false,
                             onColoredSurface: false)
            }
        }
    }

    /// This function tests all checkboxes configuration for the given themen and color schemes on aa colored surface (the `colorSurfaceBrandPrimary` token)
    ///
    /// **/!\ It does not text the hover and pressed states.**
    ///
    /// It iterates through all button `OUDSCheckbox.SelectorState`, for all combinations of layouts in enabled and disabled state.
    ///
    /// - Parameters:
    ///   - theme: The theme (`OUDSTheme`) from which to retrieve color tokens.
    ///   - interfaceStyle: The user interface style (light or dark) for which to test the colors.
    @MainActor private func testAllCheckboxesOnColoredSurface(theme: OUDSTheme, interfaceStyle: UIUserInterfaceStyle) {
        for selectorState in OUDSCheckbox.SelectorState.allCases {
            for someLayout in availableLayouts(isError: false, isReadOnly: false) {
                testCheckbox(theme: theme,
                             interfaceStyle: interfaceStyle,
                             layout: someLayout,
                             selectorState: selectorState,
                             isDisabled: false,
                             onColoredSurface: true)

                testCheckbox(theme: theme,
                             interfaceStyle: interfaceStyle,
                             layout: someLayout,
                             selectorState: selectorState,
                             isDisabled: true,
                             onColoredSurface: true)
            }
        }

        for selectorState in OUDSCheckbox.SelectorState.allCases {
            for someLayout in availableLayouts(isError: true, isReadOnly: false) {
                testCheckbox(theme: theme,
                             interfaceStyle: interfaceStyle,
                             layout: someLayout,
                             selectorState: selectorState,
                             isDisabled: false,
                             onColoredSurface: true)
            }
        }

        for selectorState in OUDSCheckbox.SelectorState.allCases {
            for someLayout in availableLayouts(isError: false, isReadOnly: true) {
                testCheckbox(theme: theme,
                             interfaceStyle: interfaceStyle,
                             layout: someLayout,
                             selectorState: selectorState,
                             isDisabled: false,
                             onColoredSurface: true)
            }
        }
    }

    /// This function tests checkbox according to all parameters of the configutation available on a `OUDSCheckbox`
    /// for the given theme and color schemes and on a colored surface or not.
    ///
    /// It captures a snapshot for each tests. The snapshots are saved with names based on each parameters
    ///    "test_<themeName>_<colorScheme>.<coloreSurfacePatern><layout>_<selectorState>_<disabledPatern>"
    ///
    /// **/!\ It does not text the hover and pressed states.**
    ///
    /// - Parameters:
    ///   - theme: The theme (OUDSTheme)
    ///   - interfaceStyle: The user interface style (light or dark)
    ///   - layout: the layout of the checkbox
    ///   - selectorState: the selector state of the checkbox
    ///   - isDisabled: the disabled flag
    ///   - onColoredSurface: a flag to know if button is on a colored surface or not
    @MainActor private func testCheckbox(theme: OUDSTheme,
                                         interfaceStyle: UIUserInterfaceStyle,
                                         layout: CheckboxTest.Layout,
                                         selectorState: OUDSCheckbox.SelectorState,
                                         isDisabled: Bool,
                                         onColoredSurface: Bool = false) {
        // Generate the illustration for the specified configuration
        let illustration = OUDSThemeableView(theme: theme) {
            CheckboxTest(layout: layout,
                         selectorState: selectorState,
                         isDisabled: isDisabled,
                         onColoredSurface: onColoredSurface)
            .background(theme.colors.colorBgPrimary.color(for: interfaceStyle == .light ? .light : .dark))
        }

        // Encapsulate the generated illustration in a UIHostingController for snapshot testing
        let hostingVC = UIHostingController(rootView: illustration)

        // Create a unique snapshot name based on the current configuration :
        // test_<themeName>_<colorScheme>.<coloreSurfacePatern><layout>_<selectorState>_<disabledPatern> where:
        // - `coloredSurfacePatern` is empty if not on colored surface
        // - `disabledPatern` is empty if not disabled
        let testName = "test_\(theme.name)Theme_\(interfaceStyle == .light ? "Light" : "Dark")"
        let coloredSurfacePatern = onColoredSurface ? "ColoredSurface_" : ""
        let disabledPatern = isDisabled ? "_Disabled" : ""
        let name = "\(coloredSurfacePatern)\(layout.description.camelCase)_\(selectorState.name)_\(disabledPatern)"

        // Capture the snapshot of the illustration with the correct user interface style and save it with the snapshot name
        assertSnapshot(of: hostingVC, as: .image(traits: UITraitCollection(userInterfaceStyle: interfaceStyle)), named: name, testName: testName)
    }

    // swiftlint:disable line_length
    private func availableLayouts(isError: Bool, isReadOnly: Bool) -> [CheckboxTest.Layout] {
        [
            // Forbidden by design to have both isError and isReadOnly

            CheckboxTest.Layout.selectorOnly(isError: isError, isReadOnly: isReadOnly),

            CheckboxTest.Layout.default(labelText: "Takoyaki", helperText: nil, icon: nil, isError: isError, hasDivider: false, isReadOnly: isReadOnly),
            CheckboxTest.Layout.default(labelText: "Takoyaki", helperText: nil, icon: nil, isError: isError, hasDivider: true, isReadOnly: isReadOnly),
            CheckboxTest.Layout.default(labelText: "Patatas", helperText: "Bravas", icon: nil, isError: isError, hasDivider: false, isReadOnly: isReadOnly),
            CheckboxTest.Layout.default(labelText: "Patatas", helperText: "Bravas", icon: nil, isError: isError, hasDivider: true, isReadOnly: isReadOnly),
            CheckboxTest.Layout.default(labelText: "Kammthaar", helperText: nil, icon: Image(systemName: "heart.fill"), isError: isError, hasDivider: false, isReadOnly: isReadOnly),
            CheckboxTest.Layout.default(labelText: "Kammthaar", helperText: nil, icon: Image(systemName: "heart.fill"), isError: isError, hasDivider: true, isReadOnly: isReadOnly),
            CheckboxTest.Layout.default(labelText: "Patatas", helperText: "Bravas", icon: Image(systemName: "heart.fill"), isError: isError, hasDivider: false, isReadOnly: isReadOnly),
            CheckboxTest.Layout.default(labelText: "Patatas", helperText: "Bravas", icon: Image(systemName: "heart.fill"), isError: isError, hasDivider: true, isReadOnly: isReadOnly),

            CheckboxTest.Layout.inverse(labelText: "Takoyaki", helperText: nil, icon: nil, isError: isError, hasDivider: false, isReadOnly: isReadOnly),
            CheckboxTest.Layout.inverse(labelText: "Takoyaki", helperText: nil, icon: nil, isError: isError, hasDivider: true, isReadOnly: isReadOnly),
            CheckboxTest.Layout.inverse(labelText: "Patatas", helperText: "Bravas", icon: nil, isError: isError, hasDivider: false, isReadOnly: isReadOnly),
            CheckboxTest.Layout.inverse(labelText: "Patatas", helperText: "Bravas", icon: nil, isError: isError, hasDivider: true, isReadOnly: isReadOnly),
            CheckboxTest.Layout.inverse(labelText: "Kammthaar", helperText: nil, icon: Image(systemName: "heart.fill"), isError: isError, hasDivider: false, isReadOnly: isReadOnly),
            CheckboxTest.Layout.inverse(labelText: "Kammthaar", helperText: nil, icon: Image(systemName: "heart.fill"), isError: isError, hasDivider: true, isReadOnly: isReadOnly),
            CheckboxTest.Layout.inverse(labelText: "Patatas", helperText: "Bravas", icon: Image(systemName: "heart.fill"), isError: isError, hasDivider: false, isReadOnly: isReadOnly),
            CheckboxTest.Layout.inverse(labelText: "Patatas", helperText: "Bravas", icon: Image(systemName: "heart.fill"), isError: isError, hasDivider: true, isReadOnly: isReadOnly),
        ]
    }
    // swiftlint:enable line_length
}

// swiftlint:enable required_deinit

// MARK: - Checkbox Test

/// The test object which will define the `OUDSCheckbox` object to test
private struct CheckboxTest: View {

    enum Layout { // OUDSCheckbox.Layout is private, not accessible here
        case selectorOnly(isError: Bool,
                          isReadOnly: Bool)
        case `default`(labelText: String,
                       helperText: String?,
                       icon: Image?,
                       isError: Bool,
                       hasDivider: Bool,
                       isReadOnly: Bool)
        case inverse(labelText: String,
                     helperText: String?,
                     icon: Image?,
                     isError: Bool,
                     hasDivider: Bool,
                     isReadOnly: Bool)

        // swiftlint:disable line_length
        var description: String {
            switch self {
            case let .selectorOnly(isError, isReadOnly):
                return "layout-selectorOnly-\(isError ? "error" : "")-\(isReadOnly ? "readOnly" : "")"
            case let .default(labelText, helperText, icon, isError, hasDivider, isReadOnly):
                    return "layout-default-label-\(helperText != nil ? "withHelper" : "")-\(icon != nil ? "withIcon" : "")-\(isError ? "error" : "")-\(isReadOnly ? "readOnly" : "")-\(hasDivider ? "divider" : "")"
            case let .inverse(labelText, helperText, icon, isError, hasDivider, isReadOnly):
                    return "layout-inverse-label-\(helperText != nil ? "withHelper" : "")-\(icon != nil ? "withIcon" : "")-\(isError ? "error" : "")-\(isReadOnly ? "readOnly" : "")-\(hasDivider ? "divider" : "")"
            }
        }
        // swiftlint:enable line_length
    }

    @Environment(\.theme) private var theme
    @Environment(\.colorScheme) private var colorScheme

    let layout: Layout
    let selectorState: OUDSCheckbox.SelectorState
    let isDisabled: Bool
    let onColoredSurface: Bool

    var body: some View {
        if onColoredSurface {
            OUDSColoredSurface(color: theme.colors.colorSurfaceBrandPrimary.color(for: colorScheme), content: checkbox)
        } else {
            checkbox()
        }
    }

    func checkbox() -> some View {
        switch layout {
        case let .selectorOnly(isError, isReadOnly):
            OUDSCheckbox(state: .constant(selectorState),
                         isError: isError,
                         isReadOnly: isReadOnly)
            .disabled(isDisabled)
        case let .default(labelText, helperText, icon, isError, hasDivider, isReadOnly):
            OUDSCheckbox(state: .constant(selectorState),
                         labelText: labelText,
                         helperText: helperText,
                         icon: icon,
                         isInversed: false,
                         isError: isError,
                         isReadOnly: isReadOnly,
                         divider: hasDivider)
            .disabled(isDisabled)
        case let .inverse(labelText, helperText, icon, isError, hasDivider, isReadOnly):
            OUDSCheckbox(state: .constant(selectorState),
                         labelText: labelText,
                         helperText: helperText,
                         icon: icon,
                         isInversed: true,
                         isError: isError,
                         isReadOnly: isReadOnly,
                         divider: hasDivider)
            .disabled(isDisabled)
        }
    }
}

// MARK: - extension OUDSCheckbox.SelectorState

extension OUDSCheckbox.SelectorState {
    var name: String {
        switch self {
        case .selected:
            "Selected"
        case .unselected:
            "Unselected"
        case .undeterminate:
            "Undeterminate"
        }
    }
}
