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

    let appearance: OUDSTag.Appearance
    let size: OUDSTag.Size
    let type: OUDSTag.`Type`

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

    let size: OUDSTag.Size

    @Environment(\.theme) private var theme
    @Environment(\.colorScheme) private var colorScheme

    var body: some View {
        LoaderIndicator(color: theme.colors.contentDefault.color(for: colorScheme))
            .padding(.all, padding)
    }

    private var padding: CGFloat {
        switch size {
        case .default:
            theme.tag.spaceInsetLoaderDefault
        case .small:
            theme.tag.spaceInsetLoaderSmall
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
        Group {
            if appearance == .muted, status.leading == .icon, status.category == .warning, isEnabled {
                ZStack {
                    Image(decorative: "ic_alert_warning_external_shape", bundle: theme.resourcesBundle)
                        .renderingMode(.template)
                        .resizable()
                        .oudsForegroundColor(theme.icon.colorContentStatusWarningExternalShape)
                    Image(decorative: "ic_alert_warning_internal_shape", bundle: theme.resourcesBundle)
                        .renderingMode(.template)
                        .resizable()
                        .oudsForegroundColor(theme.icon.colorContentStatusWarningInternalShape)
                }
            } else {
                iconFromAsset?
                    .renderingMode(.template)
                    .resizable()
                    .toFlip(status.flipIcon)
                    .oudsForegroundColor(color)
            }
        }
        .padding(.all, padding)
    }

    // MARK: Helpers

    private var iconFromAsset: Image? {
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
            Image(decorative: "ic_alert_tick_confirmation_fill", bundle: theme.resourcesBundle)
        case .warning:
            Image(decorative: "ic_alert_warning_external_shape", bundle: theme.resourcesBundle)
        case .negative:
            Image(decorative: "ic_alert_important_fill", bundle: theme.resourcesBundle)
        case .info:
            Image(decorative: "ic_alert_info_fill", bundle: theme.resourcesBundle)
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
            theme.colors.contentOnActionDisabled
        }
    }

    private var emphasizedColor: MultipleColorSemanticTokens {
        switch status.category {
        case .neutral:
            theme.colors.contentInverse
        case .accent:
            theme.colors.contentOnStatusAccentEmphasized
        case .positive:
            theme.colors.contentOnStatusPositiveEmphasized
        case .warning:
            theme.colors.contentOnStatusWarningEmphasized
        case .negative:
            theme.colors.contentOnStatusNegativeEmphasized
        case .info:
            theme.colors.contentOnStatusInfoEmphasized
        }
    }

    private var mutedColor: MultipleColorSemanticTokens {
        switch status.category {
        case .neutral:
            theme.colors.contentDefault
        case .accent:
            theme.colors.contentStatusAccent
        case .positive:
            theme.colors.contentStatusPositive
        case .warning:
            theme.colors.contentStatusWarning
        case .negative:
            theme.colors.contentStatusNegative
        case .info:
            theme.colors.contentStatusInfo
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
            theme.tag.spaceInsetBulletDefault
        case .small:
            theme.tag.spaceInsetBulletSmall
        }
    }

    private var assetPadding: CGFloat {
        switch size {
        case .default:
            theme.tag.spaceInsetIconDefault
        case .small:
            theme.tag.spaceInsetIconSmall
        }
    }
}
