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
        case let .loader(_, progress):
            TagLoader(size: size, progress: progress)
        }
    }
}

// MARK: - Tag Loader

struct TagLoader: View {

    // MARK: Properties

    let size: OUDSTag.Size
    let progress: Double?

    @Environment(\.theme) private var theme
    @Environment(\.colorScheme) private var colorScheme

    // MARK: Body

    var body: some View {
        Group {
            if let progress {
                OUDSCircularProgressIndicator(progress: progress, status: .neutral, track: false, animated: true, size: progressIndicatorSize)
            } else {
                OUDSCircularProgressIndicator(status: .neutral, track: false, size: progressIndicatorSize)
            }
        }
        .padding(.all, padding)
    }

    // MARK: Private helpers

    private var progressIndicatorSize: CGFloat {
        let assetSize = switch size {
        case .default:
            theme.tag.sizeAssetDefault
        case .small:
            theme.tag.sizeAssetSmall
        }

        return assetSize - padding
    }

    private var padding: CGFloat {
        switch size {
        case .default:
            theme.tag.spaceInsetProgressIndicatorDefault
        case .small:
            theme.tag.spaceInsetProgressIndicatorSmall
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
                    Image(decorative: "Component-alert-warning-external-shape", bundle: theme.resourcesBundle)
                        .renderingMode(.template)
                        .resizable()
                        .foregroundColor(theme.icon.colorContentStatusWarningExternalShape)
                    Image(decorative: "Component-alert-warning-internal-shape", bundle: theme.resourcesBundle)
                        .renderingMode(.template)
                        .resizable()
                        .foregroundColor(theme.icon.colorContentStatusWarningInternalShape)
                }
            } else {
                iconFromAsset?
                    .renderingMode(appliedRenderingMode)
                    .resizable()
                    .toFlip(status.customIcon?.flipped ?? false)
                    .foregroundColor(color)
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
            if let oudsImage = status.customIcon {
                return oudsImage.asset
            }
            return defaultLeadingIcon
        }
    }

    private var appliedRenderingMode: Image.TemplateRenderingMode {
        if status.leading == .icon, let oudsImage = status.customIcon {
            oudsImage.renderingMode
        } else {
            .template
        }
    }

    private var defaultLeadingIcon: Image? {
        switch status.category {
        case .neutral:
            nil
        case .accent:
            nil
        case .positive:
            Image(decorative: "Component-alert-tick-confirmation-fill", bundle: theme.resourcesBundle)
        case .warning:
            Image(decorative: "Component-alert-warning-external-shape", bundle: theme.resourcesBundle)
        case .negative:
            Image(decorative: "Component-alert-important-fill", bundle: theme.resourcesBundle)
        case .info:
            Image(decorative: "Component-alert-info-fill", bundle: theme.resourcesBundle)
        }
    }

    private var color: MultipleColorSemanticToken {
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

    private var emphasizedColor: MultipleColorSemanticToken {
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

    private var mutedColor: MultipleColorSemanticToken {
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
