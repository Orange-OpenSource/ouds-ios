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

import OUDS
import OUDSComponents
import SwiftUI

// MARK: - Checkbox Picker Page

struct CheckboxPickerPage: View {

    @StateObject private var configuration: CheckboxPickerConfigurationModel

    init() {
        _configuration = StateObject(wrappedValue: CheckboxPickerConfigurationModel())
    }

    var body: some View {
        ComponentConfigurationView(
            configuration: configuration,
            componentView: componentView,
            configurationView: configurationView
        )
    }

    @ViewBuilder
    private func componentView(with configuration: ComponentConfiguration) -> some View {
        if let model = configuration as? CheckboxPickerConfigurationModel {
            CheckboxPickerIllustration(model: model)
        }
    }

    @ViewBuilder
    private func configurationView(with configuration: ComponentConfiguration) -> some View {
        if let model = configuration as? CheckboxPickerConfigurationModel {
            CheckboxPickerConfiguration(model: model)
        }
    }
}

// MARK: - Checkbox Picker Illustration

private struct CheckboxPickerIllustration: View {

    @State private var selections: [String] = ["Choice_1"] // cf model.populate()
    @ObservedObject var model: CheckboxPickerConfigurationModel
    @Environment(\.theme) private var theme

    var body: some View {
        VStack(alignment: .center) {
            OUDSCheckboxPicker(selections: $selections,
                               checkboxes: model.populate(),
                               placement: model.pickerPlacement,
                               isReversed: model.isReversed,
                               isError: model.isError,
                               isReadOnly: model.isReadOnly,
                               hasDivider: model.hasDivider)
            .padding([.trailing, .leading], theme.spaces.spacePaddingInlineShort )
            .disabled(!model.isEnabled)
        }
    }
}
