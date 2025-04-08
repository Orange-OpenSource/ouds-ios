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

// MARK: ColoredBackground page

struct ColoredBackgroundPage: View {

    private let configuration = ColoredBackgroundConfigurationModel()

    var body: some View {
        ComponentConfigurationView(
            configuration: configuration,
            componentView: componentView,
            configurationView: configurationView
        )
    }

    @ViewBuilder
    private func componentView(with configuration: ComponentConfiguration) -> some View {
        if let model = configuration as? ColoredBackgroundConfigurationModel {
            ColoredSurfaceIllustration(model: model)
        }
    }

    @ViewBuilder
    private func configurationView(with configuration: ComponentConfiguration) -> some View {
        if let model = configuration as? ColoredBackgroundConfigurationModel {
            ColoredBackgroundConfiguration(model: model)
        }
    }
}

// MARK: ColoredSurface Illustration

struct ColoredSurfaceIllustration: View {

    @Environment(\.colorScheme) private var colorScheme
    @ObservedObject var model: ColoredBackgroundConfigurationModel

    var body: some View {
        VStack(alignment: .center, spacing: 0) {
            ColoredSurfaceDemo(model: model)
            // TODO: Build a modifier to inverse colorscheme or force to a colorscheme
            ColoredSurfaceDemo(model: model)
                .colorScheme(colorScheme == .dark ? .light : .dark)
        }
    }
}

// MARK: - ColoredSurface Demo

private struct ColoredSurfaceDemo: View {

    @Environment(\.theme) private var theme

    @ObservedObject var model: ColoredBackgroundConfigurationModel

    var body: some View {
        HStack(alignment: .center, spacing: theme.spaces.spaceFixedMedium) {
            OUDSColoredSurface(color: model.selectedColor) {
                VStack(alignment: .center, spacing: theme.spaces.spaceFixedMedium) {
                    Text(model.selectedColor.formattedName)
                        .oudsForegroundColor(theme.colors.colorContentDefault)

                    OUDSButton(text: "app_components_button_label".localized(),
                               hierarchy: .default,
                               style: .default) {
                    }

                    OUDSLink(text: "app_components_link_label".localized(), arrow: .next) {
                    }
                }
                .frame(maxWidth: .infinity, alignment: .center)
                .padding(.all, theme.spaces.spaceFixedMedium)
            }
        }
        .padding(.all, theme.spaces.spaceFixedMedium)
        .modifier(DesignToolboxColoredBackgroundModifier(coloredSurface: false))
    }
}
