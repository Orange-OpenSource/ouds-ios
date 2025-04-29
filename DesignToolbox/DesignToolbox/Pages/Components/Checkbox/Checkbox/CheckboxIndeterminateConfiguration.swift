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

/// The model shared between `CheckboxIndeterminateConfiguration` view and `CheckboxIndeterminatePage` view.
/// Related to `OUDSCheckboxIndeterminate` (i.e. with 3 available values).
final class CheckboxIndeterminateConfigurationModel: ComponentConfiguration {

    // MARK: Properties

    @Published var enabled: Bool {
        didSet { updateCode() }
    }

    @Published var indicatorState: OUDSCheckboxIndicatorState {
        didSet { updateCode() }
    }

    @Published var isError: Bool {
        didSet { updateCode() }
    }

    // MARK: Initializer

    override init() {
        indicatorState = .selected
        isError = false
        enabled = true
    }

    deinit { }

    // MARK: Component Configuration

    override func updateCode() {
        code =
          """
          OUDSCheckboxInterminate(selection: $selection\(isErrorPattern))
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

// MARK: - Checkbox Indeterminate Configuration View

struct CheckboxIndeterminateConfiguration: View {

    @ObservedObject var model: CheckboxIndeterminateConfigurationModel

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

            DesignToolboxChoicePicker(title: "app_components_checkbox_selection_label",
                                      selection: $model.indicatorState,
                                      style: .segmented) {
                ForEach(OUDSCheckboxIndicatorState.allCases, id: \.id) { state in
                    Text(LocalizedStringKey(state.description)).tag(state)
                }
            }
        }
    }
}
