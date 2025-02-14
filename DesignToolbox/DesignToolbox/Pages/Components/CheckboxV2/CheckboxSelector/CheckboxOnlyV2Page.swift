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

// MARK: - Checkbox page

struct CheckboxOnlyV2Page: View {

    @StateObject private var configuration: CheckboxOnlyV2ConfigurationModel

    init() {
        _configuration = StateObject(wrappedValue: CheckboxOnlyV2ConfigurationModel())
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
        if let model = configuration as? CheckboxOnlyV2ConfigurationModel {
            CheckboxOnlyV2Illustration(model: model)
        }
    }

    @ViewBuilder
    private func configurationView(with configuration: ComponentConfiguration) -> some View {
        if let model = configuration as? CheckboxOnlyV2ConfigurationModel {
            CheckboxOnlyV2Configuration(model: model)
        }
    }
}

// MARK: - Checkbox Illustration

struct CheckboxOnlyV2Illustration: View {

    let model: CheckboxOnlyV2ConfigurationModel
    @Environment(\.colorScheme) private var colorScheme

    var body: some View {
        VStack(alignment: .center) {
            // TODO: Build a modifier to inverse colorscheme or force to a colorscheme
            CheckboxOnlyV2Demo(model: model)
            CheckboxOnlyV2Demo(model: model)
                .colorScheme(colorScheme == .dark ? .light : .dark)
        }
    }
}

// MARK: - Checkbox Demo

private struct CheckboxOnlyV2Demo: View {

    @ObservedObject var model: CheckboxOnlyV2ConfigurationModel
    @Environment(\.theme) private var theme

    var body: some View {
        HStack(alignment: .center) {
            Spacer()
            OUDSCheckbox(state: $model.selectorState, isError: model.isError)
                .disabled(!model.enabled)
            Spacer()
        }
        .padding(.all, theme.spaces.spaceFixedMedium)
        .designToolboxBackground(onColoredSurface: false)
    }
}
