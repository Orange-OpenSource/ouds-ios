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

// MARK: Divider page

struct DividerPage: View {

    private let configuration: DividerConfigurationModel

    init(orientation: DividerConfigurationModel.Orientation) {
        configuration = DividerConfigurationModel(orientation: orientation)
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
        if let model = configuration as? DividerConfigurationModel {
            DividerIllustration(model: model)
        }
    }

    @ViewBuilder
    private func configurationView(with configuration: ComponentConfiguration) -> some View {
        if let model = configuration as? DividerConfigurationModel {
            DividerConfiguration(model: model)
        }
    }
}

// MARK: Divider Illustration

struct DividerIllustration: View {

    @StateObject var model: DividerConfigurationModel
    @Environment(\.colorScheme) private var colorScheme

    var body: some View {
        VStack(alignment: .center) {
            DividerDemo(model: model)
            DividerDemo(model: model).colorScheme(colorScheme == .dark ? .light : .dark)
        }
    }
}

// MARK: - Button Demo

struct DividerDemo: View {

    @StateObject var model: DividerConfigurationModel
    @Environment(\.theme) private var theme

    var body: some View {
        Group {
            switch model.orientation {
            case .horizontal:
                VStack(alignment: .center) {
                    Spacer()
                    OUDSHorizontalDivider(dividerColor: model.selectedColor)
                    Spacer()
                }
            case .vertical:
                HStack(alignment: .center) {
                    Spacer()
                    OUDSVerticalDivider(dividerColor: model.selectedColor)
                    Spacer()
                }
            }
        }
        .frame(height: 44)
        .padding(.all, theme.spaces.spaceFixedMedium)
        .modifier(DesignToolboxColoredSurfaceModifier(coloredSurface: false))
    }
}
