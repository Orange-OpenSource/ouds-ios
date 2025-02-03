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

// MARK: Button page

struct ButtonPage: View {

    private let configuration = ButtonConfigurationModel()

    var body: some View {
        ComponentConfigurationView(
            configuration: configuration,
            componentView: componentView,
            configurationView: configurationView
        )
    }

    @ViewBuilder
    private func componentView(with configuration: ComponentConfiguration) -> some View {
        if let model = configuration as? ButtonConfigurationModel {
            ButtonIllustration(model: model)
        }
    }

    @ViewBuilder
    private func configurationView(with configuration: ComponentConfiguration) -> some View {
        if let model = configuration as? ButtonConfigurationModel {
            ButtonConfiguration(model: model)
        }
    }
}

// MARK: Button Illustration

struct ButtonIllustration: View {

    @Environment(\.colorScheme) private var colorScheme
    @ObservedObject var model: ButtonConfigurationModel

    var body: some View {
        VStack(alignment: .center) {
            if model.onColoredSurface {
                ButtonDemo(model: model)
            } else {
                ButtonDemo(model: model)
                // TODO: Build a modifier to inverse colorscheme or force to a colorscheme
                ButtonDemo(model: model)
                    .colorScheme(colorScheme == .dark ? .light : .dark)
            }
        }
    }
}

// MARK: - Button Demo

private struct ButtonDemo: View {

    @Environment(\.theme) private var theme

    @StateObject var model: ButtonConfigurationModel

    var body: some View {
        HStack(alignment: .center) {
            Spacer()

            // It is not allowed to place a Negative button on colored surface
            if model.hierarchy == .negative, model.onColoredSurface {
                Text("app_components_button_negative_hierary_notAllowed_text")
            } else {
                switch model.layout {
                case .iconOnly:
                    OUDSButton(icon: Image(decorative: "ic_heart"), hierarchy: model.hierarchy, style: model.style) {}
                case .textOnly:
                    OUDSButton(text: model.text, hierarchy: model.hierarchy, style: model.style) {}
                case .iconAndText:
                    OUDSButton(icon: Image(decorative: "ic_heart"), text: model.text, hierarchy: model.hierarchy, style: model.style) {}
                }
            }

            Spacer()
        }
        .disabled(!model.enabled)
        .padding(.all, theme.spaces.spaceFixedMedium)
        .modifier(DesignToolboxColoredBackgroundModifier(coloredSurface: model.onColoredSurface))
    }
}
