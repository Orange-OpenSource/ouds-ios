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

struct ButtonPage: View {

    // MARK: Stored properties

    let configuration = ButtonConfigurationModel()

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
    private func componentView(configuration: ComponentConfiguration) -> some View {
        if let model = configuration as? ButtonConfigurationModel {
            ButtonIllustration(model: model)
        }
    }

    @ViewBuilder
    private func configurationView(configuration: ComponentConfiguration) -> some View {
        if let model = configuration as? ButtonConfigurationModel {
            ButtonConfiguration(model: model)
        }
    }
}

/// The model shared between `ButtonPageConfiguration` view and `ButtonPageComponent` view.
class ButtonConfigurationModel: ComponentConfiguration, ObservableObject {
    var description: String {
        "This is a short diecriotion of Button"
    }

    var code: String { """
        Button {
        } label: {
            Text(\(text))
        }
        .disable(\(enabled ? "false" : "true"))
        """
    }

    @Published var text: String = "Hello"
    @Published var enabled: Bool = true

    init(text: String = "Hello", enabled: Bool = true) {
        self.text = text
        self.enabled = enabled
    }

    deinit { }
}

/// The component illustration according toi the configuration.

struct ButtonIllustration: View {

    // MARK: Environment properties

    @Environment(\.theme) private var theme
    @Environment(\.colorScheme) private var colorScheme

    // MARK: Stored properties

    @StateObject var model: ButtonConfigurationModel

    // MARK: Body

    // swiftlint:disable accessibility_label_for_image
    var body: some View {
        VStack(alignment: .center) {

            VStack {
                Text("Icon").font(.title)
                HStack(alignment: .center, spacing: 20) {

                    OOUDSButton(hierarchy: .default, icon: Image(systemName: "photo.on.rectangle"))
                        .disabled(!model.enabled)
                    OOUDSButton(hierarchy: .strong, icon: Image(systemName: "photo.on.rectangle"))
                        .disabled(!model.enabled)
                    OOUDSButton(hierarchy: .minimal, icon: Image(systemName: "photo.on.rectangle"))
                        .disabled(!model.enabled)
                    OOUDSButton(hierarchy: .negative, icon: Image(systemName: "photo.on.rectangle"))
                        .disabled(!model.enabled)
                }
            }
            .padding(.all, theme.spaceFixedMedium)

            VStack {
                Text("Text").font(.title)
                HStack(alignment: .center) {
                    Spacer()

                    VStack{
                        OOUDSButton(hierarchy: .default, text: model.text)
                        OOUDSButton(hierarchy: .strong, text: model.text)
                        OOUDSButton(hierarchy: .minimal, text: model.text)
                        OOUDSButton(hierarchy: .negative, text: model.text)
                    }
                    .disabled(!model.enabled)

                    Spacer()
                }
            }
            .padding(.all, theme.spaceFixedMedium)

            VStack {
                Text("Icon et Text").font(.title)

                HStack(alignment: .center) {
                    Spacer()
                    VStack{
                        OOUDSButton(hierarchy: .default, icon: Image(systemName: "photo.on.rectangle"), text: model.text)
                        OOUDSButton(hierarchy: .strong, icon: Image(systemName: "photo.on.rectangle"), text: model.text)
                        OOUDSButton(hierarchy: .minimal, icon: Image(systemName: "photo.on.rectangle"), text: model.text)
                        OOUDSButton(hierarchy: .negative, icon: Image(systemName: "photo.on.rectangle"), text: model.text)
                    }
                    .disabled(!model.enabled)

                    Spacer()
                }
            }
            .padding(.all, theme.spaceFixedMedium)
        }
        .background(theme.colorBgSecondary.color(for: colorScheme))
    }
    // swiftlint:enable accessibility_label_for_image
}

struct ButtonConfiguration: View {

    // MARK: Environment properties

    @Environment(\.theme) private var theme

    // MARK: Stored properties

    @StateObject var model: ButtonConfigurationModel

    // MARK: Body

    var body: some View {
        VStack(alignment: .leading, spacing: theme.spaceFixedMedium) {
            Toggle("Enabled", isOn: $model.enabled)
            TextField("Button text", text: $model.text)
        }
    }
}
