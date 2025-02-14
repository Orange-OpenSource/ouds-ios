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

/// The model shared between `CheckboxConfiguration` view and `CheckboxPage` view.
final class CheckboxConfigurationModel: ComponentConfiguration {

    // MARK: - Properties

    @Published var status: DesignToolboxCheckboxStatus {
        didSet { updateCode() }
    }

    @Published var selectorState: OUDSCheckboxSelectorState {
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

    @Published var labelTextContent: String

    @Published var helperTextContent: String

    private var isReadOnly: Bool {
        status == .readOnly
    }

    // MARK: - Internal types

    enum DesignToolboxCheckboxStatus: CaseIterable, CustomStringConvertible { // CheckboxInternalState is not accessible
        case enabled
        case disabled
        case readOnly

        // No l10n, tehchnical names
        var description: String {
            switch self {
            case .enabled:
                "Enabled"
            case .disabled:
                "Disabled"
            case .readOnly:
                "Read only"
            }
        }

        var id: String { description }
    }

    enum DesignToolboxCheckboxLayout: CaseIterable, CustomStringConvertible { // Checkbox.Layout is not accessible
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
        status = .enabled
        selectorState = .selected
        layout = .default
        helperText = true
        icon = true
        isError = false
        divider = true
        labelTextContent = String(localized: "app_components_checkbox_label_text")
        helperTextContent = String(localized: "app_components_checkbox_helperText_text")
    }

    deinit { }

    // MARK: - Component Configuration

    override func updateCode() {
        if layout == .selectorOnly {
            code =
              """
            OUDSCheckboxOnly(state: $state\(isErrorPattern))
            \(disableCode))
            """
        } else {
            code =
              """
            OUDSCheckboxControlItem(state: $state, labelText: \"Label\"\(helperTextPatern)\(iconPatern)\(isInversedPattern)\(isErrorPattern)\(isReadOnlyPattern)\(dividerPatern))
            \(disableCode))
            """
        }
    }

    private var disableCode: String {
        ".disable(\(status == .disabled ? "true" : "false"))"
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
        if isError && status == .enabled && !isReadOnly {
            return ", isError: true"
        } else {
            return ""
        }
    }

    private var isReadOnlyPattern: String {
        if isReadOnly && !isError {
            return ", isReadOnly: true"
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
            DesignToolboxChoicePicker(title: "app_common_enabled_label", selection: $model.status) {
                ForEach(CheckboxConfigurationModel.DesignToolboxCheckboxStatus.allCases, id: \.id) { state in
                    Text(LocalizedStringKey(state.description)).tag(state)
                }
            }

            DesignToolboxChoicePicker(title: "app_components_checkbox_selection_label", selection: $model.selectorState) {
                ForEach(OUDSCheckboxSelectorState.allCases, id: \.id) { state in
                    Text(LocalizedStringKey(state.description)).tag(state)
                }
            }

            DesignToolboxChoicePicker(title: "app_components_checkbox_layout_label", selection: $model.layout) {
                ForEach(CheckboxConfigurationModel.DesignToolboxCheckboxLayout.allCases, id: \.id) { layout in
                    Text(LocalizedStringKey(layout.description)).tag(layout)
                }
            }

            if model.layout != .selectorOnly {
                Toggle("app_components_common_icon_label", isOn: $model.icon)
                    .typeHeadingMedium(theme)
                    .foregroundStyle(theme.colors.colorContentDefault.color(for: colorScheme))

                Toggle("app_components_common_divider_label", isOn: $model.divider)
                    .typeHeadingMedium(theme)
                    .foregroundStyle(theme.colors.colorContentDefault.color(for: colorScheme))

                Toggle("app_components_checkbox_helperText_label", isOn: $model.helperText)
                    .typeHeadingMedium(theme)
                    .foregroundStyle(theme.colors.colorContentDefault.color(for: colorScheme))
            }

            Toggle("app_components_common_onError_label", isOn: $model.isError)
                .typeHeadingMedium(theme)
                .foregroundStyle(theme.colors.colorContentDefault.color(for: colorScheme))
                .disabled(model.status != .enabled)

            DisclosureGroup("app_components_common_editContent_label") {
                DesignToolboxTextField(text: $model.labelTextContent,
                                       prompt: "app_component_common_userText_prompt",
                                       title: "app_components_common_labelText_label")
                if model.helperText {
                    DesignToolboxTextField(text: $model.helperTextContent,
                                           prompt: "app_component_common_userText_prompt",
                                           title: "app_components_common_helperText_label")
                }
            }
        }
    }
}
