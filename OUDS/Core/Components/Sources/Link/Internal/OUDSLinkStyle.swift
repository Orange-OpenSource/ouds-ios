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
import OUDSTokensComponent
import OUDSTokensSemantic
import SwiftUI

/// The internal state used by modifiers to handle all states of the button.
enum InternalLinkState {
    case enabled, hover, pressed, disabled
}

struct OUDSLinkStyle: ButtonStyle {

    @Environment(\.isEnabled) private var isEnabled
    @State private var isHover: Bool
    let layout: OUDSLink.Layout
    let size: OUDSLink.Size

    // MARK: Initializer

    public init(layout: OUDSLink.Layout, size: OUDSLink.Size) {
        self.isHover = false
        self.layout = layout
        self.size = size
    }

    // MARK: Body

    public func makeBody(configuration: Configuration) -> some View {
        Group {
            switch layout {
            case .arrow(let arrow):
                configuration.label
                    .labelStyle(LinkArrayLabelStyle(state: internalState(isPressed: configuration.isPressed), size: size, arrow: arrow))
            case .textOnly:
                configuration.label
                    .modifier(LinkColorContentModifier(state: internalState(isPressed: configuration.isPressed)))
            case .iconAndText:
                configuration.label
                    .labelStyle(LinkIconAndTextLabelStyle(state: internalState(isPressed: configuration.isPressed), size: size))
            }
        }
        .modifier(LinkTextModifier(size: size))
        .onHover { isHover in
            self.isHover = isHover
        }
    }

    // MARK: Private Helpers

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

private struct LinkArrayLabelStyle: LabelStyle {

    @Environment(\.theme) private var theme
    @Environment(\.colorScheme) private var colorScheme
    @Environment(\.oudsOnColoredSurface) private var onColoredSurface

    let state: InternalLinkState
    let size: OUDSLink.Size
    let arrow: OUDSLink.Arrow

    // MARK: Body

    func makeBody(configuration: Configuration) -> some View {
        HStack(spacing: spacing) {
            if arrow == .back {
                configuration.icon.modifier(LinkColorArrowModifier(state: state))
            }

            configuration.title
                .modifier(LinkColorContentModifier(state: state))

            if arrow == .next {
                configuration.icon
                    .modifier(LinkColorArrowModifier(state: state))
                    .rotationEffect(.degrees(180))
            }
        }
    }

    // MARK: Private Helpers

    private var spacing: Double {
        size == .small ? theme.link.linkSpaceColumnGapArrowSmall : theme.link.linkSpaceColumnGapArrowMedium
    }
}

private struct LinkIconAndTextLabelStyle: LabelStyle {

    @Environment(\.theme) private var theme
    @Environment(\.colorScheme) private var colorScheme
    @Environment(\.oudsOnColoredSurface) private var onColoredSurface

    let state: InternalLinkState
    let size: OUDSLink.Size

    // MARK: Body

    func makeBody(configuration: Configuration) -> some View {
        HStack(spacing: spacing) {
            configuration.icon
            configuration.title
        }
        .modifier(LinkColorContentModifier(state: state))
    }

    // MARK: Private Helpers

    private var spacing: Double {
        size == .small ? theme.link.linkSpaceColumnGapIconSmall : theme.link.linkSpaceColumnGapIconMedium
    }
}
