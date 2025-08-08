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

struct TagIcon: View {

    // MARK: Stored Properties

    let type: OUDSTag.`Type`
    let hierarchy: OUDSTag.Hierarchy
    let status: OUDSTag.Status
    let size: OUDSTag.Size
    @Environment(\.theme) private var theme

    // MARK: Body

    var body: some View {
        switch type {
        case .textAndIcon(_, let icon):
            if let icon {
                TagAsset(icon: icon, hierarchy: hierarchy, status: status, size: size)
            }
        case .textAndLoader:
            Image(systemName: "circle.fill")
                .padding(.all, loaderPadding)
        }
    }

    private var loaderPadding: CGFloat {
        switch size {
        case .default:
            theme.tag.tagSpaceInsetLoaderDefault
        case .small:
            theme.tag.tagSpaceInsetLoaderSmall
        }
    }
}

struct TagAsset: View {

    // MARK: Stored properties

    let icon: OUDSTag.Icon
    let hierarchy: OUDSTag.Hierarchy
    let status: OUDSTag.Status
    let size: OUDSTag.Size

    @Environment(\.theme) private var theme

    // MARK: Body

    var body: some View {
        image
            .renderingMode(.template)
            .resizable()
            .oudsForegroundStyle(color)
            .padding(.all, padding)
    }

    // MARK: Helpers

    private var image: Image {
        switch icon {
        case .bullet:
            Image(decorative: "ic_tag_bullet", bundle: theme.resourcesBundle)
        case .asset(let image):
            image
        }
    }

    private var color: MultipleColorSemanticTokens {
        switch hierarchy {
        case .emphasized:
            return emphasizeColor
        case .muted:
            return mutedColor
        }
    }

    private var emphasizeColor: MultipleColorSemanticTokens {
        switch status {
        case .neutral:
            return theme.colors.colorContentOnStatusNeutralEmphasized
        case .accent:
            return theme.colors.colorContentOnStatusAccentEmphasized
        case .positive:
            return theme.colors.colorContentOnStatusPositiveEmphasized
        case .warning:
            return theme.colors.colorContentOnStatusWarningEmphasized
        case .negative:
            return theme.colors.colorContentOnStatusNegativeEmphasized
        case .info:
            return theme.colors.colorContentOnStatusInfoEmphasized
        case .disabled:
            return theme.colors.colorContentOnActionDisabled
        }
    }

    private var mutedColor: MultipleColorSemanticTokens {
        switch status {
        case .neutral:
            return theme.colors.colorContentOnStatusNeutralMuted
        case .accent:
            return theme.colors.colorContentStatusAccent
        case .positive:
            return theme.colors.colorContentStatusPositive
        case .warning:
            return theme.colors.colorContentStatusWarning
        case .negative:
            return theme.colors.colorContentStatusNegative
        case .info:
            return theme.colors.colorContentStatusInfo
        case .disabled:
            return theme.colors.colorContentOnActionDisabled
        }
    }

    private var padding: CGFloat {
        switch icon {
        case .bullet:
            return bulletPadding
        case .asset:
            return assetPadding
        }
    }

    private var bulletPadding: CGFloat {
        switch size {
        case .default:
            theme.tag.tagSpaceInsetBulletDefault
        case .small:
            theme.tag.tagSpaceInsetBulletSmall
        }
    }

    private var assetPadding: CGFloat {
        switch size {
        case .default:
            theme.tag.tagSpaceInsetIconDefault
        case .small:
            theme.tag.tagSpaceInsetIconSmall
        }
    }
}
