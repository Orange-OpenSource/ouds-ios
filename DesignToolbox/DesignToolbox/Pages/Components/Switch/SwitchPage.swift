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
            SwitchDemo(model: model)
                .colorScheme(colorScheme == .dark ? .light : .dark)
        }
    }
}

// MARK: - Switch Demo

private struct SwitchDemo: View {

    // MARK: Stored properties

    @Environment(\.theme) private var theme
    @StateObject var model: SwitchConfigurationModel
    @State var isOn: Bool = true

    // MARK: Body

    var body: some View {
        Group {
            if model.switchOnly {
                HStack(alignment: .center) {
                    Spacer()
                    OUDSSwitch(isOn: $isOn)
                        .disabled(!model.enabled)
                    Spacer()
                }
            } else {
                OUDSSwitch(
                    isOn: $isOn,
                    labelText: model.labelTextContent,
                    helperText: helperTextContent,
                    icon: icon,
                    onError: model.onError,
                    divider: model.divider,
                    orientation: model.orientation)
                    .disabled(!model.enabled)
            }
        }
        .padding(.all, theme.spaces.spaceFixedMedium)
        .designToolboxBackground(onColoredSurface: false)
    }

    // MARK: Private helpers

    private var helperTextContent: String? {
        model.helperText ? model.helperTextContent : nil
    }
    private var icon: Image? {
        model.icon ? Image(decorative: "ic_heart") : nil
    }
}
