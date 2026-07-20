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

import OUDSThemesContract
import OUDSTokensComponent
import SwiftUI

// MARK: - Link Button Style

struct LinkButtonStyle: ButtonStyle {

    // MARK: Stored properties

    let layout: OUDSLink.Layout
    let size: OUDSLink.Size
    let isFullWidth: Bool

    @State private var isHover: Bool

    @Environment(\.theme) private var theme
    @Environment(\.isEnabled) private var isEnabled
    @Environment(\.oudsHorizontalSizeClass) private var oudsHorizontalSizeClass

    // MARK: Initializer

    init(layout: OUDSLink.Layout, size: OUDSLink.Size, isFullWidth: Bool) {
        self.layout = layout
        self.size = size
        self.isFullWidth = isFullWidth
        isHover = false
    }

    // MARK: Body

    func makeBody(configuration: Configuration) -> some View {
        let interactionState = OUDSButtonInteractionState(isEnabled: isEnabled, isHover: isHover, isPressed: configuration.isPressed)
        Group {
            switch layout {
            case let .indicator(indicator):
                configuration.label
                    .labelStyle(LinkIndicatorLabelStyle(interactionState: interactionState, size: size, indicator: indicator, isFullWidth: isFullWidth))
            case .textOnly:
                configuration.label
                    .labelStyle(LinkTextAndIconLabelStyle(interactionState: interactionState, size: size, layout: layout))
            case .textAndIcon:
                configuration.label
                    .labelStyle(LinkTextAndIconLabelStyle(interactionState: interactionState, size: size, layout: layout))
            }
        }
        .padding(.horizontal, theme.link.spacePaddingInline)
        .padding(.vertical, verticalPadding)
        .frame(minWidth: minWidth, minHeight: minHeight)
        .frame(maxWidth: isFullWidth ? .infinity : nil)
        .contentShape(Rectangle())
        #if !os(watchOS) && !os(tvOS)
            .onHover { isHover in
                self.isHover = isHover
            }
        #endif
    }

    // MARK: Helpers

    private var minWidth: Double {
        size == .small ? theme.link.sizeMinWidthSmall : theme.link.sizeMinWidth
    }

    private var minHeight: Double {
        if oudsHorizontalSizeClass == .regular {
            size == .small ? theme.link.sizeMinHeightSmall : theme.link.sizeMinHeightDefault
        } else { // .compact, .extraCompact
            theme.link.sizeMinHeightCompactDensity
        }
    }

    private var verticalPadding: Double {
        if oudsHorizontalSizeClass == .regular {
            size == .small ? theme.link.spacePaddingBlockSmall : theme.link.spacePaddingBlockDefault
        } else { // .compact, .extraCompact
            size == .small ? theme.link.spacePaddingBlockCompactDensitySmall : theme.link.spacePaddingBlockCompactDensityDefault
        }
    }
}

// MARK: - Link Indicator Label Style

private struct LinkIndicatorLabelStyle: LabelStyle {

    @Environment(\.theme) private var theme

    let interactionState: OUDSButtonInteractionState
    let size: OUDSLink.Size
    let indicator: OUDSLink.Indicator
    let isFullWidth: Bool

    func makeBody(configuration: Configuration) -> some View {
        HStack(alignment: .center, spacing: spacing) {
            if indicator == .previous {
                configuration.icon
                    .modifier(LinkSizeIconModifier(size: size))
                    .modifier(LinkColorIndicatorModifier(interactionState: interactionState))

                if isFullWidth {
                    Spacer(minLength: 0)
                }
            }

            configuration.title
                .modifier(LinkTextModifier(interactionState: interactionState, size: size, layout: .indicator(indicator)))
                .modifier(LinkColorContentModifier(interactionState: interactionState))

            if indicator == .next {
                if isFullWidth {
                    Spacer(minLength: 0)
                }

                configuration.icon
                    .modifier(LinkSizeIconModifier(size: size))
                    .modifier(LinkColorIndicatorModifier(interactionState: interactionState))
            }
        }
    }

    private var spacing: Double {
        size == .small ? theme.link.spaceColumnGapChevronSmall : theme.link.spaceColumnGapChevronDefault
    }
}

// MARK: - Link Icon And Text Label Label Style

private struct LinkTextAndIconLabelStyle: LabelStyle {

    @Environment(\.theme) private var theme

    let interactionState: OUDSButtonInteractionState
    let size: OUDSLink.Size
    let layout: OUDSLink.Layout

    func makeBody(configuration: Configuration) -> some View {
        HStack(spacing: spacing) {
            configuration.icon.modifier(LinkSizeIconModifier(size: size))
            configuration.title.modifier(LinkTextModifier(interactionState: interactionState, size: size, layout: layout))
        }
        .modifier(LinkColorContentModifier(interactionState: interactionState))
    }

    private var spacing: Double {
        size == .small ? theme.link.spaceColumnGapIconSmall : theme.link.spaceColumnGapIconDefault
    }
}
