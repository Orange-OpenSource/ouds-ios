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

// MARK: - Checkbox Page

/// Related to `OUDSCheckbox` (i.e. with 2 available values).
struct CheckboxPage: View {

    @StateObject private var configuration: CheckboxConfigurationModel

    init() {
        _configuration = StateObject(wrappedValue: CheckboxConfigurationModel())
    }

    var body: some View {
        ComponentConfigurationView(
            configuration: configuration,
            componentView: componentView,
            configurationView: configurationView
        ).accessibilityIdentifier(A11YID.ComponentsPages.checkboxPage)
    }

    @ViewBuilder
    private func componentView(with configuration: ComponentConfiguration) -> some View {
        if let model = configuration as? CheckboxConfigurationModel {
            CheckboxIllustration(model: model)
        }
    }

    @ViewBuilder
    private func configurationView(with configuration: ComponentConfiguration) -> some View {
        if let model = configuration as? CheckboxConfigurationModel {
            CheckboxConfiguration(model: model)
        }
    }
}

// MARK: - Checkbox Illustration

struct CheckboxIllustration: View {

    let model: CheckboxConfigurationModel
    @Environment(\.colorScheme) private var colorScheme

    var body: some View {
        VStack(alignment: .center) {
            // TODO: Build a modifier to inverse colorscheme or force to a colorscheme
            CheckboxDemo(model: model)
            CheckboxDemo(model: model)
                .colorScheme(colorScheme == .dark ? .light : .dark)
        }
    }
}

// MARK: - Checkbox Demo

private struct CheckboxDemo: View {

    @ObservedObject var model: CheckboxConfigurationModel
    @Environment(\.theme) private var theme

    var body: some View {
        HStack(alignment: .center) {
            Spacer()
            OUDSCheckbox(isOn: $model.indicatorState,
                         accessibilityLabel: "app_components_checkbox_hint_a11y".localized(), // No LocalizedStringKey inference in the component
                         isError: model.isError)
                .disabled(!model.enabled)
            Spacer()
        }
        .padding(.all, theme.spaces.spaceFixedMedium)
        .designToolboxColoredSurface(false)
    }
}
