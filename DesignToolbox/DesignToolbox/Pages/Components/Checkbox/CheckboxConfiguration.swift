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

import OUDSComponents
import SwiftUI

// MARK: - Checkbox Configuration Model

/// The model shared between `CheckboxPageConfiguration` view and `SwitchPageComponent` view.
final class CheckboxConfigurationModel: ComponentConfiguration {

    // MARK: - Properties

    @Published var isEnabled: Bool {
        didSet { updateCode() }
    }

    @Published var selectorState: OUDSCheckbox.SelectorState {
        didSet { updateCode() }
    }

    @Published var layout: DesignToolboxCheckboxLayout {
        didSet { updateCode() }
    }

    @Published var helperText: Bool {
        didSet { updateCode() }
    }

    @Published var icon: Bool {
        didSet { updateCode() }
    }

    @Published var isError: Bool {
        didSet { updateCode() }
    }

    @Published var divider: Bool {
        didSet { updateCode() }
    }

    // MARK: - Internal types

    enum DesignToolboxCheckboxLayout: CaseIterable, CustomStringConvertible { // OUDSCheckbox.Layouy is not accessible
        case selectorOnly
        case `default`
        case inverse

        // No l10n, tehchnical names
        var description: String {
            switch self {
            case .selectorOnly:
                "Checkbox only"
            case .default:
                "Left action"
            case .inverse:
                "Right action"
            }
        }

        var id: String { description }
    }

    // MARK: - Initializer

    override init() {
        isEnabled = true
        selectorState = .selected
        layout = .selectorOnly
        helperText = true
        icon = true
        isError = false
        divider = true
    }

    deinit { }

    // MARK: - Component Configuration

    override func updateCode() {
        if layout == .selectorOnly {
            code =
              """
            OUDSCheckbox(state: $state\(isErrorPattern))
            \(disableCode))
            """
        } else {
            code =
              """
            OUDSCheckbox(state: $state, label: \"Label\"\(helperTextPatern)\(iconPatern)\(isInversedPattern)\(isErrorPattern)\(dividerPatern))
            \(disableCode))
            """
        }
    }

    private var disableCode: String {
        ".disable(\(isEnabled ? "false" : "true"))"
    }

    private var helperTextPatern: String {
        if helperText {
            return ", helperText: \"\(String(localized: "app_components_checkbox_helperText_text"))\""
        } else {
            return ""
        }
    }

    private var iconPatern: String {
        if icon {
            return ", icon: Image(decorative: \"ic_heart\")"
        } else {
            return ""
        }
    }

    private var isInversedPattern: String {
        layout == .inverse ? ", isInversed: true" : ""
    }

    private var isErrorPattern: String {
        if isError && isEnabled {
            return ", isError: true"
        } else {
            return ""
        }
    }

    private var dividerPatern: String {
        divider ? ", divider: true" : ""
    }
}

// MARK: - Checkbox Configuration View

struct CheckboxConfiguration: View {

    @ObservedObject var model: CheckboxConfigurationModel

    @Environment(\.theme) private var theme
    @Environment(\.colorScheme) private var colorScheme

    var body: some View {
        VStack(alignment: .leading, spacing: theme.spaces.spaceFixedMedium) {
            Toggle("app_common_enabled_label", isOn: $model.isEnabled)
                .typeHeadingMedium(theme)
                .foregroundStyle(theme.colors.colorContentDefault.color(for: colorScheme))

            DesignToolboxChoicePicker(title: "app_components_checkbox_selection_label", selection: $model.selectorState) {
                ForEach(OUDSCheckbox.SelectorState.allCases, id: \.id) { state in
                    Text(LocalizedStringKey(state.description)).tag(state)
                }
            }

            DesignToolboxChoicePicker(title: "app_components_checkbox_layout_label", selection: $model.layout) {
                ForEach(CheckboxConfigurationModel.DesignToolboxCheckboxLayout.allCases, id: \.id) { layout in
                    Text(LocalizedStringKey(layout.description)).tag(layout)
                }
            }

            Toggle("app_components_common_icon_label", isOn: $model.icon)
                .typeHeadingMedium(theme)
                .foregroundStyle(theme.colors.colorContentDefault.color(for: colorScheme))
                .disabled(model.layout == .selectorOnly)

            Toggle("app_components_common_divider_label", isOn: $model.divider)
                .typeHeadingMedium(theme)
                .foregroundStyle(theme.colors.colorContentDefault.color(for: colorScheme))
                .disabled(model.layout == .selectorOnly)

            Toggle("app_components_checkbox_helperText_label", isOn: $model.helperText)
                .typeHeadingMedium(theme)
                .foregroundStyle(theme.colors.colorContentDefault.color(for: colorScheme))
                .disabled(model.layout == .selectorOnly)

            Toggle("app_components_common_onError_label", isOn: $model.isError)
                .typeHeadingMedium(theme)
                .foregroundStyle(theme.colors.colorContentDefault.color(for: colorScheme))
                .disabled(!model.isEnabled)
        }
    }
}

// MARK: - Checkbox selector state extension

extension OUDSCheckbox.SelectorState: @retroactive CaseIterable, @retroactive CustomStringConvertible {
    nonisolated(unsafe) public static var allCases: [OUDSCheckbox.SelectorState] = [.selected, .unselected, .undeterminate]

    // No l10n, tehchnical names
    public var description: String {
        switch self {
        case .selected:
            "Selected"
        case .unselected:
            "Unselected"
        case .undeterminate:
            "Undeterminate"
        }
    }

    var id: String { description }
}
