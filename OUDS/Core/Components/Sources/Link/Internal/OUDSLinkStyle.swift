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

/// The internal state used by modifiers to handle all states of the button.
enum InternalLinkState {
    case enabled, hover, pressed, disabled
}

struct OUDSLinktyle: ButtonStyle {

    @Environment(\.isEnabled) private var isEnabled

    @State private var isHover: Bool

    // MARK: Stored Properties

    private let layout: OUDSLink.Layout
    private let size: OUDSLink.Size

    // MARK: Initializer

    /// Initialize the `OUDSButtonStyle` for the `hierarchy`
    /// in the `state` of the `OUDSButton`.
    ///
    /// - Parameters:
    ///    - layout: The link layout
    ///    - size: The link size
    public init(layout: OUDSLink.Layout, size: OUDSLink.Size) {
        self.layout = layout
        self.size = size
        self.isHover = false
    }

    // MARK: Body

    public func makeBody(configuration: Configuration) -> some View {
        configuration
            .label
            .labelStyle(LinkLabelStyle(state: internalState(isPressed: configuration.isPressed), layout: layout))
            .onHover { isHover in
                self.isHover = isHover
            }
    }

    private func internalState(isPressed: Bool) -> InternalLinkState {
        if !isEnabled {
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

struct LinkLabelStyle: LabelStyle {

    let state: InternalLinkState
    let layout: OUDSLink.Layout

    func makeBody(configuration: Configuration) -> some View {
        HStack {
            configuration.icon.modifier(LinkIconsModifier(state: state, layout: layout))
            configuration.title.modifier(LinkTextModifier(state: state))
        }
    }
}

struct LinkIconsModifier: ViewModifier {
    let state: InternalLinkState
    let layout: OUDSLink.Layout

    func body(content: Content) -> some View {
        switch layout {
        case .arrow(let arrow):
            content.modifier(LinkArrowModifier(state: state, arrow: arrow))
        case .textOnly:
            content
        case .textAndIcon:
            content
        }
    }
}
