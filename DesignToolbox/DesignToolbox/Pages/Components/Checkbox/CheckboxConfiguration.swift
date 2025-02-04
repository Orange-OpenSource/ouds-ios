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

    @Published var enabled: Bool {
        didSet { updateCode() }
    }

    @Published var selectorOnly: Bool {
        didSet { updateCode() }
    }

    @Published var helperText: Bool {
        didSet { updateCode() }
    }

    @Published var icon: Bool {
        didSet { updateCode() }
    }

    @Published var onError: Bool {
        didSet { updateCode() }
    }

    @Published var divider: Bool {
        didSet { updateCode() }
    }

    // TODO: #264 - Read only

    // MARK: - Initializer

    override init() {
       enabled = true
       selectorOnly = false
       helperText = true
       icon = true
       onError = false
       divider = true
    }

    deinit { }

    // MARK: - Component Configuration

    override func updateCode() { // TODO: #264 Update code samples
        if selectorOnly {
            code =
              """
            OUDSCheckbox(isOn: $isOn)
            \(disableCode))
            """
        } else {
            code =
              """
            OUDSCheckbox(isOn: $isOn, label: \"Label\"\(helperTextPatern)\(iconPatern)\(onErrorPatern)\(dividerPatern))
            \(disableCode))
            """
        }
    }

    private var disableCode: String {
        ".disable(\(enabled ? "false" : "true"))"
    }

    private var helperTextPatern: String {
        if helperText {
            return ",helperText: \(String(localized: "app_components_checkbox_helperText_text"))"
        } else {
            return ""
        }
    }

    private var iconPatern: String {
        if icon {
            return ", Image(decorative: \"ic_heart\")"
        } else {
            return ""
        }
    }

    private var onErrorPatern: String {
        if onError {
            return ", onError: true"
        } else {
            return ""
        }
    }

    private var dividerPatern: String {
        if onError {
            return ", divider: true"
        } else {
            return ""
        }
    }
}

// MARK: - Checkbox Configuration View

struct CheckboxConfiguration: View {

    @StateObject var model: CheckboxConfigurationModel

    @Environment(\.theme) private var theme
    @Environment(\.colorScheme) private var colorScheme

    var body: some View {
        VStack(alignment: .leading, spacing: theme.spaces.spaceFixedMedium) {
            Toggle("app_common_enabled_label", isOn: $model.enabled)
                .typeHeadingMedium(theme)
                .foregroundStyle(theme.colors.colorContentDefault.color(for: colorScheme))

            Toggle("app_components_checkbox_switchOnly_label", isOn: $model.selectorOnly)
                .typeHeadingMedium(theme)
                .foregroundStyle(theme.colors.colorContentDefault.color(for: colorScheme))

            Toggle("app_components_checkbox_helperText_label", isOn: $model.helperText)
                .typeHeadingMedium(theme)
                .foregroundStyle(theme.colors.colorContentDefault.color(for: colorScheme))
                .disabled(model.selectorOnly)

            Toggle("app_components_common_icon_label", isOn: $model.icon)
                .typeHeadingMedium(theme)
                .foregroundStyle(theme.colors.colorContentDefault.color(for: colorScheme))
                .disabled(model.selectorOnly)

            Toggle("app_components_common_divider_label", isOn: $model.divider)
                .typeHeadingMedium(theme)
                .foregroundStyle(theme.colors.colorContentDefault.color(for: colorScheme))
                .disabled(model.selectorOnly)

            Toggle("app_components_common_onError_label", isOn: $model.onError)
                .typeHeadingMedium(theme)
                .foregroundStyle(theme.colors.colorContentDefault.color(for: colorScheme))
                .disabled(model.selectorOnly)
        }
    }
}
