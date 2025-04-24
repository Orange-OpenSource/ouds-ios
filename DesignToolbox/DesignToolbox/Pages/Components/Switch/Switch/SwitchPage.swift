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

// MARK: - Switch Page

struct SwitchPage: View {

    @StateObject private var configuration: SwitchConfigurationModel

    init() {
        _configuration = StateObject(wrappedValue: SwitchConfigurationModel())
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
        if let model = configuration as? SwitchConfigurationModel {
            SwitchIllustration(model: model)
        }
    }

    @ViewBuilder
    private func configurationView(with configuration: ComponentConfiguration) -> some View {
        if let model = configuration as? SwitchConfigurationModel {
            SwitchConfiguration(model: model)
        }
    }
}

// MARK: - Switch Illustration

private struct SwitchIllustration: View {

    let model: SwitchConfigurationModel
    @Environment(\.colorScheme) private var colorScheme

    var body: some View {
        VStack(alignment: .center) {
            // TODO: Build a modifier to inverse colorscheme or force to a colorscheme
            SwitchDemo(model: model)
            SwitchDemo(model: model)
                .colorScheme(colorScheme == .dark ? .light : .dark)
        }
    }
}

// MARK: - Switch Demo

private struct SwitchDemo: View {

    @ObservedObject var model: SwitchConfigurationModel
    @Environment(\.theme) private var theme

    var body: some View {
        HStack(alignment: .center) {
            Spacer()
            OUDSSwitch(isOn: $model.selection,
                       accessibilityLabel: "app_components_switch_hint_a11y".localized()) // No LocalizedStringKey tpe inference in the component
                .disabled(!model.enabled)
            Spacer()
        }
        .padding(.all, theme.spaces.spaceFixedMedium)
        .designToolboxColoredSurface(false)
    }
}
