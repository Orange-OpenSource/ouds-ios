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

import AVKit
import OUDSTokensSemantic
import SwiftUI

struct ListItemTrailingTexts: View {

    // MARK: - Properties

    let textType: OUDSListItemTrailing.TextType

    @Environment(\.theme) private var theme
    @Environment(\.isEnabled) private var isEnabled
    @Environment(\.oudsListItemSize) private var itemSize
    @Environment(\.oudsListItemContainersAlignment) private var alignment

    // MARK: - Body

    var body: some View {
        VStack(alignment: .trailing, spacing: theme.controlItem.spaceRowGap) {
            switch textType {
            case let .label(label):
                label
                    .labelDefaultLarge(theme)
                    .foregroundColor(labelColor)
            case let .labelMuted(label):
                label
                    .labelDefaultLarge(theme)
                    .foregroundColor(labelColor)
            case let .labelStrong(label):
                label
                    .labelStrongLarge(theme)
                    .foregroundColor(labelColor)
            case let .labelAndExtraLabel(label, extraLabel):
                label
                    .labelDefaultLarge(theme)
                    .foregroundColor(labelColor)

                if itemSize == .standard {
                    extraLabel
                        .labelStrongMedium(theme)
                        .foregroundColor(isEnabled ? theme.colors.contentDefault : theme.colors.contentDisabled)
                }
            }
        }
        .padding(.top, topPadding)
    }

    // MARK: - Helpers

    private var labelColor: MultipleColorSemanticToken {
        if !isEnabled {
            theme.colors.contentDisabled
        } else {
            switch textType {
            case .label, .labelStrong, .labelAndExtraLabel:
                theme.colors.contentDefault
            case .labelMuted:
                theme.colors.contentMuted
            }
        }
    }

    private var topPadding: SpaceSemanticToken {
        switch alignment {
        case .center:
            theme.spaces.fixedNone
        case .top:
            switch itemSize {
            case .standard:
                theme.controlItem.spacePaddingBlockDensityDefaultTopAlignmentTopTextContainer
            case .small:
                theme.controlItem.spacePaddingBlockDensityCompactTopAlignmentTopTextContainer
            }
        }
    }
}
