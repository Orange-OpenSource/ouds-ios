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
import OUDSTokensRaw
import OUDSTokensSemantic
import SnapshotTesting
import SwiftUI
import XCTest

// swiftlint:disable required_deinit

// MARK: - Test Cases

/// Tests the UI rendering of the `OUDSCheckboxIndeterminate` and `OUDSCheckboxItemIndeterminate` for each parameter.
/// `OUDSCheckbox` and `OUDSCheckboxItem` won't be tested as, until today, are based on the same layouts and look and feels, and the only difference
/// is in the management of the states.
final class OUDSCheckboxUITests: XCTestCase {

    /// Tests all buttons configuration in the `OrangeTheme` with the `light` color schemes.
    @MainActor func testAllCheckboxesOrangeThemeLight() {
        let theme = OrangeTheme()
        let interfaceStyle = UIUserInterfaceStyle.light
        testAllCheckboxes(theme: theme, interfaceStyle: interfaceStyle)
    }

    /// Tests all buttons configuration in the `OrangeTheme` with the `dark` color schemes.
    @MainActor func testAllCheckboxesOrangeThemeDark() {
        let theme = OrangeTheme()
        let interfaceStyle = UIUserInterfaceStyle.dark
        testAllCheckboxes(theme: theme, interfaceStyle: interfaceStyle)
    }

    /// Tests all buttons configuration in the `InverseTheme` with the `light` color schemes.
    @MainActor func testAllCheckboxesInverseThemeLight() {
        let theme = InverseTheme()
        let interfaceStyle = UIUserInterfaceStyle.light
        testAllCheckboxes(theme: theme, interfaceStyle: interfaceStyle)
    }

    /// Tests all buttons configuration in the `InverseTheme` with the `dark` color schemes.
    @MainActor func testAllCheckboxesInverseThemeDark() {
        let theme = InverseTheme()
        let interfaceStyle = UIUserInterfaceStyle.dark
        testAllCheckboxes(theme: theme, interfaceStyle: interfaceStyle)
    }

    // MARK: - Helpers

    /// This function tests all checkboxes configuration for the given theme and color scheme on a standard surface.
    ///
    /// **/!\ It does not test the hover and pressed states.**
    ///
    /// It iterates through all `OUDSCheckboxIndicatorState`, for all combinations of layouts in enabled and disabled state.
    ///
    /// - Parameters:
    ///   - theme: The theme (`OUDSTheme`) from which to retrieve color tokens.
    ///   - interfaceStyle: The user interface style (light or dark) for which to test the colors.
    @MainActor private func testAllCheckboxes(theme: OUDSTheme, interfaceStyle: UIUserInterfaceStyle) {
        for indicatorState in OUDSCheckboxIndicatorState.allCases {
            for someLayout in availableLayouts(isError: false, isReadOnly: false) {
                testCheckbox(theme: theme,
                             interfaceStyle: interfaceStyle,
                             layout: someLayout,
                             indicatorState: indicatorState,
                             isDisabled: false)

                testCheckbox(theme: theme,
                             interfaceStyle: interfaceStyle,
                             layout: someLayout,
                             indicatorState: indicatorState,
                             isDisabled: true)
            }
        }

        for indicatorState in OUDSCheckboxIndicatorState.allCases {
            for someLayout in availableLayouts(isError: true, isReadOnly: false) {
                testCheckbox(theme: theme,
                             interfaceStyle: interfaceStyle,
                             layout: someLayout,
                             indicatorState: indicatorState,
                             isDisabled: false)
            }
        }

        for indicatorState in OUDSCheckboxIndicatorState.allCases {
            for someLayout in availableLayouts(isError: false, isReadOnly: true) {
                testCheckbox(theme: theme,
                             interfaceStyle: interfaceStyle,
                             layout: someLayout,
                             indicatorState: indicatorState,
                             isDisabled: false)
            }
        }
    }

    /// This function tests checkbox according to all parameters of the configuration available on a `OUDSCheckbox`
    /// of `OUDSCheckboxItem` for the given theme and color schemes.
    ///
    /// It captures a snapshot for each tests. The snapshots are saved with names based on each parameters
    ///    "test_<themeName>_<colorScheme>.<layout>_<indicatorState>_<disabledPatern>"
    ///
    /// **/!\ It does not test the hover and pressed states.**
    ///
    /// - Parameters:
    ///   - theme: The theme (OUDSTheme)
    ///   - interfaceStyle: The user interface style (light or dark)
    ///   - layout: the layout of the checkbox
    ///   - indicatorState: the indicator state of the checkbox
    ///   - isDisabled: the disabled flag
    @MainActor private func testCheckbox(theme: OUDSTheme,
                                         interfaceStyle: UIUserInterfaceStyle,
                                         layout: CheckboxIndeterminateTest.Layout,
                                         indicatorState: OUDSCheckboxIndicatorState,
                                         isDisabled: Bool) {
        // Generate the illustration for the specified configuration
        let illustration = OUDSThemeableView(theme: theme) {
            CheckboxIndeterminateTest(layout: layout,
                                      indicatorState: indicatorState,
                                      isDisabled: isDisabled)
            .background(theme.colors.colorBgPrimary.color(for: interfaceStyle == .light ? .light : .dark))
        }

        // Create a unique snapshot name based on the current configuration :
        // test_<themeName>_<colorScheme>.<layout>_<indicatorState>_<disabledPatern> where:
        // - `disabledPatern` is empty if not disabled
        let testName = "test_\(theme.name)Theme_\(interfaceStyle == .light ? "Light" : "Dark")"
        let disabledPatern = isDisabled ? "_Disabled" : ""
        let name = "\(layout.description.camelCase)_\(indicatorState.name)_\(disabledPatern)"

        // Capture the snapshot of the illustration with the correct user interface style and save it with the snapshot name
        assertIllustration(illustration,
                           on: interfaceStyle,
                           named: name,
                           testName: testName)
    }

    // swiftlint:disable line_length
    private func availableLayouts(isError: Bool, isReadOnly: Bool) -> [CheckboxIndeterminateTest.Layout] {
        [
            CheckboxIndeterminateTest.Layout.indicatorOnly(isError: isError),

            CheckboxIndeterminateTest.Layout.default(labelText: "Takoyaki", helperText: nil, icon: nil, isError: isError, hasDivider: false, isReadOnly: isReadOnly),
            CheckboxIndeterminateTest.Layout.default(labelText: "Takoyaki", helperText: nil, icon: nil, isError: isError, hasDivider: true, isReadOnly: isReadOnly),
            CheckboxIndeterminateTest.Layout.default(labelText: "Patatas", helperText: "Bravas", icon: nil, isError: isError, hasDivider: false, isReadOnly: isReadOnly),
            CheckboxIndeterminateTest.Layout.default(labelText: "Patatas", helperText: "Bravas", icon: nil, isError: isError, hasDivider: true, isReadOnly: isReadOnly),
            CheckboxIndeterminateTest.Layout.default(labelText: "Kammthaar", helperText: nil, icon: Image(systemName: "heart.fill"), isError: isError, hasDivider: false, isReadOnly: isReadOnly),
            CheckboxIndeterminateTest.Layout.default(labelText: "Kammthaar", helperText: nil, icon: Image(systemName: "heart.fill"), isError: isError, hasDivider: true, isReadOnly: isReadOnly),
            CheckboxIndeterminateTest.Layout.default(labelText: "Patatas", helperText: "Bravas", icon: Image(systemName: "heart.fill"), isError: isError, hasDivider: false, isReadOnly: isReadOnly),
            CheckboxIndeterminateTest.Layout.default(labelText: "Patatas", helperText: "Bravas", icon: Image(systemName: "heart.fill"), isError: isError, hasDivider: true, isReadOnly: isReadOnly),

            CheckboxIndeterminateTest.Layout.inverse(labelText: "Takoyaki", helperText: nil, icon: nil, isError: isError, hasDivider: false, isReadOnly: isReadOnly),
            CheckboxIndeterminateTest.Layout.inverse(labelText: "Takoyaki", helperText: nil, icon: nil, isError: isError, hasDivider: true, isReadOnly: isReadOnly),
            CheckboxIndeterminateTest.Layout.inverse(labelText: "Patatas", helperText: "Bravas", icon: nil, isError: isError, hasDivider: false, isReadOnly: isReadOnly),
            CheckboxIndeterminateTest.Layout.inverse(labelText: "Patatas", helperText: "Bravas", icon: nil, isError: isError, hasDivider: true, isReadOnly: isReadOnly),
            CheckboxIndeterminateTest.Layout.inverse(labelText: "Kammthaar", helperText: nil, icon: Image(systemName: "heart.fill"), isError: isError, hasDivider: false, isReadOnly: isReadOnly),
            CheckboxIndeterminateTest.Layout.inverse(labelText: "Kammthaar", helperText: nil, icon: Image(systemName: "heart.fill"), isError: isError, hasDivider: true, isReadOnly: isReadOnly),
            CheckboxIndeterminateTest.Layout.inverse(labelText: "Patatas", helperText: "Bravas", icon: Image(systemName: "heart.fill"), isError: isError, hasDivider: false, isReadOnly: isReadOnly),
            CheckboxIndeterminateTest.Layout.inverse(labelText: "Patatas", helperText: "Bravas", icon: Image(systemName: "heart.fill"), isError: isError, hasDivider: true, isReadOnly: isReadOnly),
        ]
    }
    // swiftlint:enable line_length
}

// swiftlint:enable required_deinit

// MARK: - Checkbox Test

/// The test object which will define the `OUDSCheckboxIndeterminate` or `OUDSCheckboxItemIndeterminate`object to test.
private struct CheckboxIndeterminateTest: View {

    enum Layout { // Checkbox.Layout is private, not accessiblefrom  here
        case indicatorOnly(isError: Bool)
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
            case let .indicatorOnly(isError):
                return "layout-indicatorOnly-\(isError ? "error" : "")"
            case let .default(_, helperText, icon, isError, hasDivider, isReadOnly):
                    return "layout-default-label-\(helperText != nil ? "withHelper" : "")-\(icon != nil ? "withIcon" : "")-\(isError ? "error" : "")-\(isReadOnly ? "readOnly" : "")-\(hasDivider ? "divider" : "")"
            case let .inverse(_, helperText, icon, isError, hasDivider, isReadOnly):
                    return "layout-inverse-label-\(helperText != nil ? "withHelper" : "")-\(icon != nil ? "withIcon" : "")-\(isError ? "error" : "")-\(isReadOnly ? "readOnly" : "")-\(hasDivider ? "divider" : "")"
            }
        }
        // swiftlint:enable line_length
    }

    @Environment(\.theme) private var theme
    @Environment(\.colorScheme) private var colorScheme

    let layout: Layout
    let indicatorState: OUDSCheckboxIndicatorState
    let isDisabled: Bool

    var body: some View {
        checkbox()
    }

    @ViewBuilder
    func checkbox() -> some View {
        switch layout {
        case let .indicatorOnly(isError):
            OUDSCheckboxIndeterminate(selection: .constant(indicatorState),
                                      accessibilityLabel: "Bazinga!",
                                      isError: isError)
            .disabled(isDisabled)
        case let .default(labelText, helperText, icon, isError, hasDivider, isReadOnly):
            OUDSCheckboxItemIndeterminate(selection: .constant(indicatorState),
                                          labelText: labelText,
                                          helperText: helperText,
                                          icon: icon,
                                          isInversed: false,
                                          isError: isError,
                                          isReadOnly: isReadOnly,
                                          hasDivider: hasDivider)
            .disabled(isDisabled)
        case let .inverse(labelText, helperText, icon, isError, hasDivider, isReadOnly):
            OUDSCheckboxItemIndeterminate(selection: .constant(indicatorState),
                                          labelText: labelText,
                                          helperText: helperText,
                                          icon: icon,
                                          isInversed: true,
                                          isError: isError,
                                          isReadOnly: isReadOnly,
                                          hasDivider: hasDivider)
            .disabled(isDisabled)
        }
    }
}

// MARK: - extension OUDSCheckboxIndicatorState

extension OUDSCheckboxIndicatorState {
    var name: String {
        switch self {
        case .selected:
            "Selected"
        case .unselected:
            "Unselected"
        case .indeterminate:
            "Indeterminate"
        }
    }
}
