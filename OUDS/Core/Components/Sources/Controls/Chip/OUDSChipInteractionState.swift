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

import OUDSFoundations

/// The state used by modifiers to handle all states of the chip components.
/// Combined with an interaction button,d efines the available states for a component of a chip family.
///
/// ## Code samples
///
/// ```swift
/// struct MyCustomChip: View {
///
///     let action: () -> Void
///
///     public var body: some View {
///         // Defines for your chip an interaction button with a given action to trigger
///         // It has MyChipLayout as layout, and casts the button interaction state
///         // to the chip interaction state
///         OUDSInteractionButton(action: action) {
///             // Deal with the states in the chip layout to change the layout
///             MyChipLayout(interactionState: OUDSChipInteractionState(with: $0))
///         }
///     }
/// }
/// ```
///
/// - Since: 2.3.0
public enum OUDSChipInteractionState {

    /// User can interact with the component
    case enabled

    /// The component is hovered, e.g. with an a11y hardware or a mouse
    case hover

    /// The component is being pressed
    case pressed

    /// The user cannot interact with the component
    case disabled

    /// Initializes the ``OUDSChipInteractionState`` from the ``OUDSButtonInteractionState`
    /// provided by the ``OUDSInteractionButton`` which is used to build a chip.
    ///
    /// This is prefered because chip does not support read only state.
    ///
    /// - Parameter interactionState: State provided by `OUDSInteractionButton`. Crashes if `.readOnly`.
    public init(with interactionState: OUDSButtonInteractionState) {
        switch interactionState {
        case .enabled:
            self = .enabled
        case .hover:
            self = .hover
        case .pressed:
            self = .pressed
        case .disabled:
            self = .disabled
        case .readOnly:
            OL.fatal("An OUDS chip is a component which cannot be in read only mode")
        }
    }
}
