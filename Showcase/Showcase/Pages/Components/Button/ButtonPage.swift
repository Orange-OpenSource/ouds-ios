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
            ButtonDemo(model: model)
            ButtonDemo(model: model).colorScheme(colorScheme == .dark ? .light : .dark)
            // TODO: Build a modifier to inverse colorscheme or force to a colorscheme
        }
    }
}

private struct ButtonDemo: View {

    // MARK: Environment properties

    @Environment(\.theme) private var theme
    @Environment(\.colorScheme) private var colorScheme

    // MARK: Stored properties

    @StateObject var model: ButtonConfigurationModel

    var body: some View {
        HStack(alignment: .center) {
            Spacer()

            // swiftlint:disable accessibility_label_for_image
            switch model.layout {
            case .iconOnly:
                OOUDSButton(hierarchy: model.hierarchy, icon: Image("ic_heart")) {}
            case .textOnly:
                OOUDSButton(hierarchy: model.hierarchy, text: "app_components_button_label") {}
            case .iconAndText:
                OOUDSButton(hierarchy: model.hierarchy, icon: Image("ic_heart"), text: "app_components_button_label") {}
            }

            // swiftlint:enable accessibility_label_for_image

            Spacer()
        }
        .disabled(!model.enabled)
        .padding(.all, theme.spaces.spaceFixedMedium)
        .background(theme.colors.colorBgSecondary.color(for: colorScheme))
    }
}
