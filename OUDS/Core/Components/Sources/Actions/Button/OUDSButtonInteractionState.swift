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

/// The interaction state used by modifiers to handle all states of the indicator.
/// Any OUDS components should manage all these cases.
///
/// The `readOnly` state primes over all.
/// Then `disabled` state, `pressed`, `hover` and in the end `enabled`
///
/// ## Code samples
///
/// ```swift
/// struct MyTappableComponentButtonStyle: ButtonStyle {
///
///     @State private var isHover: Bool
///     @Environment(\.isEnabled) private var isEnabled
///
///     func makeBody(configuration: Configuration) -> some View {
///         // isEnabled: picked from environment object / SwiftUI layer
///         // isHover: from API callback on some OS
///         // isPressed: from ButtonStyle SwiftUI API
///         let interactionState = OUDSButtonInteractionState(isEnabled: isEnabled, isHover: isHover, isPressed: configuration.isPressed)
///         YourComponentBody(with: interactionState) // Define your style depending to the state
///         #if !os(watchOS) && !os(tvOS)
///            .onHover { isHover in
///                self.isHover = isHover
///            }
///         #endif
///     }
/// }
///
///  // Then define your component
///  struct MyTappableComponent: View {
///
///     var body: some View {
///         MyTappableComponentBody()
///             .buttonStyle(MyTappableComponentButtonStyle())
///     }
///  }
/// ```
///
/// - Since: 2.3.0
@frozen public enum OUDSButtonInteractionState {

    /// User can interact with the component
    case enabled

    /// The component is hovered, e.g. with an a11y hardware or a mouse
    case hover

    /// The component is being pressed
    case pressed

    /// The user cannot interact with the component
    case disabled

    /// The component is not disabled but user cannot interact with it still. Almost enabled.
    case readOnly // (╯°□°）╯︵ ┻━┻

    /// Create the state according to flags.
    ///
    /// - Parameters:
    ///    - isEnabled: `true` if enabled, `false` otherwise (i.e. get for `isEnabled` environment)
    ///    - isHover: `true` if a view is hovered, `false` otherwise (i.e. get from `onHover`)
    ///    - isPressed: `true` if pressed, `false` otherwise (i.e. get from `ButtonStyle.Configuration`)
    ///    - isReadOnly: `true` if read only, `false` otherwise
    public init(isEnabled: Bool, isHover: Bool, isPressed: Bool, isReadOnly: Bool = false) {
        if isReadOnly {
            self = .readOnly
        } else {
            if !isEnabled {
                self = .disabled
            } else {
                if isPressed {
                    self = .pressed
                } else {
                    if isHover {
                        self = .hover
                    } else {
                        self = .enabled
                    }
                }
            }
        }
    }
}
