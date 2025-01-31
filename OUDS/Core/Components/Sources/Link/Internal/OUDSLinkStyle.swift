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

// MARK: - Internal Link State

/// The internal state used by modifiers to handle all states of the button.
enum InternalLinkState {
    case enabled, hover, pressed, disabled
}

// MARK: - Link Style

struct OUDSLinkStyle: ButtonStyle {

    // MARK: Stored properties

    @Environment(\.theme) private var theme
    @Environment(\.isEnabled) private var isEnabled

    @State private var isHover: Bool
    let layout: OUDSLink.Layout
    let size: OUDSLink.Size

    // MARK: Initializer

    public init(layout: OUDSLink.Layout, size: OUDSLink.Size) {
        self.layout = layout
        self.size = size
        isHover = false
    }

    // MARK: Body

    public func makeBody(configuration: Configuration) -> some View {
        Group {
            switch layout {
            case .arrow(let arrow):
                configuration.label
                    .labelStyle(LinkArrowLabelStyle(state: internalState(isPressed: configuration.isPressed), size: size, arrow: arrow))
            case .textOnly:
                configuration.label
                    .labelStyle(LinkIconAndTextLabelStyle(state: internalState(isPressed: configuration.isPressed), size: size, layout: layout))
            case .iconAndText:
                configuration.label
                    .labelStyle(LinkIconAndTextLabelStyle(state: internalState(isPressed: configuration.isPressed), size: size, layout: layout))
            }
        }
        .padding(.horizontal, theme.link.linkSpacePaddingInline)
        .padding(.vertical, theme.link.linkSpacePaddingBlock)
        .frame(minWidth: minWidth, minHeight: minHeight)
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

    private var minWidth: Double {
        size == .small ? theme.link.linkSizeMinWidthSmall : theme.link.linkSizeMinWidthMedium
    }

    private var minHeight: Double {
        size == .small ? theme.link.linkSizeMinHeightSmall : theme.link.linkSizeMinHeightMedium
    }
}

// MARK: - Link Arrow Label Style

private struct LinkArrowLabelStyle: LabelStyle {

    @Environment(\.theme) private var theme
    @Environment(\.colorScheme) private var colorScheme
    @Environment(\.oudsOnColoredSurface) private var onColoredSurface

    let state: InternalLinkState
    let size: OUDSLink.Size
    let arrow: OUDSLink.Arrow

    func makeBody(configuration: Configuration) -> some View {
        HStack(alignment: alignment, spacing: spacing) {
            if arrow == .back {
                configuration.icon
                    .modifier(LinkSizeIconModifier(size: size))
                    .modifier(LinkColorArrowModifier(state: state))
            }

            configuration.title
                .modifier(LinkTextModifier(size: size, layout: .arrow(arrow), state: state))
                .modifier(LinkColorContentModifier(state: state))

            if arrow == .next {
                configuration.icon
                    .modifier(LinkSizeIconModifier(size: size))
                    .modifier(LinkColorArrowModifier(state: state))
                    .rotationEffect(.degrees(180))
            }
        }
    }

    private var spacing: Double {
        size == .small ? theme.link.linkSpaceColumnGapArrowSmall : theme.link.linkSpaceColumnGapArrowMedium
    }

    private var alignment: VerticalAlignment {
        arrow == .back ? .center : .bottom
    }
}

// MARK: - Link Icon And Text Label Label Style

private struct LinkIconAndTextLabelStyle: LabelStyle {

    @Environment(\.theme) private var theme
    @Environment(\.colorScheme) private var colorScheme
    @Environment(\.oudsOnColoredSurface) private var onColoredSurface

    let state: InternalLinkState
    let size: OUDSLink.Size
    let layout: OUDSLink.Layout

    func makeBody(configuration: Configuration) -> some View {
        HStack(spacing: spacing) {
            configuration.icon.modifier(LinkSizeIconModifier(size: size))
            configuration.title.modifier(LinkTextModifier(size: size, layout: layout, state: state))
        }
        .modifier(LinkColorContentModifier(state: state))
    }

    private var spacing: Double {
        size == .small ? theme.link.linkSpaceColumnGapIconSmall : theme.link.linkSpaceColumnGapIconMedium
    }
}
