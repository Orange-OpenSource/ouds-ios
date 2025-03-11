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

// MARK: - Radio Item Configuration Model

/// The model shared between `RadioItemConfiguration` view and `RadioItemPage` view.
final class RadioItemConfigurationModel: ComponentConfiguration {

    // MARK: - Properties

    @Published var enabled: Bool {
        didSet { updateCode() }
    }

    @Published var selection: Bool {
        didSet { updateCode() }
    }

    @Published var additionalLabelText: Bool {
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

    @Published var additionalLabelTextContent: String {
        didSet { updateCode() }
    }

    @Published var helperTextContent: String {
        didSet { updateCode() }
    }

    // MARK: - Initializer

    override init() {
        selection = false
        isError = false
        isReadOnly = false
        enabled = true
        additionalLabelText = true
        helperText = true
        icon = true
        layoutOrientation = .default
        divider = true
        labelTextContent = String(localized: "app_components_radio_label_text")
        additionalLabelTextContent = String(localized: "app_components_radio_additionalLabelText_text")
        helperTextContent = String(localized: "app_components_radio_helperText_text")
    }

    deinit { }

    // MARK: - Component Configuration

    override func updateCode() {
        code =
          """
        OUDSRadioItem(state: $state, labelText: \"\(labelTextContent)\"\(helperTextPatern)\(iconPatern)\(isInversedPattern)\(isErrorPattern)\(isReadOnlyPattern)\(dividerPatern))
        \(disableCode)
        """
    }

    private var disableCode: String {
        ".disable(\(enabled ? "false" : "true"))"
    }

    private var helperTextPatern: String {
        helperText ? ", helperText: \"\(helperTextContent)\")" : ""
    }

    private var iconPatern: String {
        icon ? ", icon: Image(decorative: \"ic_heart\")" : ""
    }

    private var isInversedPattern: String {
        layoutOrientation == .inverse ? ", isInversed: true" : ""
    }

    private var isErrorPattern: String {
        isError ? ", isError: true" : ""
    }

    private var isReadOnlyPattern: String {
        isReadOnly ? ", isReadOnly: true" : ""
    }

    private var dividerPatern: String {
        divider ? ", divider: true" : ""
    }
}

// MARK: - Radio Item Configuration View

struct RadioItemConfiguration: View {

    @ObservedObject var model: RadioItemConfigurationModel

    @Environment(\.theme) private var theme
    @Environment(\.colorScheme) private var colorScheme

    // swiftlint:disable closure_body_length
    var body: some View {
        VStack(alignment: .leading, spacing: theme.spaces.spaceFixedMedium) {
            Toggle("app_components_radio_selection_label", isOn: $model.selection)
                .typeHeadingMedium(theme)
                .foregroundStyle(theme.colors.colorContentDefault.color(for: colorScheme))
                .disabled(model.isError || model.isReadOnly)

            Toggle("app_common_enabled_label", isOn: $model.enabled)
                .typeHeadingMedium(theme)
                .foregroundStyle(theme.colors.colorContentDefault.color(for: colorScheme))
                .disabled(model.isError || model.isReadOnly)

            Toggle("app_components_common_onError_label", isOn: $model.isError)
                .typeHeadingMedium(theme)
                .foregroundStyle(theme.colors.colorContentDefault.color(for: colorScheme))
                .disabled(!model.enabled || model.isReadOnly)

            Toggle("app_components_common_readOnly_label", isOn: $model.isReadOnly)
                .typeHeadingMedium(theme)
                .foregroundStyle(theme.colors.colorContentDefault.color(for: colorScheme))
                .disabled(!model.enabled || model.isError)

            Toggle("app_components_radio_helperText_label", isOn: $model.helperText)
                .typeHeadingMedium(theme)
                .foregroundStyle(theme.colors.colorContentDefault.color(for: colorScheme))

            Toggle("app_components_radio_additionalLabelText_label", isOn: $model.additionalLabelText)
                .typeHeadingMedium(theme)
                .foregroundStyle(theme.colors.colorContentDefault.color(for: colorScheme))

            Toggle("app_components_common_icon_label", isOn: $model.icon)
                .typeHeadingMedium(theme)
                .foregroundStyle(theme.colors.colorContentDefault.color(for: colorScheme))

            Toggle("app_components_common_divider_label", isOn: $model.divider)
                .typeHeadingMedium(theme)
                .foregroundStyle(theme.colors.colorContentDefault.color(for: colorScheme))

            DesignToolboxChoicePicker(title: "app_components_common_orientation_label", selection: $model.layoutOrientation) {
                ForEach(DesignToolboxLayoutOrientation.allCases, id: \.id) { orientation in
                    Text(LocalizedStringKey(orientation.description)).tag(orientation)
                }
            }

            DisclosureGroup("app_components_common_editContent_label") {
                DesignToolboxTextField(
                    text: $model.labelTextContent,
                    prompt: "app_components_common_userText_prompt",
                    title: "app_components_common_labelText_label")

                if model.additionalLabelText {
                    DesignToolboxTextField(
                        text: $model.additionalLabelTextContent,
                        prompt: "app_components_common_userText_prompt",
                        title: "app_components_radio_additionalLabelText_label")
                }

                if model.helperText {
                    DesignToolboxTextField(
                        text: $model.helperTextContent,
                        prompt: "app_components_common_userText_prompt",
                        title: "app_components_common_helperText_label")
                }
            }
        }
        // swiftlint:enable closure_body_length
    }
}
