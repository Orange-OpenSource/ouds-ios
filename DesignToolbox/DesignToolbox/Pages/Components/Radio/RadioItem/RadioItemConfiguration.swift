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

    @Published var isReversed: Bool {
        didSet { updateCode() }
    }

    @Published var labelText: String {
        didSet { updateCode() }
    }

    @Published var additionalLabelText: String {
        didSet { updateCode() }
    }

    @Published var helperText: String {
        didSet { updateCode() }
    }

    // MARK: - Initializer

    override init() {
        selection = true
        isError = false
        isReadOnly = false
        outlined = false
        enabled = true
        icon = true
        flipIcon = false
        isReversed = false
        divider = true
        labelText = String(localized: "app_components_common_label_label")
        additionalLabelText = String(localized: "app_components_radioButton_radioButtonItem_additionalLabel_label")
        helperText = String(localized: "app_components_controlItem_helperText_label")
    }

    deinit { }

    // MARK: - Component Configuration

    // swiftlint:disable line_length
    override func updateCode() {
        code =
          """
        OUDSRadioItem(isOn: $isOn, label: "\(labelText)"\(additionalLabelTextPattern)\(helperTextPattern)\(iconPattern)\(flipIconPattern)\(outlinedPattern)\(isReversedPattern)\(isErrorPattern)\(isReadOnlyPattern)\(dividerPattern))
        \(disableCode)
        """
    }
    // swiftlint:enable line_length

    private var disableCode: String {
        ".disabled(\(enabled ? "false" : "true"))"
    }

    private var additionalLabelTextPattern: String {
        additionalLabelText.isEmpty ? "" : ", additionalLabel: \"\(additionalLabelText)\""
    }

    private var helperTextPattern: String {
        helperText.isEmpty ? "" : ", helper: \"\(helperText)\""
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

    private var isReversedPattern: String {
        ", isReversed: \(isReversed)"
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

    var body: some View {
        VStack(alignment: .leading, spacing: theme.spaces.spaceFixedMedium) {
            VStack(alignment: .leading, spacing: theme.spaces.spaceFixedNone) {
                OUDSSwitchItem("app_components_radioButton_selection_label", isOn: $model.selection)
                    .disabled(model.isError || model.isReadOnly)

                OUDSSwitchItem("app_components_controlItem_icon_label", isOn: $model.icon)

                OUDSSwitchItem("app_components_controlItem_flipIcon_label", isOn: $model.flipIcon)
                    .disabled(!model.icon)

                OUDSSwitchItem("app_components_radioButton_radioButtonItem_outlined_label", isOn: $model.outlined)

                OUDSSwitchItem("app_components_controlItem_divider_label", isOn: $model.divider)

                OUDSSwitchItem("app_components_controlItem_reversed_label", isOn: $model.isReversed)

                OUDSSwitchItem("app_common_enabled_label", isOn: $model.enabled)
                    .disabled(model.isError || model.isReadOnly)

                OUDSSwitchItem("app_components_controlItem_readOnly_label", isOn: $model.isReadOnly)
                    .disabled(!model.enabled || model.isError)

                OUDSSwitchItem("app_components_common_error_label", isOn: $model.isError)
                    .disabled(!model.enabled || model.isReadOnly)
            }

            DesignToolboxEditContentDisclosure {
                DesignToolboxTextField(text: $model.labelText)
                DesignToolboxTextField(text: $model.additionalLabelText)
                DesignToolboxTextField(text: $model.helperText)
            }
        }
    }
}
