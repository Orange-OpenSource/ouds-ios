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
import SwiftUI

/// The common protocol used to define the configuration of each component.

protocol ComponentConfiguration {
    var description: String { get }
    var code: String { get }
}

/// Used to describe a component listed in `ComponenetsPage`
/// and illustrated in 'ComponentPage'.
struct ComponentEntity {
    /// The name of the component.
    let name: String

    /// The image associated to the component displayed in
    /// the associated Card in `ComponenetsPage`.
    let imageName: String

    /// The configuration shared between configuration view and component illustration view.
    let configuration: ComponentConfiguration

    /// The illustration displaying the component according to the configuration.
    @ViewBuilder
    let componentView: (_ configuration: ComponentConfiguration) -> AnyView

    /// The view used to change the configuration.
    @ViewBuilder
    let configurationView: (_ configuration: ComponentConfiguration) -> AnyView

    /// Unic identifier based on `name`.
    var id: String { name }
}
