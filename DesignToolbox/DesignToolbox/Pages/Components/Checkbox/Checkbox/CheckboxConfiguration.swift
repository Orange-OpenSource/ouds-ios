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
/// Related to `OUDSCheckbox` (i.e. with 2 available values).
final class CheckboxConfigurationModel: ComponentConfiguration {

    // MARK: Properties

    @Published var enabled: Bool {
        didSet { updateCode() }
    }

    @Published var indicatorState: Bool {
        didSet { updateCode() }
    }

    @Published var isError: Bool {
        didSet { updateCode() }
    }

    // MARK: Initializer

    override init() {
        indicatorState = true
        isError = false
        enabled = true
    }

    deinit { }

    // MARK: Component Configuration

    override func updateCode() {
        code =
          """
          OUDSCheckbox(isOn: $isOn\(isErrorPattern))
          \(disableCode)
          """
    }

    private var disableCode: String {
        ".disabled(\(enabled ? "false" : "true"))"
    }

    private var isErrorPattern: String {
        if isError && enabled {
            return ", isError: true"
        } else {
            return ""
        }
    }
}

// MARK: - Checkbox Configuration View

struct CheckboxConfiguration: View {

    @ObservedObject var model: CheckboxConfigurationModel

    @Environment(\.theme) private var theme

    var body: some View {
        VStack(alignment: .leading, spacing: theme.spaces.spaceFixedMedium) {
            Toggle("app_common_enabled_label", isOn: $model.enabled)
                .typeHeadingMedium(theme)
                .oudsForegroundStyle(theme.colors.colorContentDefault)
                .disabled(model.isError)

            Toggle("app_components_common_error_label", isOn: $model.isError)
                .typeHeadingMedium(theme)
                .oudsForegroundStyle(theme.colors.colorContentDefault)
                .disabled(!model.enabled)

            Toggle("app_components_checkbox_selection_label", isOn: $model.indicatorState)
                .typeHeadingMedium(theme)
                .oudsForegroundStyle(theme.colors.colorContentDefault)
                .disabled(!model.enabled)
        }
    }
}
