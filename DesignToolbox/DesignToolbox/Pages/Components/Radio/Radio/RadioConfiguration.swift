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

// MARK: - Radio Configuration Model

/// The model shared between `RadioConfiguration` view and `RadioPage` view.
final class RadioConfigurationModel: ComponentConfiguration {

    // MARK: - Properties

    @Published var enabled: Bool {
        didSet { updateCode() }
    }

    @Published var selection: Bool {
        didSet { updateCode() }
    }

    @Published var isError: Bool {
        didSet { updateCode() }
    }

    // MARK: - Initializer

    override init() {
        selection = false
        isError = false
        enabled = true
    }

    deinit { }

    // MARK: - Component Configuration

    override func updateCode() {
        code =
          """
          OUDSRadio(isOn: $isOn, accessibilityLabel: "A label for accessibility"\(isErrorPattern))
          \(disableCode)
          """
    }

    private var disableCode: String {
        ".disable(\(enabled ? "false" : "true"))"
    }

    private var isErrorPattern: String {
        isError && enabled ? ", isError: true" : ""
    }
}

// MARK: - Radio Configuration View

struct RadioConfiguration: View {

    @ObservedObject var model: RadioConfigurationModel

    @Environment(\.theme) private var theme

    var body: some View {
        VStack(alignment: .leading, spacing: theme.spaces.spaceFixedMedium) {
            Toggle("app_components_radio_selection_label", isOn: $model.selection)
                .typeHeadingMedium(theme)
                .oudsForegroundStyle(theme.colors.colorContentDefault)
                .disabled(!model.enabled || model.isError)

            Toggle("app_common_enabled_label", isOn: $model.enabled)
                .typeHeadingMedium(theme)
                .oudsForegroundStyle(theme.colors.colorContentDefault)
                .disabled(model.isError)

            Toggle("app_components_common_onError_label", isOn: $model.isError)
                .typeHeadingMedium(theme)
                .oudsForegroundStyle(theme.colors.colorContentDefault)
                .disabled(!model.enabled)
        }
    }
}
