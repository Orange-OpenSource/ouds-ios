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

// MARK: ColoredSurface page

struct ColoredSurfacePage: View {

    private let configuration = ColoredSurfaceConfigurationModel()

    var body: some View {
        ComponentConfigurationView(
            configuration: configuration,
            componentView: componentView,
            configurationView: configurationView
        )
    }

    @ViewBuilder
    private func componentView(with configuration: ComponentConfiguration) -> some View {
        if let model = configuration as? ColoredSurfaceConfigurationModel {
            ColoredSurfaceIllustration(model: model)
        }
    }

    @ViewBuilder
    private func configurationView(with configuration: ComponentConfiguration) -> some View {
        if let model = configuration as? ColoredSurfaceConfigurationModel {
            ColoredSurfaceConfiguration(model: model)
        }
    }
}

// MARK: ColoredSurface Illustration

struct ColoredSurfaceIllustration: View {

    @Environment(\.colorScheme) private var colorScheme
    @ObservedObject var model: ColoredSurfaceConfigurationModel

    var body: some View {
        VStack(alignment: .center) {
            ColoredSurfaceDemo(model: model)
        }
    }
}

// MARK: - ColoredSurface Demo

private struct ColoredSurfaceDemo: View {

    @Environment(\.theme) private var theme

    @StateObject var model: ColoredSurfaceConfigurationModel

    var body: some View {
        HStack(alignment: .center) {
            Spacer()

            Spacer()
        }
        .padding(.all, theme.spaces.spaceFixedMedium)
//        .modifier(DesignToolboxColoredBackgroundModifier(coloredSurface: model.onColoredSurface))
    }
}
