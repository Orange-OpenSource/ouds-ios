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

import SwiftUI

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

/// The model shared between `ButtonPageConfiguration` view and `ButtonPageComponent` view.
final class ButtonConfigurationModel: ComponentConfiguration, ObservableObject {
    var description: String {
        "This is a short description of Button"
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

/// The component illustration according to the configuration.
struct ButtonIllustration: View {

    // MARK: Environment properties

    @Environment(\.theme) private var theme
    @Environment(\.colorScheme) private var colorScheme

    // MARK: Stored properties

    @StateObject var model: ButtonConfigurationModel

    // MARK: Body

    var body: some View {
        VStack(alignment: .center) {

            HStack(alignment: .center) {
                Spacer()

                Button {
                } label: {
                    Text(model.text)
                }
                .padding(.vertical, 8)
                .padding(.horizontal, 16)
                .background(.orange)
                .disabled(!model.enabled)

                Spacer()
            }
            .padding(.all, theme.spaceFixedMedium)
        }
        .background(theme.colors.colorBgSecondary.color(for: colorScheme))
    }
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
