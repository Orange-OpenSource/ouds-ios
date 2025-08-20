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

// MARK: - Tag Icon

struct TagIcon: View {

    // MARK: Stored properties

    let type: OUDSTag.`Type`
    let hierarchy: OUDSTag.Hierarchy
    let status: OUDSTag.Status
    let size: OUDSTag.Size

    @Environment(\.theme) private var theme

    // MARK: Body

    var body: some View {
        switch type {
        case let .textAndIcon(_, icon):
            if let icon {
                TagAsset(icon: icon, hierarchy: hierarchy, status: status, size: size)
            }
        case .textAndLoader:
            TagLoader(hierarchy: hierarchy, status: status, size: size)
        }
    }
}

// MARK: - Tag Loader

struct TagLoader: View {

    // MARK: Stored Properties

    let hierarchy: OUDSTag.Hierarchy
    let status: OUDSTag.Status
    let size: OUDSTag.Size

    @Environment(\.theme) private var theme
    @Environment(\.colorScheme) private var colorScheme

    // MARK: Body

    var body: some View {
        LoaderIndicator(color: color.color(for: colorScheme))
            .padding(.all, padding)
    }

    // MARK: Helpers

    private var padding: CGFloat {
        switch size {
        case .default:
            theme.tag.tagSpaceInsetLoaderDefault
        case .small:
            theme.tag.tagSpaceInsetLoaderSmall
        }
    }

    private var color: MultipleColorSemanticTokens {
        switch hierarchy {
        case .emphasized:
            colorEmphasized
        case .muted:
            colorMuted
        }
    }

    private var colorEmphasized: MultipleColorSemanticTokens {
        switch status {
        case .neutral:
            theme.colors.colorContentOnStatusNeutralEmphasized
        case .accent:
            theme.colors.colorContentOnStatusAccentEmphasized
        case .positive:
            theme.colors.colorContentOnStatusPositiveEmphasized
        case .warning:
            theme.colors.colorContentOnStatusWarningEmphasized
        case .negative:
            theme.colors.colorContentOnStatusNegativeEmphasized
        case .info:
            theme.colors.colorContentOnStatusInfoEmphasized
        case .disabled:
            theme.colors.colorContentOnActionDisabled
        }
    }

    private var colorMuted: MultipleColorSemanticTokens {
        switch status {
        case .neutral:
            theme.colors.colorContentOnStatusNeutralMuted
        case .accent:
            theme.colors.colorContentOnStatusAccentMuted
        case .positive:
            theme.colors.colorContentOnStatusPositiveMuted
        case .warning:
            theme.colors.colorContentOnStatusWarningMuted
        case .negative:
            theme.colors.colorContentOnStatusNegativeMuted
        case .info:
            theme.colors.colorContentOnStatusInfoMuted
        case .disabled:
            theme.colors.colorContentOnActionDisabled
        }
    }
}

// MARK: - Tag Asset

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
        case let .asset(image):
            image
        }
    }

    private var color: MultipleColorSemanticTokens {
        switch hierarchy {
        case .emphasized:
            emphasizedColor
        case .muted:
            mutedColor
        }
    }

    private var emphasizedColor: MultipleColorSemanticTokens {
        switch status {
        case .neutral:
            theme.colors.colorContentOnStatusNeutralEmphasized
        case .accent:
            theme.colors.colorContentOnStatusAccentEmphasized
        case .positive:
            theme.colors.colorContentOnStatusPositiveEmphasized
        case .warning:
            theme.colors.colorContentOnStatusWarningEmphasized
        case .negative:
            theme.colors.colorContentOnStatusNegativeEmphasized
        case .info:
            theme.colors.colorContentOnStatusInfoEmphasized
        case .disabled:
            theme.colors.colorContentOnActionDisabled
        }
    }

    private var mutedColor: MultipleColorSemanticTokens {
        switch status {
        case .neutral:
            theme.colors.colorContentOnStatusNeutralMuted
        case .accent:
            theme.colors.colorContentStatusAccent
        case .positive:
            theme.colors.colorContentStatusPositive
        case .warning:
            theme.colors.colorContentStatusWarning
        case .negative:
            theme.colors.colorContentStatusNegative
        case .info:
            theme.colors.colorContentStatusInfo
        case .disabled:
            theme.colors.colorContentOnActionDisabled
        }
    }

    private var padding: CGFloat {
        switch icon {
        case .bullet:
            bulletPadding
        case .asset:
            assetPadding
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
