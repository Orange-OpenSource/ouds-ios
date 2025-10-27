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
import SwiftUI

struct InputTagContent: View {

    let label: String
    let interactionState: InteractionState

    @Environment(\.theme) private var theme

    var body: some View {
        HStack(alignment: .center, spacing: theme.tag.tagSpaceColumnGapDefault) {
            Text(label)
                .typeLabelStrongMedium(theme)
            ScaledIcon(icon: Image(decorative: "ic_tag_close", bundle: theme.resourcesBundle).renderingMode(.template),
                       size: theme.tag.tagSizeAssetDefault)
                .aspectRatio(contentMode: .fit)
        }
        .padding(.vertical, theme.tag.tagSpacePaddingBlockDefault)
        .padding(.leading, theme.tag.tagSpacePaddingInlineDefault)
        .padding(.trailing, theme.tag.tagSpacePaddingInlineAssetDefault)
        .frame(minWidth: theme.tag.tagSizeMinWidthDefault, minHeight: theme.tag.tagSizeMinHeightDefault)
        .modifier(InputTagBackgroundModifier(state: interactionState))
        .modifier(InputTagForegroundModifier(state: interactionState))
        .modifier(InputTagBorderModifier(state: interactionState))
    }
}
