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

// MARK: - Switch Configuration Model

/// The model shared between `SwitchPageConfiguration` view and `SwitchPageComponent` view.
final class SwitchConfigurationModel: ComponentConfiguration {

    // MARK: Published properties

    @Published var enabled: Bool {
        didSet { updateCode() }
    }
    @Published var switchOnly: Bool {
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
    @Published var orientation: OUDSSwitch.Orientation {
        didSet { updateCode() }
    }
    @Published var labelContent: String
    @Published var helperTextContent: String

    // MARK: Initializer

    override init() {
        enabled = true
        switchOnly = false
        helperText = true
        icon = true
        onError = false
        divider = true
        orientation = .default
        labelContent = String(localized: "app_components_switch_label_text")
        helperTextContent = String(localized: "app_components_switch_helperText_text")
    }

    deinit { }

    // MARK: Component Configuration

    override func updateCode() {
        if switchOnly {
            code =
              """
            OUDSSwitch(isOn: $isOn)
            \(disableCode))
            """
        } else {
            code =
              """
            OUDSSwitch(isOn: $isOn, label: \"Label\"\(helperTextPatern)\(iconPatern)\(onErrorPatern)\(dividerPatern)\(orienationPatern)
            \(disableCode))
            """
        }
    }

    private var disableCode: String {
        ".disable(\(enabled ? "false" : "true"))"
    }

    private var helperTextPatern: String {
        if helperText {
            return ",helperText: \(String(localized: "app_components_switch_helperText_text"))"
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
    private var orienationPatern: String {
        if onError {
            return ", orientation: \(orientation.description)"
        } else {
            return ""
        }
    }
}

// MARK: - Switch Configuration View

struct SwitchConfiguration: View {

    @Environment(\.theme) private var theme
    @Environment(\.colorScheme) private var colorScheme

    @StateObject var model: SwitchConfigurationModel

    var body: some View {
        VStack(alignment: .leading, spacing: theme.spaces.spaceFixedMedium) {
            Toggle("app_common_enabled_label", isOn: $model.enabled)
                .typeHeadingMedium(theme)
                .foregroundStyle(theme.colors.colorContentDefault.color(for: colorScheme))

            Toggle("app_components_switch_switchOnly_label", isOn: $model.switchOnly)
                .typeHeadingMedium(theme)
                .foregroundStyle(theme.colors.colorContentDefault.color(for: colorScheme))

            if !model.switchOnly {
                Toggle("app_components_common_helperText_label", isOn: $model.helperText)
                    .typeHeadingMedium(theme)
                    .foregroundStyle(theme.colors.colorContentDefault.color(for: colorScheme))

                Toggle("app_components_common_icon_label", isOn: $model.icon)
                    .typeHeadingMedium(theme)
                    .foregroundStyle(theme.colors.colorContentDefault.color(for: colorScheme))

                Toggle("app_components_common_divider_label", isOn: $model.divider)
                    .typeHeadingMedium(theme)
                    .foregroundStyle(theme.colors.colorContentDefault.color(for: colorScheme))

                Toggle("app_components_common_onError_label", isOn: $model.onError)
                    .typeHeadingMedium(theme)
                    .foregroundStyle(theme.colors.colorContentDefault.color(for: colorScheme))

                DesignToolboxChoicePicker(title: "app_components_common_orientation_label", selection: $model.orientation) {
                    ForEach(OUDSSwitch.Orientation.allCases, id: \.id) { orientation in
                        Text(LocalizedStringKey(orientation.description)).tag(orientation)
                    }
                }

                DisclosureGroup("app_components_common_editContent_label") {
                    DesignToolboxTextField(text: $model.labelContent, prompt: "app_components_common_userText_prompt", title: "app_components_switch_label_text")
                    if model.helperText {
                        DesignToolboxTextField(text: $model.helperTextContent, prompt: "app_components_common_userText_prompt", title: "app_components_common_helperText_label")
                    }
                }
            }
        }
    }
}

// MARK: Switch Layout Orientation extension

extension OUDSSwitch.Orientation: @retroactive CaseIterable, @retroactive CustomStringConvertible {
    nonisolated(unsafe) public static let allCases: [OUDSSwitch.Orientation] = [.default, .inverse]

    // Note: Not localized because it is a technical name
    public var description: String {
        switch self {
        case .default:
            "Default"
        case .inverse:
            "Inverse"
        }
    }

    var id: String { description }
}
