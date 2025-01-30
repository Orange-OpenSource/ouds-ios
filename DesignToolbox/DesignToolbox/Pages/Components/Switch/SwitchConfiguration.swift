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

    @Published var enabled: Bool = true {
        didSet { updateCode() }
    }

    @Published var switchOnly: Bool
    @Published var helperText: Bool
    @Published var icon: Bool
    @Published var onError: Bool
    @Published var divider: Bool

    // MARK: Initializer

    override init() {
       enabled = true
       switchOnly = false
       helperText = true
       icon = true
       onError = false
       divider = true
    }

    deinit { }

    // MARK: Component Configuration

    private var disableCode: String {
        ".disable(\(enabled ? "false" : "true"))"
    }

    override func updateCode() {
        code =
            """
          OUDSSwitch(isOn: $isOn)
          \(disableCode))
          """
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

            Toggle("switch only", isOn: $model.switchOnly)
                .typeHeadingMedium(theme)
                .foregroundStyle(theme.colors.colorContentDefault.color(for: colorScheme))

            Toggle("Helper Text", isOn: $model.helperText)
                .typeHeadingMedium(theme)
                .foregroundStyle(theme.colors.colorContentDefault.color(for: colorScheme))
                .disabled(model.switchOnly)

            Toggle("Icon", isOn: $model.icon)
                .typeHeadingMedium(theme)
                .foregroundStyle(theme.colors.colorContentDefault.color(for: colorScheme))
                .disabled(model.switchOnly)

            Toggle("Divider", isOn: $model.divider)
                .typeHeadingMedium(theme)
                .foregroundStyle(theme.colors.colorContentDefault.color(for: colorScheme))
                .disabled(model.switchOnly)

            Toggle("On error", isOn: $model.onError)
                .typeHeadingMedium(theme)
                .foregroundStyle(theme.colors.colorContentDefault.color(for: colorScheme))
                .disabled(model.switchOnly)
        }
    }
}
