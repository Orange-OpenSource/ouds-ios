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
import OUDSTokensSemantic
import OUDSFoundations

struct LinkTextAndIconView: View {

    // MARK: - Properties

    let text: String
    let icon: OUDSImage?
    let size: OUDSLink.Size
    let layout: OUDSLink.Layout
    let interactionState: OUDSButtonInteractionState

    @Environment(\.theme) private var theme
    @Environment(\.oudsUseMonochrome) private var useMonochrome
    @Environment(\.oudsSurfaceColor) private var surfaceColor

    // MARK: - Body

    var body: some View {
        HStack(spacing: spacing) {
            if let asset = icon?.asset {
                asset
                    .renderingMode(icon?.renderingMode)
                    .resizable()
                    .frame(width: iconSize, height: iconSize)
            }

            Group {
                switch size {
                case .small:
                    Text(LocalizedStringKey(text))
                        .underline(underlineActive)
                        .labelStrongMedium(theme)
                case .default:
                    Text(LocalizedStringKey(text))
                        .underline(underlineActive)
                        .labelStrongLarge(theme)
                }
            }
            .multilineTextAlignment(.leading)
        }
        .foregroundStyle(LinkColorProvider.colorContent(from: theme, with: interactionState, useMonochrome: useMonochrome))
    }

    // MARK: - Helpers

    private var iconSize: CGFloat {
        size == .small ? theme.link.sizeIconSmall : theme.link.sizeIconDefault
    }

    private var spacing: Double {
        size == .small ? theme.link.spaceColumnGapIconSmall : theme.link.spaceColumnGapIconDefault
    }

    private var underlineActive: Bool {
        switch layout {
        case .indicator:
            interactionState == .hover || interactionState == .pressed
        case .textOnly:
            true
        case .textAndIcon:
            interactionState == .hover || interactionState == .pressed
        }
    }
}
