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
final class CheckboxOnlyV2ConfigurationModel: ComponentConfiguration {

    // MARK: - Properties

    @Published var enabled: Bool {
        didSet { updateCode() }
    }

    @Published var selectorState: OUDSCheckboxSelectorState {
        didSet { updateCode() }
    }

    @Published var isError: Bool {
        didSet { updateCode() }
    }

    // MARK: - Initializer

    override init() {
        selectorState = .selected
        isError = false
        enabled = true
    }

    deinit { }

    // MARK: - Component Configuration

    override func updateCode() {
        code =
            """
          OUDSCheckboxOnly(state: $state\(isErrorPattern))
          \(disableCode)
          """
    }

    private var disableCode: String {
        ".disable(\(enabled ? "false" : "true"))"
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

struct CheckboxOnlyV2Configuration: View {

    @ObservedObject var model: CheckboxOnlyV2ConfigurationModel

    @Environment(\.theme) private var theme
    @Environment(\.colorScheme) private var colorScheme

    var body: some View {
        VStack(alignment: .leading, spacing: theme.spaces.spaceFixedMedium) {
            Toggle("app_common_enabled_label", isOn: $model.enabled)
                .typeHeadingMedium(theme)
                .foregroundStyle(theme.colors.colorContentDefault.color(for: colorScheme))
                .disabled(model.isError)

            Toggle("app_components_common_onError_label", isOn: $model.isError)
                .typeHeadingMedium(theme)
                .foregroundStyle(theme.colors.colorContentDefault.color(for: colorScheme))
                .disabled(!model.enabled)

            DesignToolboxChoicePicker(title: "app_components_checkbox_selection_label", selection: $model.selectorState) {
                ForEach(OUDSCheckboxSelectorState.allCases, id: \.id) { state in
                    Text(LocalizedStringKey(state.description)).tag(state)
                }
            }
        }
    }
}

// MARK: - Checkbox selector state extension

// TODO: Add whe remove from Checkbox

// extension OUDSCheckboxSelectorState: @retroactive CaseIterable, @retroactive CustomStringConvertible {
//    nonisolated(unsafe) public static var allCases: [OUDSCheckboxSelectorState] = [.selected, .unselected, .undeterminate]
//
//    // No l10n, tehchnical names
//    public var description: String {
//        switch self {
//        case .selected:
//            "Selected"
//        case .unselected:
//            "Unselected"
//        case .undeterminate:
//            "Undeterminate"
//        }
//    }
//
//    var id: String { description }
// }
