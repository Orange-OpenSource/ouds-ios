//
// Software Name: OUDSThemesContract iOS
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

/// The button will compute the `InteractionState` to send it to the provided content builder.
/// This state is computed by the `InteractionButtonStyle`.
///
/// Remark: If the *isReadOnly* flag is true the action on the button is dropped.
struct InteractionButton<Content>: View where Content: View {

    // MARK: Stored properties

    private let isReadOnly: Bool
    private let action: () -> Void

    @ViewBuilder private let content: (InteractionState) -> Content

    // MARK: Initializer

    init(isReadOnly: Bool = false,
         action: @escaping () -> Void,
         @ViewBuilder content: @escaping (InteractionState) -> Content)
    {
        self.isReadOnly = isReadOnly
        self.action = action
        self.content = content
    }

    // MARK: Body

    var body: some View {
        Button("") {
            if !isReadOnly {
                action()
            }
        }
        .buttonStyle(InteractionButtonStyle(isReadOnly: isReadOnly, content: content))
    }
}

/// The SwiftUI `ButtonStyle` to compute the interaction state ``InteractionState`` and send it to
/// the provided content builder.
/// To compute this state, some elements are needed:
/// - the isHover flag get from the `onHover` added on the `content`
/// - the isPressed flag get from `ButtonStyle.Configuration`
/// - the isEnabled flag get from the `@Environement`
/// - the isReadOnly flag provided by the init function.
private struct InteractionButtonStyle<Content>: ButtonStyle where Content: View {

    // MARK: Stored properties

    private let isReadOnly: Bool

    @ViewBuilder private let content: (InteractionState) -> Content
    @State private var isHover: Bool = false
    @Environment(\.isEnabled) private var isEnabled

    // MARK: Initializer

    init(isReadOnly: Bool = false, content: @escaping (InteractionState) -> Content) {
        self.isReadOnly = isReadOnly
        self.content = content
    }

    // MARK: Body

    func makeBody(configuration: Configuration) -> some View {
        content(InteractionState(isEnabled: isEnabled, isHover: isHover, isPressed: configuration.isPressed, isReadOnly: isReadOnly))
            .onHover { isHover in
                self.isHover = isHover
            }
    }
}
