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

struct AletMessageBulletListItem: View {

    // - MARK: Properties

    let text: String

    @Environment(\.theme) private var theme
    @Environment(\.horizontalSizeClass) private var horizontalSizeClass
    @Environment(\.verticalSizeClass) private var verticalSizeClass
    @Environment(\.dynamicTypeSize) private var dynamicTypeSize: DynamicTypeSize

    // - MARK: Body

    var body: some View {
        VStack(alignment: .leading, spacing: theme.alert.spaceRowGapBullet) {
            HStack(alignment: .top, spacing: theme.bulletList.spacePaddingBlockBodyMedium) {
                HStack(alignment: .center) {
                    ScaledIcon(icon: Image(decorative: "ic_bullet_list_level0", bundle: theme.resourcesBundle).renderingMode(.template),
                               size: theme.sizes.iconWithLabelMediumSizeMedium)
                        .oudsForegroundColor(theme.colors.contentMuted)
                }
                .frame(maxHeight: maxHeight, alignment: .trailing)

                Text(text)
                    .labelDefaultMedium(theme)
                    .oudsForegroundColor(theme.colors.contentMuted)
                    .frame(maxWidth: theme.sizes.maxWidthTypeLabelMedium.dimension(for: horizontalSizeClass ?? .regular), alignment: .leading)
            }
        }
    }

    private var maxHeight: CGFloat {
        let rawSize = theme.fonts.lineHeightBodyMedium.lineHeight(for: verticalSizeClass ?? .regular)
        return rawSize * dynamicTypeSize.percentageRate / 100
    }
}
