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

// MARK: Button page

struct ButtonPage: View {

    // MARK: Stored properties

    private let configuration = ButtonConfigurationModel()

    // MARK: Body

    var body: some View {
        ComponentConfigurationView(
            configuration: configuration,
            componentView: componentView,
            configurationView: configurationView
        )
    }

    // MARK: Private helpers

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

// MARK: Button component illustration

struct ButtonIllustration: View {

    // MARK: Environment properties

    @Environment(\.theme) private var theme
    @Environment(\.colorScheme) private var colorScheme

    // MARK: Stored properties

    let model: ButtonConfigurationModel

    // MARK: Body

    var body: some View {
        VStack(alignment: .center) {
            ButtonDemo(model: model, coloredBackgound: false)
            // TODO: Build a modifier to inverse colorscheme or force to a colorscheme
            ButtonDemo(model: model, coloredBackgound: false).colorScheme(colorScheme == .dark ? .light : .dark)
            ButtonDemo(model: model, coloredBackgound: true)
        }
    }
}

private struct ButtonDemo: View {

    // MARK: Environment properties

    @Environment(\.theme) private var theme
    @Environment(\.colorScheme) private var colorScheme

    // MARK: Stored properties

    @StateObject var model: ButtonConfigurationModel
    let coloredBackgound: Bool

    var body: some View {
        HStack(alignment: .center) {
            Spacer()
            // It is not allowed to place a Negative bnutton on colored surface
            if model.hierarchy == .negative,
               coloredBackgound == true {
                Text("app_components_button_negative_hierary_notAllowed_text")
            } else {
                // swiftlint:disable accessibility_label_for_image
                switch model.layout {
                case .iconOnly:
                    OUDSButton(icon: Image("ic_heart"), hierarchy: model.hierarchy, state: model.state, onColoredSurface: coloredBackgound) {}
                case .textOnly:
                    OUDSButton(text: "app_components_button_label", hierarchy: model.hierarchy, state: model.state, onColoredSurface: coloredBackgound) {}
                case .iconAndText:
                    OUDSButton(icon: Image("ic_heart"), text: "app_components_button_label", hierarchy: model.hierarchy, state: model.state, onColoredSurface: coloredBackgound) {}
                }
                // swiftlint:enable accessibility_label_for_image
            }

            Spacer()
        }
        .disabled(!model.enabled)
        .padding(.all, theme.spaces.spaceFixedMedium)
        .background(backgroundColor)
    }

    private var backgroundColor: Color {
        if coloredBackgound {
            theme.colors.colorSurfaceStatusInfoEmphasized.color(for: colorScheme)
        } else {
            theme.colors.colorBgSecondary.color(for: colorScheme)
        }
    }
}
