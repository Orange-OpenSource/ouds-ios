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

protocol ComponentConfiguration {
    var code: String { get }
}

/// Used to create an area with `Component` updated according to the `configuration`
/// modified by user using elements presented in `Configuration` view.
struct ComponentConfigurationView<Component, Configuration>: View where Component: View, Configuration: View {

    @Environment(\.theme) private var theme

    // MARK: Stored properties

    /// The configuration shared between configuration view and component illustration view.
    let configuration: ComponentConfiguration

    /// The illustration displaying the component according to the configuration.
    @ViewBuilder
    let componentView: (_ configuration: ComponentConfiguration) -> Component

    /// The view used to change the configuration.
    @ViewBuilder
    let configurationView: (_ configuration: ComponentConfiguration) -> Configuration

    // MARK: Body

    var body: some View {
        VStack(alignment: .leading, spacing: theme.spaceFixedMedium) {
            componentView(configuration)
            // No padding here, the component erea keep all the frame horizontaly

            ShowcaseConfiguration {
                configurationView(configuration)
            }
            .padding(.horizontal, theme.spaceFixedMedium)

            ShowcaseCode(code: configuration.code)
                .padding(.horizontal, theme.spaceFixedMedium)
        }
        .padding(.bottom, theme.spaceFixedMedium)
    }
}
