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
/// The layout of the chip will change according to the ``OUDSChipInteractionState`` and the selected flag.
struct Chip: View {

    // MARK: Stored Properties

    private let layout: Layout
    private let selected: Bool
    private let interactionState: OUDSChipInteractionState

    @Environment(\.theme) private var theme

    // MARK: Enums

    enum IconPosition {
        case leading
        case trailing
    }

    enum Layout {
        case text(String)
        case icon(OUDSImage, String)
        case textAndIcon(text: String, icon: OUDSImage, iconPosition: IconPosition = .leading)
    }

    // MARK: Initializers

    /// Creates a chip with text and icon.
    ///
    /// - Parameters:
    ///    - layout: The layout of the chip
    ///    - selected: Flag to know if chip is selected or not
    ///    - interactionState: The interaction state
    init(layout: Layout, selected: Bool, interactionState: OUDSChipInteractionState) {
        self.layout = layout
        self.selected = selected
        self.interactionState = interactionState
    }

    // MARK: Body

    var body: some View {
        HStack(alignment: .center, spacing: theme.chip.spaceColumnGapIcon) {
            ChipSelectionIndicator(state: interactionState, selected: selected)
            ChipContent(layout: layout, selected: selected, interactionState: interactionState)
        }
        .padding(.vertical, theme.chip.spacePaddingBlock)
        .padding(.leading, leadingPadding)
        .padding(.trailing, trailingPadding)
        .frame(minWidth: theme.chip.sizeMinWidth, minHeight: theme.chip.sizeMinHeight)
        .modifier(ChipBackgroundModifier(state: interactionState, selected: selected))
        .modifier(ChipBorderModifier(state: interactionState, selected: selected))
    }

    // MARK: - Private helpers

    private var leadingPadding: CGFloat {
        if selected {
            theme.chip.spacePaddingInlineIcon
        } else {
            switch layout {
            case .text:
                theme.chip.spacePaddingInlineIconNone
            case .icon:
                theme.chip.spacePaddingInlineIcon
            case let .textAndIcon(_, _, iconPosition):
                if iconPosition == .leading {
                    theme.chip.spacePaddingInlineIcon
                } else {
                    theme.chip.spacePaddingInlineIconNone
                }
            }
        }
    }

    private var trailingPadding: CGFloat {
        switch layout {
        case .text:
            theme.chip.spacePaddingInlineIconNone
        case .icon:
            theme.chip.spacePaddingInlineIcon
        case let .textAndIcon(_, _, iconPosition):
            if iconPosition == .trailing {
                theme.chip.spacePaddingInlineIcon
            } else {
                theme.chip.spacePaddingInlineIconNone
            }
        }
    }
}

// MARK: - Chip Content

private struct ChipContent: View {

    // MARK: Stored Properties

    let layout: Chip.Layout
    let selected: Bool
    let interactionState: OUDSChipInteractionState

    @Environment(\.theme) private var theme

    // MARK: Body

    var body: some View {
        Group {
            switch layout {
            case let .icon(oudsImage, accessibilityLabel):
                if let asset = oudsImage.asset {
                    OUDSScaledIcon(image: OUDSImage(asset: asset,
                                                    flipped: oudsImage.flipped,
                                                    accessibilityLabel: accessibilityLabel,
                                                    renderingMode: oudsImage.renderingMode),
                                   size: theme.chip.sizeIcon)
                }
            case let .text(text):
                ChipText(text: text)
            case let .textAndIcon(text, oudsImage, iconPosition):
                HStack(alignment: .center, spacing: theme.chip.spaceColumnGapIcon) {
                    if iconPosition == .leading, oudsImage.asset != nil {
                        OUDSFixedIcon(image: oudsImage,
                                      size: theme.chip.sizeIcon)
                    }

                    ChipText(text: text)

                    if iconPosition == .trailing, oudsImage.asset != nil {
                        OUDSFixedIcon(image: oudsImage,
                                      size: theme.chip.sizeIcon)
                    }
                }
            }
        }
        .modifier(ChipForegroundModifier(state: interactionState, selected: selected))
    }
}

// MARK: - Text For Chip

private struct ChipText: View {

    let text: String
    @Environment(\.theme) private var theme

    var body: some View {
        Text(LocalizedStringKey(text))
            .labelModerateMedium(theme)
            .multilineTextAlignment(.center)
    }
}

// MARK: - Selection Indicator

private struct ChipSelectionIndicator: View {

    // MARK: Stored Properties

    let state: OUDSChipInteractionState
    let selected: Bool

    @Environment(\.theme) private var theme

    // MARK: Body

    var body: some View {
        if selected {
            OUDSScaledIcon(image: OUDSImage(asset: Image(decorative: "ic_chip_tick", bundle: theme.resourcesBundle), renderingMode: .template),
                           size: theme.chip.sizeIcon)
                .accessibilityHidden(true)
                .foregroundColor(appliedColor)
        }
    }

    // MARK: Private helpers

    private var appliedColor: MultipleColorSemanticToken {
        switch state {
        case .enabled:
            theme.chip.colorContentSelectedTickEnabled
        case .hover:
            theme.chip.colorContentSelectedHover
        case .pressed:
            theme.chip.colorContentSelectedPressed
        case .disabled:
            theme.chip.colorContentSelectedDisabled
        }
    }
}
