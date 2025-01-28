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

// MARK: Switch page

struct SwitchPage: View {

    private let configuration = SwitchConfigurationModel()

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

// MARK: Switch Illustration

struct SwitchIllustration: View {

    @Environment(\.colorScheme) private var colorScheme

    let model: SwitchConfigurationModel

    var body: some View {
        VStack(alignment: .center) {
            // TODO: Build a modifier to inverse colorscheme or force to a colorscheme
            SwitchDemo(model: model)
                .colorScheme(colorScheme == .dark ? .light : .dark)
            SwitchDemo(model: model)
        }
    }
}

// MARK: - Switch Demo

private struct SwitchDemo: View {

    @Environment(\.theme) private var theme

    @StateObject var model: SwitchConfigurationModel
    @State var isOn: Bool = true

    var body: some View {
        HStack(alignment: .center) {
            Spacer()

            switch model.layout {
            case .iconOnly:
                OUDSSwitch(isOn: $isOn)
            case .textOnly:
                OUDSSwitch(isOn: $isOn)
            case .iconAndText:
                OUDSSwitch(isOn: $isOn)
            }

            Spacer()
        }
        .disabled(!model.enabled)
        .padding(.all, theme.spaces.spaceFixedMedium)
    }
}
