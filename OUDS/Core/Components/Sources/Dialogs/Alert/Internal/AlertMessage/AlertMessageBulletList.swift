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

struct AlertMessageBulletListItem: View {

    // MARK: - Properties

    let text: String
    let status: OUDSAlertStatus

    @Environment(\.theme) private var theme
    @Environment(\.horizontalSizeClass) private var horizontalSizeClass
    @Environment(\.verticalSizeClass) private var verticalSizeClass
    @Environment(\.dynamicTypeSize) private var dynamicTypeSize: DynamicTypeSize

    // MARK: - Body

    var body: some View {
        HStack(alignment: .top, spacing: theme.bulletList.spaceColumnGapBodyMedium) {
            HStack(alignment: .center) {
                OUDSIcon(assetName: "ic_bullet_list_level0", color: theme.colors.contentMuted)
                    .frame(width: iconSize, height: iconSize)
            }
            .frame(width: width, alignment: .trailing)
            .frame(maxHeight: maxHeight, alignment: .center)

            Text(text)
                .labelDefaultMedium(theme)
                .oudsForegroundColor(foregroundColor)
                .frame(maxWidth: theme.sizes.maxWidthTypeLabelMedium.dimension(for: horizontalSizeClass ?? .regular), alignment: .leading)
        }
    }

    // MARK: - Helpers

    private var iconSize: CGFloat {
        let rawSize = theme.sizes.iconWithLabelMediumSizeSmall
        return rawSize * dynamicTypeSize.percentageRate / 100
    }

    private var width: CGFloat {
        let rawSize = theme.sizes.iconWithLabelMediumSizeMedium
        return rawSize * dynamicTypeSize.percentageRate / 100
    }

    private var maxHeight: CGFloat {
        let rawSize = theme.fonts.lineHeightBodyMedium.lineHeight(for: verticalSizeClass ?? .regular)
        return rawSize * dynamicTypeSize.percentageRate / 100
    }

    private var foregroundColor: MultipleColorSemanticToken {
        switch status {
        case .neutral:
            theme.colors.contentDefault
        case .accent:
            theme.colors.contentOnStatusAccentMuted
        case .positive:
            theme.colors.contentOnStatusPositiveMuted
        case .negative:
            theme.colors.contentOnStatusNegativeMuted
        case .warning:
            theme.colors.contentOnStatusWarningMuted
        case .info:
            theme.colors.contentOnStatusInfoMuted
        }
    }
}
