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
            ButtonDemo(model: model, coloredSurface: false)
            // TODO: Build a modifier to inverse colorscheme or force to a colorscheme
            ButtonDemo(model: model, coloredSurface: false)
                .colorScheme(colorScheme == .dark ? .light : .dark)
            ButtonDemo(model: model, coloredSurface: true)
        }
    }
}

private struct BackgroundModifier: ViewModifier {

    // MARK: Environment properties

    @Environment(\.theme) private var theme
    @Environment(\.colorScheme) private var colorScheme

    // MARK: Stored properties

    let coloredSurface: Bool

    // MARK: Body

    func body(content: Content) -> some View {
        if coloredSurface {
            content.oudsColoredSurface(color: theme.colors.colorSurfaceBrandPrimary.color(for: colorScheme))
        } else {
            content.background(theme.colors.colorBgSecondary.color(for: colorScheme))
        }
    }
}

private struct ButtonDemo: View {

    // MARK: Environment properties

    @Environment(\.theme) private var theme
    @Environment(\.colorScheme) private var colorScheme

    // MARK: Stored properties

    @StateObject var model: ButtonConfigurationModel
    let coloredSurface: Bool

    var body: some View {
        HStack(alignment: .center) {
            Spacer()

            // It is not allowed to place a Negative bnutton on colored surface
            if model.hierarchy == .negative, coloredSurface == true {
                Text("app_components_button_negative_hierary_notAllowed_text")
            } else {
                // swiftlint:disable accessibility_label_for_image
                switch model.layout {
                case .iconOnly:
                    OUDSButton(icon: Image("ic_heart"), hierarchy: model.hierarchy, style: model.style) {}
                case .textOnly:
                    OUDSButton(text: "app_components_button_label", hierarchy: model.hierarchy, style: model.style) {}
                case .iconAndText:
                    OUDSButton(icon: Image("ic_heart"), text: "app_components_button_label", hierarchy: model.hierarchy, style: model.style) {}
                }
                // swiftlint:enable accessibility_label_for_image
            }

            Spacer()
        }
        .disabled(!model.enabled)
        .padding(.all, theme.spaces.spaceFixedMedium)
        .modifier(BackgroundModifier(coloredSurface: coloredSurface))
    }
}
