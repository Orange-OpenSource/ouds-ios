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

// MARK: - Interaction Button

/// ``OUDSInteractionButton`` defines how a tappable component can be defined with several interaction states.
/// Remark: If the *isReadOnly* flag is true the action on the button is dropped.
///
/// ## Code samples
///
/// ```swift
/// struct MyTappableComponent: View {
///
///     let isReadOnly: Bool
///
///     var body: some View {
///         OUDSInteractionButton(isReadOnly: isReadOnly) {
///             // Do something on tap
///         } content: { interactionState in
///             // Define your component and its style depending to the given OUDSButtonInteractionState
///         }
///     }
/// }
/// ```
///
/// - Since: 2.3.0
public struct OUDSInteractionButton<Content>: View where Content: View {

    // MARK: Properties

    private let isReadOnly: Bool
    private let action: () -> Void

    @ViewBuilder private let content: (OUDSButtonInteractionState) -> Content

    // MARK: Initializer

    /// - Parameters:
    ///    - isReadOnly: Default set to `false`, defines if the component is in read only state or not
    ///    - action: The action to trigger when the user taps the `OUDSInteractionButton`. Won't be triggered is `isReadOnly` set to `true`.
    ///    - content: A `ViewBuilder` to define the content of the `OUDSInteractionButton`
    public init(isReadOnly: Bool = false,
                action: @escaping () -> Void,
                @ViewBuilder content: @escaping (OUDSButtonInteractionState) -> Content)
    {
        self.isReadOnly = isReadOnly
        self.action = action
        self.content = content
    }

    // MARK: Body

    public var body: some View {
        Button("") {
            if !isReadOnly {
                action()
            }
        }
        .buttonStyle(OUDSInteractionButtonStyle(isReadOnly: isReadOnly, content: content))
    }
}

// MARK: - Interaction Button Style

/// The SwiftUI `ButtonStyle` to compute the interaction state ``OUDSButtonInteractionState`` and send it to
/// the provided content builder.
/// To compute this state, some elements are needed:
/// - the `isHover` flag get from the `onHover` added on the `content`
/// - the `isPressed` flag get from `ButtonStyle.Configuration`
/// - the `isEnabled` flag get from the `@Environement`
/// - the `isReadOnly` flag provided by the init function.
///
/// ## Code samples
///
/// ```swift
/// struct MyButton<Content>: View where Content: View {
///
///     let isReadOnly: Bool
///     let action: () -> Void
///     @ViewBuilder let content: (OUDSButtonInteractionState) -> Content
///
///     var body: some View {
///         Button("") {
///             if !isReadOnly {
///                 action()
///             }
///         }
///         // Will defined the interaction state for the button depending to the OS
///         .buttonStyle(OUDSInteractionButtonStyle(isReadOnly: isReadOnly, content: content))
///     }
/// }
///
/// // Then call
/// MyButton(isReadOnly: isReadOnly) {
///     // Toggle action
/// } content: { interactionState in
///     // Change the layout depending to the interaction state
///     SomeComponentLayout(interactionState: interactionState)
/// }
/// ```
///
/// - Since: 2.3.0
public struct OUDSInteractionButtonStyle<Content>: ButtonStyle where Content: View {

    // MARK: Properties

    private let isReadOnly: Bool
    @ViewBuilder private let content: (OUDSButtonInteractionState) -> Content
    @State private var isHover: Bool = false

    @Environment(\.isEnabled) private var isEnabled

    // MARK: Initializer

    public init(isReadOnly: Bool = false, content: @escaping (OUDSButtonInteractionState) -> Content) {
        self.isReadOnly = isReadOnly
        self.content = content
    }

    // MARK: Body

    public func makeBody(configuration: Configuration) -> some View {
        content(OUDSButtonInteractionState(isEnabled: isEnabled, isHover: isHover, isPressed: configuration.isPressed, isReadOnly: isReadOnly))
        #if !os(watchOS) && !os(tvOS)
            .onHover { isHover in
                self.isHover = isHover
            }
        #endif
    }
}
