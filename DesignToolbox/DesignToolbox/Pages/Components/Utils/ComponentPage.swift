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

/// The common protocol used to define the configuration of each component.

open class ComponentConfiguration: ObservableObject {
    @Published var code: String = ""

    init() {
        self.updateCode()
    }

    deinit {}

    // Overwride this function and update code when configuration changed
    func updateCode() {}
}

/// Used to create an area with `Component` updated according to the `configuration`
/// modified by user using elements presented in `Configuration` view.
struct ComponentConfigurationView<Component, Configuration>: View where Component: View, Configuration: View {

    @Environment(\.theme) private var theme

    // MARK: Stored properties

    /// The configuration shared between configuration view and component illustration view.
    @ObservedObject var configuration: ComponentConfiguration

    /// The illustration displaying the component according to the configuration.
    @ViewBuilder
    let componentView: (_ configuration: ComponentConfiguration) -> Component

    /// The view used to change the configuration.
    @ViewBuilder
    let configurationView: (_ configuration: ComponentConfiguration) -> Configuration

    // MARK: Body

    var body: some View {
        VStack(alignment: .leading, spacing: theme.spaces.spaceFixedMedium) {
            componentView(configuration)
            // No padding here, the component erea keep all the frame horizontaly

            DesignToolboxConfiguration {
                configurationView(configuration)
            }
            .padding(.horizontal, theme.spaces.spaceFixedMedium)

            DesignToolboxCode(code: configuration.code, titleText: "app_components_common_viewCodeExample_label")
                .padding(.horizontal, theme.spaces.spaceFixedMedium)
        }
        .padding(.bottom, theme.spaces.spaceFixedMedium)
    }
}
