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
import OUDSThemesOrange
import OUDSTokensRaw
import OUDSTokensSemantic
import SnapshotTesting
import SwiftUI
import XCTest

// swiftlint:disable required_deinit

// MARK: - Test Cases

/// Tests the UI rendering of the `OUDSSwitch` and `OUDSSwitchItem` for each parameter
final class OUDSSwitchUITests: XCTestCase {

    /// Tests all switches configuration in the `OrangeTheme` with the `light` color schemes.
    @MainActor func testAllSwitchesOrangeThemeLight() {
        let theme = OrangeTheme()
        let interfaceStyle = UIUserInterfaceStyle.light
        testAllSwitches(theme: theme, interfaceStyle: interfaceStyle)
    }

    /// Tests all switches configuration in the `OrangeTheme` with the `dark` color schemes.
    @MainActor func testAllSwitchesOrangeThemeDark() {
        let theme = OrangeTheme()
        let interfaceStyle = UIUserInterfaceStyle.dark
        testAllSwitches(theme: theme, interfaceStyle: interfaceStyle)
    }

    // MARK: - Helpers

    /// This function tests all switches configuration for the given theme and color scheme on a standard surface.
    ///
    /// **/!\ It does not test the hover and pressed states.**
    ///
    /// It iterates through all combinations of layouts in enabled and disabled state.
    ///
    /// - Parameters:
    ///   - theme: The theme (`OUDSTheme`) from which to retrieve color tokens.
    ///   - interfaceStyle: The user interface style (light or dark) for which to test the colors.
    @MainActor private func testAllSwitches(theme: OUDSTheme, interfaceStyle: UIUserInterfaceStyle) {
        for indicatorState in [true, false] {
            for someLayout in availableLayouts(isError: false, isReadOnly: false) {
                testSwitch(theme: theme,
                           interfaceStyle: interfaceStyle,
                           layout: someLayout,
                           indicatorState: indicatorState,
                           isDisabled: false)

                testSwitch(theme: theme,
                           interfaceStyle: interfaceStyle,
                           layout: someLayout,
                           indicatorState: indicatorState,
                           isDisabled: true)
            }
        }

        for indicatorState in [true, false] {
            for someLayout in availableLayouts(isError: true, isReadOnly: false) {
                testSwitch(theme: theme,
                           interfaceStyle: interfaceStyle,
                           layout: someLayout,
                           indicatorState: indicatorState,
                           isDisabled: false)
            }
        }

        for indicatorState in [true, false] {
            for someLayout in availableLayouts(isError: false, isReadOnly: true) {
                testSwitch(theme: theme,
                           interfaceStyle: interfaceStyle,
                           layout: someLayout,
                           indicatorState: indicatorState,
                           isDisabled: false)
            }
        }
    }

    /// This function tests radio button according to all parameters of the configuration available on a `OUDSSwitch`
    /// or `OUDSSwitchItem` for the given theme and color schemes and on a colored surface or not.
    ///
    /// It captures a snapshot for each tests. The snapshots are saved with names based on each parameters
    ///    "test_<themeName>_<colorScheme>.<coloreSurfacePatern><layout>_<indicatorState>_<disabledPatern>"
    ///
    /// **/!\ It does not test the hover and pressed states.**
    ///
    /// - Parameters:
    ///   - theme: The theme (OUDSTheme)
    ///   - interfaceStyle: The user interface style (light or dark)
    ///   - layout: the layout of the radio button
    ///   - indicatorState: the indicator state of the radio button (`true` if selected, `false` if not)
    ///   - isDisabled: the disabled flag
    @MainActor private func testSwitch(theme: OUDSTheme,
                                       interfaceStyle: UIUserInterfaceStyle,
                                       layout: SwitchTest.Layout,
                                       indicatorState: Bool,
                                       isDisabled: Bool) {
        // Generate the illustration for the specified configuration
        let illustration = OUDSThemeableView(theme: theme) {
            SwitchTest(layout: layout,
                       indicatorState: indicatorState,
                       isDisabled: isDisabled)
            .background(theme.colors.colorBgPrimary.color(for: interfaceStyle.colorScheme))
        }

        // Create a unique snapshot name based on the current configuration :
        // test_<themeName>_<colorScheme>.<layout>_<indicatorState>_<disabledPatern> where:
        // - `disabledPatern` is empty if not disabled
        let testName = "test_\(theme.name)Theme_\(interfaceStyle == .light ? "Light" : "Dark")"
        let disabledPatern = isDisabled ? "_Disabled" : ""
        let name = "\(layout.description.camelCase)_\(indicatorState ? "on" : "off")_\(disabledPatern)"

        // Capture the snapshot of the illustration with the correct user interface style and save it with the snapshot name
        assertIllustration(illustration,
                           on: interfaceStyle,
                           named: name,
                           testName: testName)
    }

    private func availableLayouts(isError: Bool, isReadOnly: Bool) -> [SwitchTest.Layout] {
        [
            SwitchTest.Layout.indicatorOnly,

            SwitchTest.Layout.default(label: "Takoyaki", helper: nil, icon: nil, isError: isError, hasDivider: false, isReadOnly: isReadOnly),
            SwitchTest.Layout.default(label: "Takoyaki", helper: nil, icon: nil, isError: isError, hasDivider: true, isReadOnly: isReadOnly),
            SwitchTest.Layout.default(label: "Patatas", helper: "Bravas", icon: nil, isError: isError, hasDivider: false, isReadOnly: isReadOnly),
            SwitchTest.Layout.default(label: "Patatas", helper: "Bravas", icon: nil, isError: isError, hasDivider: true, isReadOnly: isReadOnly),
            SwitchTest.Layout.default(label: "Patatas", helper: nil, icon: nil, isError: isError, hasDivider: false, isReadOnly: isReadOnly),
            SwitchTest.Layout.default(label: "Patatas", helper: nil, icon: nil, isError: isError, hasDivider: true, isReadOnly: isReadOnly),
            SwitchTest.Layout.default(label: "Patatas", helper: "Bravas", icon: nil, isError: isError, hasDivider: false, isReadOnly: isReadOnly),
            SwitchTest.Layout.default(label: "Patatas", helper: "Bravas", icon: nil, isError: isError, hasDivider: true, isReadOnly: isReadOnly),
            SwitchTest.Layout.default(label: "Kammthaar", helper: nil, icon: Image(systemName: "heart.fill"), isError: isError, hasDivider: false, isReadOnly: isReadOnly),
            SwitchTest.Layout.default(label: "Kammthaar", helper: nil, icon: Image(systemName: "heart.fill"), isError: isError, hasDivider: true, isReadOnly: isReadOnly),
            SwitchTest.Layout.default(label: "Patatas", helper: "Bravas", icon: Image(systemName: "heart.fill"), isError: isError, hasDivider: false, isReadOnly: isReadOnly),
            SwitchTest.Layout.default(label: "Patatas", helper: "Bravas", icon: Image(systemName: "heart.fill"), isError: isError, hasDivider: true, isReadOnly: isReadOnly),
            SwitchTest.Layout.default(label: "Patatas", helper: "Bravas", icon: Image(systemName: "heart.fill"), isError: isError, hasDivider: false, isReadOnly: isReadOnly),
            SwitchTest.Layout.default(label: "Patatas", helper: "Bravas", icon: Image(systemName: "heart.fill"), isError: isError, hasDivider: true, isReadOnly: isReadOnly),

            SwitchTest.Layout.inverse(label: "Takoyaki", helper: nil, icon: nil, isError: isError, hasDivider: false, isReadOnly: isReadOnly),
            SwitchTest.Layout.inverse(label: "Takoyaki", helper: nil, icon: nil, isError: isError, hasDivider: true, isReadOnly: isReadOnly),
            SwitchTest.Layout.inverse(label: "Patatas", helper: "Bravas", icon: nil, isError: isError, hasDivider: false, isReadOnly: isReadOnly),
            SwitchTest.Layout.inverse(label: "Patatas", helper: "Bravas", icon: nil, isError: isError, hasDivider: true, isReadOnly: isReadOnly),
            SwitchTest.Layout.inverse(label: "Patatas", helper: nil, icon: nil, isError: isError, hasDivider: false, isReadOnly: isReadOnly),
            SwitchTest.Layout.inverse(label: "Patatas", helper: nil, icon: nil, isError: isError, hasDivider: true, isReadOnly: isReadOnly),
            SwitchTest.Layout.inverse(label: "Patatas", helper: "Bravas", icon: nil, isError: isError, hasDivider: false, isReadOnly: isReadOnly),
            SwitchTest.Layout.inverse(label: "Patatas", helper: "Bravas", icon: nil, isError: isError, hasDivider: true, isReadOnly: isReadOnly),
            SwitchTest.Layout.inverse(label: "Kammthaar", helper: nil, icon: Image(systemName: "heart.fill"), isError: isError, hasDivider: false, isReadOnly: isReadOnly),
            SwitchTest.Layout.inverse(label: "Kammthaar", helper: nil, icon: Image(systemName: "heart.fill"), isError: isError, hasDivider: true, isReadOnly: isReadOnly),
            SwitchTest.Layout.inverse(label: "Patatas", helper: "Bravas", icon: Image(systemName: "heart.fill"), isError: isError, hasDivider: false, isReadOnly: isReadOnly),
            SwitchTest.Layout.inverse(label: "Patatas", helper: "Bravas", icon: Image(systemName: "heart.fill"), isError: isError, hasDivider: true, isReadOnly: isReadOnly),
            SwitchTest.Layout.inverse(label: "Patatas", helper: "Bravas", icon: Image(systemName: "heart.fill"), isError: isError, hasDivider: false, isReadOnly: isReadOnly),
            SwitchTest.Layout.inverse(label: "Patatas", helper: "Bravas", icon: Image(systemName: "heart.fill"), isError: isError, hasDivider: true, isReadOnly: isReadOnly),
        ]
    }
}

// swiftlint:enable required_deinit

// MARK: - Switch Test

/// The test object which will define the `OUDSSwitch` or `OUDSSwitchItem`object to test
private struct SwitchTest: View {

    enum Layout { // ControlItemLabel.LayoutData is not accessible, need to fake it here
        case indicatorOnly
        case `default`(label: String,
                       helper: String?,
                       icon: Image?,
                       isError: Bool,
                       hasDivider: Bool,
                       isReadOnly: Bool)
        case inverse(label: String,
                     helper: String?,
                     icon: Image?,
                     isError: Bool,
                     hasDivider: Bool,
                     isReadOnly: Bool)

        // swiftlint:disable line_length
        var description: String {
            switch self {
            case .indicatorOnly:
                return "layout-indicatorOnly"
            case let .default(_, helper, icon, isError, hasDivider, isReadOnly):
                return "layout-default-label-\(helper != nil ? "withHelper" : "")-\(icon != nil ? "withIcon" : "")-\(isError ? "error" : "")-\(isReadOnly ? "readOnly-" : "-")\(hasDivider ? "divider" : "")"
            case let .inverse(_, helper, icon, isError, hasDivider, isReadOnly):
                return "layout-inverse-label-\(helper != nil ? "withHelper" : "")-\(icon != nil ? "withIcon" : "")-\(isError ? "error" : "")-\(isReadOnly ? "readOnly" : "")-\(hasDivider ? "divider" : "")"
            }
        }
        // swiftlint:enable line_length
    }

    @Environment(\.theme) private var theme
    @Environment(\.colorScheme) private var colorScheme

    let layout: Layout
    let indicatorState: Bool
    let isDisabled: Bool

    var body: some View {
        switch layout {
        case .indicatorOnly:
            OUDSSwitch(isOn: .constant(indicatorState), accessibilityLabel: "Bazinga!")
                .disabled(isDisabled)
        case let .default(label, helper, icon, isError, hasDivider, isReadOnly):
            OUDSSwitchItem(isOn: .constant(indicatorState),
                           label: label,
                           helper: helper,
                           icon: icon,
                           isReversed: false,
                           isError: isError,
                           isReadOnly: isReadOnly,
                           hasDivider: hasDivider)
            .disabled(isDisabled)
        case let .inverse(label, helper, icon, isError, hasDivider, isReadOnly):
            OUDSSwitchItem(isOn: .constant(indicatorState),
                           label: label,
                           helper: helper,
                           icon: icon,
                           isReversed: true,
                           isError: isError,
                           isReadOnly: isReadOnly,
                           hasDivider: hasDivider)
            .disabled(isDisabled)
        }
    }
}
