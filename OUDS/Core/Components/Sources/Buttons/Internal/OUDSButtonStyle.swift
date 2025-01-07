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
struct OUDSButtonStyle: ButtonStyle {

    // MARK: Stored Properties

    @Environment(\.isEnabled) private var isEnable
    private let state: OUDSButton.ButtonState
    private let hierarchy: OUDSButton.Hierarchy
    @State private var isHover: Bool

    // MARK: Initializer

    /// Initialize the `OUDSButtonStyle` for the `hierarchy`
    /// in the `state` of the `OUDSButton`.
    ///
    ///  - Parameters:
    ///     - hierarchy: The button hierarchy
    ///     - state: The current stete of the button
    public init(hierarchy: OUDSButton.Hierarchy, state: OUDSButton.ButtonState) {
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
                .modifier(ButtonViewModifier(hierarchy: hierarchy, state: internalState(isPressed: configuration.isPressed)))
        case .loading:
            configuration.label
                .modifier(ButtonViewModifier(hierarchy: hierarchy, state: .loading))
                .modifier(ButtonLoadingContentModifier(hierarchy: hierarchy))
        case .skeleton:
            configuration.label
                .modifier(ButtonSkeletonModifier())
        }
    }

    func internalState(isPressed: Bool) -> InternalButtonState {
        if !isEnable {
            return .disabled
        }

        if isPressed {
            return .pressed
        }

        if isHover {
            return .hover
        }

        return .enabled
    }
}
