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

    @Published var flipIcon: Bool {
        didSet { updateCode() }
    }

    @Published var isError: Bool {
        didSet { updateCode() }
    }

    @Published var isReadOnly: Bool {
        didSet { updateCode() }
    }

    @Published var outlined: Bool {
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
        selection = true
        isError = false
        isReadOnly = false
        outlined = false
        enabled = true
        additionalLabelText = true
        helperText = true
        icon = true
        flipIcon = false
        layoutOrientation = .default
        divider = true
        labelTextContent = String(localized: "app_components_radio_label_text")
        additionalLabelTextContent = String(localized: "app_components_radio_additionalLabelText_text")
        helperTextContent = String(localized: "app_components_radio_helperText_text")
    }

    deinit { }

    // MARK: - Component Configuration

    // swiftlint:disable line_length
    override func updateCode() {
        code =
          """
        OUDSRadioItem(isOn: $isOn, label: "\(labelTextContent)"\(additionalLabelTextPattern)\(helperTextPattern)\(iconPattern)\(flipIconPattern)\(outlinedPattern)\(isInversedPattern)\(isErrorPattern)\(isReadOnlyPattern)\(dividerPattern))
        \(disableCode)
        """
    }
    // swiftlint:enable line_length

    private var disableCode: String {
        ".disable(\(enabled ? "false" : "true"))"
    }

    private var additionalLabelTextPattern: String {
        helperText ? ", additionalLabel: \"\(additionalLabelTextContent)\"" : ""
    }

    private var helperTextPattern: String {
        helperText ? ", helper: \"\(helperTextContent)\"" : ""
    }

    private var iconPattern: String {
        icon ? ", icon: Image(systemName: \"figure.handball\")" : ""
    }

    private var flipIconPattern: String {
        flipIcon ? ", flipIcon: true" : ""
    }

    private var outlinedPattern: String {
        outlined ? ", isOutlined: true" : ""
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

    private var dividerPattern: String {
        divider ? ", divider: true" : ""
    }
}

// MARK: - Radio Item Configuration View

struct RadioItemConfiguration: View {

    @ObservedObject var model: RadioItemConfigurationModel

    @Environment(\.theme) private var theme

    // swiftlint:disable closure_body_length
    var body: some View {
        VStack(alignment: .leading, spacing: theme.spaces.spaceFixedMedium) {
            Toggle("app_components_radio_selection_label", isOn: $model.selection)
                .typeHeadingMedium(theme)
                .oudsForegroundStyle(theme.colors.colorContentDefault)
                .disabled(model.isError || model.isReadOnly)

            Toggle("app_common_enabled_label", isOn: $model.enabled)
                .typeHeadingMedium(theme)
                .oudsForegroundStyle(theme.colors.colorContentDefault)
                .disabled(model.isError || model.isReadOnly)

            Toggle("app_components_common_onError_label", isOn: $model.isError)
                .typeHeadingMedium(theme)
                .oudsForegroundStyle(theme.colors.colorContentDefault)
                .disabled(!model.enabled || model.isReadOnly)

            Toggle("app_components_common_readOnly_label", isOn: $model.isReadOnly)
                .typeHeadingMedium(theme)
                .oudsForegroundStyle(theme.colors.colorContentDefault)
                .disabled(!model.enabled || model.isError)

            Toggle("app_components_common_helperText_label", isOn: $model.helperText)
                .typeHeadingMedium(theme)
                .oudsForegroundStyle(theme.colors.colorContentDefault)

            Toggle("app_components_radio_additionalLabelText_label", isOn: $model.additionalLabelText)
                .typeHeadingMedium(theme)
                .oudsForegroundStyle(theme.colors.colorContentDefault)

            Toggle("app_components_common_icon_label", isOn: $model.icon)
                .typeHeadingMedium(theme)
                .oudsForegroundStyle(theme.colors.colorContentDefault)

            Toggle("app_components_radio_outlined_label", isOn: $model.outlined)
                .typeHeadingMedium(theme)
                .oudsForegroundStyle(theme.colors.colorContentDefault)

            Toggle("app_components_common_divider_label", isOn: $model.divider)
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
