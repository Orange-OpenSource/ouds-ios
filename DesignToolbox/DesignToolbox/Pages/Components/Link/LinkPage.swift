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

struct LinkPage: View {

    private let configuration = LinkConfigurationModel()

    var body: some View {
        ComponentConfigurationView(
            configuration: configuration,
            componentView: componentView,
            configurationView: configurationView
        )
    }

    @ViewBuilder
    private func componentView(with configuration: ComponentConfiguration) -> some View {
        if let model = configuration as? LinkConfigurationModel {
            LinkIllustration(model: model)
        }
    }

    @ViewBuilder
    private func configurationView(with configuration: ComponentConfiguration) -> some View {
        if let model = configuration as? LinkConfigurationModel {
            LinkConfiguration(model: model)
        }
    }
}

// MARK: Link Illustration

struct LinkIllustration: View {

    @Environment(\.colorScheme) private var colorScheme
    @StateObject var model: LinkConfigurationModel

    var body: some View {
        VStack(alignment: .center) {
            if model.onColoredSurface {
                LinkDemo(model: model)
            } else {
                LinkDemo(model: model)
                    .colorScheme(colorScheme == .dark ? .light : .dark)
                LinkDemo(model: model)
            }
        }
    }
}

// MARK: - Button Demo

private struct LinkDemo: View {

    @Environment(\.theme) private var theme
    @StateObject var model: LinkConfigurationModel

    var body: some View {
        HStack(alignment: .center) {
            Spacer()

            switch model.layout {
            case .textOnly:
                OUDSLink(text: text, size: model.size) {}
            case .iconAndText:
                OUDSLink(text: text, icon: Image(decorative: "ic_heart"), size: model.size) {}
            case .arrowBack:
                OUDSLink(text: text, arrow: .back, size: model.size) {}
            case .arrowNext:
                OUDSLink(text: text, arrow: .next, size: model.size) {}
            }

            Spacer()
        }
        .disabled(!model.enabled)
        .padding(.all, theme.spaces.spaceFixedMedium)
        .modifier(DesignToolboxColoredBackgroundModifier(coloredSurface: model.onColoredSurface))
    }

    private var text: String {
        model.longText ? "app_components_link_longText_label" : "app_components_link_label"
    }
}
