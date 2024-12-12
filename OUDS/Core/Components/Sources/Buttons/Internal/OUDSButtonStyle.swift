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
import OUDSTokensSemantic
import SwiftUI

/// Used to apply the right style on a `OUDSButton` according to the `hierarchy`
/// and the `style`.
///
/// Four hierarchies are proposed:
/// - default: Default buttons are used for actions which are not mandatory or essential for the user.
///
/// - strong: The Strong "call for action" on the page should be singular and prominent, limited to one per view.
/// It should be reserved for the most critical action, such as "Next," "Save," "Submit," etc.
///
/// - minimal: Minimal buttons are commonly used for actions that are considered less crucial. They can be used independently or together with a strong button.
///
/// - negative: Negative buttons should be used sparingly to warn of a destructive action, for example, delete or remove, typically
/// resulting in the opening of a confirmation dialog.
///
/// Three styles are available:
/// - normal: is the normal state of a button which can be disabled, pressed, hovered or normal (i.e. enabled)
/// - skeleton: the style used when screen if presenting and probably loading data for the first time.
/// - loading: the style used after button was clicked and probably data are requested before navigate to a next screen or get updated data.
///
public struct OUDSButtonStyle: ButtonStyle {

    /// Represents the hierarchy of an OUDS button
    public enum Hierarchy {
        /// Default button is used for action
        case `default`
        /// Strong button on the page should be singular and prominent
        case strong
        /// Minimal button for actions that are considered less crucial
        case minimal
        /// Negative button used for destructive action
        case negative
    }

    /// Defines the state of the button
    public enum ButtonState {
        /// The normal state, the button coumd be in prossed, hover, disabled or enabled internal state
        case normal

        /// The loading state means a loading action is in progress, sometimes just after user tapped on button
        case loading

        /// The skeleton state can be apply on the button when the screen is loadind data for the first time
        case skeleton
    }

    // MARK: Stored Properties

    @Environment(\.isEnabled) private var isEnable
    private let state: ButtonState
    private let hierarchy: Hierarchy
    @State private var isHover: Bool

    // MARK: Initializer

    /// Initialize the `OUDSButtonStyle` for the `hierarchy`
    /// in the `state` of the `OUDSButton`.
    ///
    ///  - Parameters:
    ///     - hierarchy: The button hierarchy
    ///     - state: The current stete of the button
    public init(hierarchy: Hierarchy, state: ButtonState) {
        self.hierarchy = hierarchy
        self.state = state
        self.isHover = false
    }

    // MARK: Body

    public func makeBody(configuration: Configuration) -> some View {
        switch state {
        case .normal:
            configuration.label
                .onHover { isHover in
                    self.isHover = isHover
                }
                .modifier(ButtonViewModifier(hierarchy: hierarchy, isEnabled: isEnable, isHover: isHover, isPressed: configuration.isPressed))
        case .loading:
            configuration.label
                .modifier(ButtonLoadingContentModifier(hierarchy: hierarchy))
                .modifier(ButtonViewModifier(hierarchy: hierarchy, isEnabled: true, isHover: false, isPressed: false))
        case .skeleton:
            configuration.label.modifier(ButtonSkeletonModifier())
        }
    }
}
