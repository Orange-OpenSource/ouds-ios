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

/// The model shared between `SwitchConfiguration` view and `SwitchPage` view.
final class SwitchConfigurationModel: ComponentConfiguration {

    // MARK: - Properties

    @Published var enabled: Bool {
        didSet { updateCode() }
    }

    @Published var selection: Bool {
        didSet { updateCode() }
    }

    // MARK: - Initializer

    override init() {
        selection = false
        enabled = true
    }

    deinit { }

    // MARK: - Component Configuration

    override func updateCode() {
        code =
          """
          OUDSSwitch(isOn: $isOn, accessibilityLabel: "A label for accessibility")
          \(disableCode)
          """
    }

    private var disableCode: String {
        ".disable(\(enabled ? "false" : "true"))"
    }
}

// MARK: - Switch Configuration View

struct SwitchConfiguration: View {

    @ObservedObject var model: SwitchConfigurationModel

    @Environment(\.theme) private var theme

    var body: some View {
        VStack(alignment: .leading, spacing: theme.spaces.spaceFixedMedium) {
            Toggle("app_components_switch_selection_label", isOn: $model.selection)
                .typeHeadingMedium(theme)
                .oudsForegroundStyle(theme.colors.colorContentDefault)
                .disabled(!model.enabled)

            Toggle("app_common_enabled_label", isOn: $model.enabled)
                .typeHeadingMedium(theme)
                .oudsForegroundStyle(theme.colors.colorContentDefault)
        }
    }
}
