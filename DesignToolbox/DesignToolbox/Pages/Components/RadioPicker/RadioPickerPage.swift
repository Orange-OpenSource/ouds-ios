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

// MARK: - Radio Picker Page

struct RadioPickerPage: View {

    @StateObject private var configuration: RadioPickerConfigurationModel

    init() {
        _configuration = StateObject(wrappedValue: RadioPickerConfigurationModel())
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
        if let model = configuration as? RadioPickerConfigurationModel {
            RadioPickerIllustration(model: model)
        }
    }

    @ViewBuilder
    private func configurationView(with configuration: ComponentConfiguration) -> some View {
        if let model = configuration as? RadioPickerConfigurationModel {
            RadioPickerConfiguration(model: model)
        }
    }
}

// MARK: - Radio Picker Illustration

private struct RadioPickerIllustration: View {

    @ObservedObject var model: RadioPickerConfigurationModel
    @State private var selection: String = "Choice_1" // cf model.populate()

    var body: some View {
        VStack(alignment: .center) {
            OUDSRadioPicker(selection: $selection,
                            radios: model.populate(),
                            placement: model.pickerPlacement,
                            isOutlined: model.isOutlined,
                            isReversed: model.isReversed,
                            isError: model.isError,
                            isReadOnly: model.isReadOnly,
                            hasDivider: model.hasDivider)
            .disabled(!model.isEnabled)
        }
    }
}
