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

import OUDSTokensSemantic
import SwiftUI

// MARK: - Chip


/// The ``Chip`` proposes layout with text only, icon only or text with icon.
struct Chip: View {

    // MARK: Stored Properties

    private let layout: Layout
    private let selected: Bool
    private let interactionState: ChipInteractionState

    @Environment(\.theme) private var theme

    enum IconPosition {
        // Icon at leading position
        case leading

        // Icon at trailing position
        case trailing
    }

    enum Layout {
        case text(String)
        case icon(Image, String)
        case textAndIcon(text: String, icon: Image, iconPosition: IconPosition = .leading)
    }

    // MARK: Initializers

    /// Create a chip with text and icon.
    ///
    /// - Parameters:
    ///    - layout: The layout of the chip
    ///    - selected: Flag to know if chip is selected
    ///    - interactionState: The interaction state from button
    public init(layout: Layout, selected: Bool, interactionState: ChipInteractionState) {
        self.layout = layout
        self.selected = selected
        self.interactionState = interactionState
    }

    // MARK: Body

    public var body: some View {
        HStack(alignment: .center, spacing: theme.chip.chipSpaceColumnGapColumnGap) { // TODO: chipSpaceColumnGapIcon
            ChipSelectionIndicator(state: interactionState, selected: selected)
            ChipContent(layout: layout, selected: selected, interactionState: interactionState)
        }
        .padding(.vertical, theme.chip.chipSpacePaddingBlock)
        .padding(.leading, leadingPadding)
        .padding(.trailing, trailingPadding)
        .modifier(ChipBackgroundModifier(state: interactionState))
        .modifier(ChipBorderModifier(state: interactionState))
        .frame(minWidth: theme.chip.chipSizeMinWidth, minHeight: theme.chip.chipSizeMinHeight)
    }

    private var leadingPadding: CGFloat {
        if selected {
            return theme.chip.chipSpacePaddingInlineIconStart // TODO:
        } else {
            switch layout {
            case .text:
                return theme.chip.chipSpacePaddingInlineIconNone
            case .icon:
                return theme.chip.chipSpacePaddingInlineIconStart // TODO: chipSpacePaddingInlineIcon
            case .textAndIcon(_, _, let iconPosition):
                if iconPosition == .leading {
                    return theme.chip.chipSpacePaddingInlineIconStart // TODO: chipSpacePaddingInlineIcon
                } else {
                    return theme.chip.chipSpacePaddingInlineIconNone // TODO: chipSpacePaddingInlineIcon
                }
            }
        }
    }

    private var trailingPadding: CGFloat {
        switch layout {
        case .text:
            return theme.chip.chipSpacePaddingInlineIconNone
        case .icon:
            return theme.chip.chipSpacePaddingInlineIconEnd // TODO: chipSpacePaddingInlineIcon
        case .textAndIcon(_, _, let iconPosition):
            if iconPosition == .leading {
                return theme.chip.chipSpacePaddingInlineIconNone // TODO: chipSpacePaddingInlineIcon
            } else {
                return theme.chip.chipSpacePaddingInlineIconEnd // TODO: chipSpacePaddingInlineIcon
            }
        }
    }
}

// MARK: - Chip Content

private struct ChipContent: View {

    // MARK: Stored Properties

    let layout: Chip.Layout
    let selected: Bool
    let interactionState: ChipInteractionState

    @Environment(\.theme) private var theme

    // MARK: Body

    var body: some View {
        Group {
            switch layout {
            case let .icon(icon, _):
                ScaledIcon(icon: icon, size: theme.chip.chipSizeIcon)
            case let .text(text):
                ChipText(text: text)
            case let .textAndIcon(text, icon, iconPosition):
                HStack(alignment: .center, spacing: theme.chip.chipSpaceColumnGapColumnGap) { // TODO: chipSpaceColumnGapIcon
                    if iconPosition == .leading {
                        FixedIcon(icon: icon, size: theme.chip.chipSizeIcon)
                    }

                    ChipText(text: text)

                    if iconPosition == .trailing {
                        FixedIcon(icon: icon, size: theme.chip.chipSizeIcon)
                    }
                }
            }
        }
        .modifier(ChipForegroundModifier(state: interactionState))
    }
}

// MARK: - Scaled Icon

private struct ScaledIcon: View {

    let icon: Image
    @ScaledMetric var size: CGFloat

    var body: some View {
        icon
            .resizable()
            .renderingMode(.template)
            .frame(width: size, height: size, alignment: .center)
    }
}

// MARK: - Fixed Icon

private struct FixedIcon: View {

    let icon: Image
    let size: CGFloat

    var body: some View {
        icon
            .resizable()
            .renderingMode(.template)
            .frame(width: size, height: size, alignment: .center)
    }
}

// MARK: - Text For Chip

private struct ChipText: View {

    let text: String
    @Environment(\.theme) private var theme

    var body: some View {
        Text(LocalizedStringKey(text))
            .typeLabelStrongMedium(theme)
            .multilineTextAlignment(.center)
    }
}

// MARK: - Selection Indicator

private struct ChipSelectionIndicator: View {

    // MARK: Stored Properties

    let state: ChipInteractionState
    let selected: Bool

    @Environment(\.theme) private var theme

    // MARK: Body

    var body: some View {
        if selected {
            // TODO: the tick is fixed or scaled ?
            // TODO: the tick is centered if text is on multiline ?
            ScaledIcon(icon: Image(decorative: "ic_tick", bundle: theme.resourcesBundle),
                      size: theme.chip.chipSizeIcon)
            .accessibilityHidden(true)
            .oudsForegroundColor(appliedColor)
        }
    }

    // MARK: Private helpers

    private var appliedColor: MultipleColorSemanticTokens {
        switch state {
        case .enabled:
            theme.chip.chipColorContentEnabled // TODO: chipColorContentSelectedTickEnabled
        case .hover:
            theme.chip.chipColorContentHover // TODO: chipColorContentSelectedTickHover
        case .pressed:
            theme.chip.chipColorContentPressed // TODO: chipColorContentSelectedPressed
        case .disabled:
            theme.chip.chipColorContentDisabled // TODO: chipColorContentSelectedTickDisabled
        }
    }
}
