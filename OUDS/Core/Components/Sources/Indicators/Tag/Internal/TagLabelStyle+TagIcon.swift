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
    let appearance: OUDSTag.Appearance
    let size: OUDSTag.Size
    let type: OUDSTag.`Type`

    // MARK: Body

    var body: some View {
        switch type {
        case let .status(_, status):
            TagAsset(appearance: appearance, size: size, status: status)
        case .loader:
            TagLoader(size: size)
        }
    }
}

// MARK: - Tag Loader

struct TagLoader: View {

    // MARK: Stored Properties

    let size: OUDSTag.Size

    @Environment(\.theme) private var theme
    @Environment(\.colorScheme) private var colorScheme

    // MARK: Body

    var body: some View {
        LoaderIndicator(color: theme.colors.colorContentDefault.color(for: colorScheme))
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
            theme.colors.colorContentInverse
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
            theme.colors.colorContentDefault
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

    let appearance: OUDSTag.Appearance
    let size: OUDSTag.Size
    let status: OUDSTag.Status

    @Environment(\.theme) private var theme
    @Environment(\.isEnabled) private var isEnabled

    // MARK: Body

    var body: some View {
        icon?
            .renderingMode(.template)
            .resizable()
            .toFlip(status.flipIcon)
            .oudsForegroundStyle(color)
            .padding(.all, padding)
    }

    // MARK: Helpers

    private var icon: Image? {
        switch status.leading {
        case .none:
            return nil
        case .bullet:
            return Image(decorative: "ic_tag_bullet", bundle: theme.resourcesBundle)
        case .icon:
            if let alternativeIcon = status.customIcon {
                return alternativeIcon
            }

            return defaultLeadingIcon
        }
    }

    private var defaultLeadingIcon: Image? {
        switch status.category {
        case .neutral:
            nil
        case .accent:
            nil
        case .positive:
            Image(decorative: "ic_success", bundle: theme.resourcesBundle)
        case .warning:
            Image(decorative: "ic_important", bundle: theme.resourcesBundle)
        case .negative:
            Image(decorative: "ic_error", bundle: theme.resourcesBundle)
        case .info:
            Image(decorative: "ic_information", bundle: theme.resourcesBundle)
        }
    }

    private var color: MultipleColorSemanticTokens {
        if isEnabled {
            switch appearance {
            case .emphasized:
                emphasizedColor
            case .muted:
                mutedColor
            }
        } else {
            theme.colors.colorContentOnActionDisabled
        }
    }

    private var emphasizedColor: MultipleColorSemanticTokens {
        switch status.category {
        case .neutral:
            theme.colors.colorContentInverse
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
        }
    }

    private var mutedColor: MultipleColorSemanticTokens {
        switch status.category {
        case .neutral:
            theme.colors.colorContentDefault
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
        }
    }

    private var padding: CGFloat {
        switch status.leading {
        case .bullet:
            bulletPadding
        case .icon:
            assetPadding
        default:
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
