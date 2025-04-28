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

// MARK: - Checkbox Item Configuration Model

/// The model shared between `CheckboxItemConfiguration` view and `CheckboxItemPage` view.
/// Related to `OUDSCheckboxItem` (i.e. with 2 available values).
final class CheckboxItemConfigurationModel: ComponentConfiguration {

    // MARK: - Properties

    @Published var enabled: Bool {
        didSet { updateCode() }
    }

    @Published var indicatorState: Bool {
        didSet { updateCode() }
    }

    @Published var helperText: Bool {
        didSet { updateCode() }
    }

    @Published var icon: Bool {
        didSet { updateCode() }
    }

    @Published var flipIcon: Bool {
        didSet { updateCode() }
    }

    @Published var isError: Bool {
        didSet { updateCode() }
    }

    @Published var isReadOnly: Bool {
        didSet { updateCode() }
    }

    @Published var divider: Bool {
        didSet { updateCode() }
    }

    @Published var layoutOrientation: DesignToolboxLayoutOrientation {
        didSet { updateCode() }
    }

    @Published var labelTextContent: String {
        didSet { updateCode() }
    }

    @Published var helperTextContent: String {
        didSet { updateCode() }
    }

    // MARK: - Initializer

    override init() {
        indicatorState = true
        isError = false
        isReadOnly = false
        enabled = true
        helperText = true
        icon = true
        flipIcon = false
        layoutOrientation = .default
        divider = false
        labelTextContent = String(localized: "app_components_common_label_label")
        helperTextContent = String(localized: "app_components_controlItem_helperText_label")
    }

    deinit { }

    // MARK: - Component Configuration

    // swiftlint:disable line_length
    override func updateCode() {
        code =
          """
        OUDSCheckboxItem(isOn: $isOn, label: \"\(labelTextContent)\"\(helperTextPattern)\(iconPattern)\(flipIconPattern)\(isReversedPattern)\(isErrorPattern)\(isReadOnlyPattern)\(dividerPattern))
        \(disableCode)
        """
    }
    // swiftlint:enable line_length

    private var disableCode: String {
        ".disabled(\(enabled ? "false" : "true"))"
    }

    private var helperTextPattern: String {
        helperText ? ", helper: \"\(helperTextContent)\")" : ""
    }

    private var iconPattern: String {
        icon ? ", icon: Image(systemName: \"figure.handball\")" : ""
    }

    private var flipIconPattern: String {
        flipIcon ? ", flipIcon: true" : ""
    }

    private var isReversedPattern: String {
        layoutOrientation == .reversed ? ", isReversed: true" : ""
    }

    private var isErrorPattern: String {
        isError ? ", isError: true" : ""
    }

    private var isReadOnlyPattern: String {
        isReadOnly ? ", isReadOnly: true" : ""
    }

    private var dividerPattern: String {
        divider ? ", divider: true" : ""
    }
}

// MARK: - Checkbox Item Configuration View

struct CheckboxItemConfiguration: View {

    @ObservedObject var model: CheckboxItemConfigurationModel

    @Environment(\.theme) private var theme

    var body: some View {
        VStack(alignment: .leading, spacing: theme.spaces.spaceFixedMedium) {

            Toggle("app_components_checkbox_selection_label", isOn: $model.indicatorState)
                .typeHeadingMedium(theme)
                .oudsForegroundStyle(theme.colors.colorContentDefault)

            Toggle("app_common_enabled_label", isOn: $model.enabled)
                .typeHeadingMedium(theme)
                .oudsForegroundStyle(theme.colors.colorContentDefault)
                .disabled(model.isError || model.isReadOnly)

            Toggle("app_components_common_error_label", isOn: $model.isError)
                .typeHeadingMedium(theme)
                .oudsForegroundStyle(theme.colors.colorContentDefault)
                .disabled(!model.enabled || model.isReadOnly)

            Toggle("app_components_controlItem_readOnly_label", isOn: $model.isReadOnly)
                .typeHeadingMedium(theme)
                .oudsForegroundStyle(theme.colors.colorContentDefault)
                .disabled(!model.enabled || model.isError)

            Toggle("app_components_common_helperText_label", isOn: $model.helperText)
                .typeHeadingMedium(theme)
                .oudsForegroundStyle(theme.colors.colorContentDefault)

            Toggle("app_components_controlItem_icon_label", isOn: $model.icon)
                .typeHeadingMedium(theme)
                .oudsForegroundStyle(theme.colors.colorContentDefault)

            Toggle("app_components_controlItem_divider_label", isOn: $model.divider)
                .typeHeadingMedium(theme)
                .oudsForegroundStyle(theme.colors.colorContentDefault)

            Toggle("app_components_common_flipIcon_label", isOn: $model.flipIcon)
                .typeHeadingMedium(theme)
                .oudsForegroundStyle(theme.colors.colorContentDefault)

            DesignToolboxChoicePicker(title: "app_components_common_orientation_label", selection: $model.layoutOrientation) {
                ForEach(DesignToolboxLayoutOrientation.allCases, id: \.id) { orientation in
                    Text(LocalizedStringKey(orientation.description)).tag(orientation)
                }
            }

            DisclosureGroup("app_components_common_editContent_label") {
                DesignToolboxTextField(text: $model.labelTextContent, prompt: "app_components_common_userText_prompt", title: "app_components_common_label_label")
                if model.helperText {
                    DesignToolboxTextField(text: $model.helperTextContent, prompt: "app_components_common_userText_prompt", title: "app_components_common_helperText_label")
                }
            }
        }
    }
}
