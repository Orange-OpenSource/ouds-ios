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

// MARK: - Checkbox Indeterminate Page

/// Related to `OUDSCheckboxIndeterminate` (i.e. with 3 available values).
struct CheckboxIndeterminatePage: View {

    @StateObject private var configuration: CheckboxIndeterminateConfigurationModel

    init() {
        _configuration = StateObject(wrappedValue: CheckboxIndeterminateConfigurationModel())
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
        if let model = configuration as? CheckboxIndeterminateConfigurationModel {
            CheckboxIndeterminateIllustration(model: model)
        }
    }

    @ViewBuilder
    private func configurationView(with configuration: ComponentConfiguration) -> some View {
        if let model = configuration as? CheckboxIndeterminateConfigurationModel {
            CheckboxIndeterminateConfiguration(model: model)
        }
    }
}

// MARK: - Checkbox Indeterminate Illustration

struct CheckboxIndeterminateIllustration: View {

    let model: CheckboxIndeterminateConfigurationModel
    @Environment(\.colorScheme) private var colorScheme

    var body: some View {
        VStack(alignment: .center) {
            // TODO: Build a modifier to inverse colorscheme or force to a colorscheme
            CheckboxIndeterminateDemo(model: model)
            CheckboxIndeterminateDemo(model: model)
                .colorScheme(colorScheme == .dark ? .light : .dark)
        }
    }
}

// MARK: - Checkbox Indeterminate Demo

private struct CheckboxIndeterminateDemo: View {

    @ObservedObject var model: CheckboxIndeterminateConfigurationModel
    @Environment(\.theme) private var theme

    var body: some View {
        HStack(alignment: .center) {
            Spacer()
            OUDSCheckboxIndeterminate(selection: $model.indicatorState,
                                      accessibilityLabel: "app_components_checkbox_hint_a11y".localized(), // No LocalizedStringKey inference in the component
                                      isError: model.isError)
                .disabled(!model.enabled)
            Spacer()
        }
        .padding(.all, theme.spaces.spaceFixedMedium)
        .designToolboxBackground(onColoredSurface: false)
    }
}
