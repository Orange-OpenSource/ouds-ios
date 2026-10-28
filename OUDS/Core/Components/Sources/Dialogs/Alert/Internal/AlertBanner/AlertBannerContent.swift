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

import OUDSThemesContract
import OUDSTokensSemantic
import SwiftUI

// MARK: - Alert Banner Content

struct AlertBannerContent: View {

    // MARK: - Properties

    let isCenterLayout: Bool
    let label: OUDSTextualContent
    let status: OUDSAlertStatus
    let description: OUDSTextualContent?
    let actionLink: OUDSAlertBanner.ActionLink?
    let onClose: (() -> Void)?

    @Environment(\.theme) private var theme
    @Environment(\.horizontalSizeClass) private var horizontalSizeClass

    // MARK: - Body

    var body: some View {
        VStack(alignment: horizontalAlignment, spacing: theme.spaces.fixedNone) {
            if isCenterLayout {
                if #available(iOS 16.0, *) {
                    texts.limitedWidth(minWidth: 0, maxWidth: maxWidthText, minHeight: 0)
                } else {
                    texts.frame(maxWidth: maxWidthText, alignment: .leading)
                }
            } else {
                texts.frame(maxWidth: maxWidthText, alignment: .leading)
            }

            if let actionLink, self.actionLink?.position == .bottom {
                OUDSColoredSurface(color: status.bannerBackgroungColor(for: theme)) {
                    OUDSLink(text: actionLink.text, size: .default, density: .compact, action: actionLink.action)
                        .accessibilitySortPriority(OUDSAlertMessage.actionLinkAccessibilityPriority)
                }
            }
        }
        .padding(.vertical, theme.alert.spacePaddingBlock)
        .fixedSize(horizontal: false, vertical: true)
        .onAppear {
            VoiceOverUtils.announce(accessibilityLabel)
        }
    }

    // MARK: - Helpers

    private var texts: some View {
        VStack(alignment: horizontalAlignment, spacing: theme.alert.spaceRowGap) {
            textView(for: label)
                .labelModerateLarge(theme)
                .foregroundColor(foregroundColor)
                .multilineTextAlignment(.leading)

            if let description, !description.isEmpty {
                textView(for: description)
                    .labelDefaultMedium(theme)
                    .foregroundColor(foregroundColor)
                    .padding(.bottom, theme.alert.spacePaddingBlockBottomContent)
            }
        }
        .accessibilityElement(children: .combine)
        .accessibilityLabel(accessibilityLabel)
        .accessibilitySortPriority(OUDSAlertMessage.textsAccessibilityPriority)
#if canImport(UIKit)
        .modifier(AlertBannerFKACustomActionsModifier(actionLink: actionLink, onClose: onClose))
#endif
    }

    private var maxWidthText: CGFloat {
        theme.sizes.maxWidthBoxedText.dimension(for: horizontalSizeClass ?? .regular)
    }

    private var foregroundColor: MultipleColorSemanticToken {
        switch status {
        case .neutral:
            theme.colors.contentInverse
        case .accent:
            theme.colors.contentOnStatusAccentEmphasized
        case .positive:
            theme.colors.contentOnStatusPositiveEmphasized
        case .negative:
            theme.colors.contentOnStatusNegativeEmphasized
        case .warning:
            theme.colors.contentOnStatusWarningEmphasized
        case .info:
            theme.colors.contentOnStatusInfoEmphasized
        }
    }

    private var accessibilityLabel: String {
        let labelPrefix = switch status {
        case .warning:
            "core_shared_warning_a11y".localized() + ","
        case .negative:
            "core_shared_negative_a11y".localized() + ","
        case .info:
            "core_shared_info_a11y".localized() + ","
        default:
            ""
        }
        return "\(labelPrefix) \(alertText)"
    }

    private var alertText: String {
        var parts: [String] = [label.rawValue]
        if let description, !description.isEmpty {
            parts.append(description.rawValue)
        }
        return parts.joined(separator: ", ")
    }

    private var horizontalAlignment: HorizontalAlignment {
        isCenterLayout ? .center : .leading
    }
}

// MARK: - Alert Banner Status

extension OUDSAlertStatus {
    func bannerBackgroungColor(for theme: OUDSTheme) -> MultipleColorModeSemanticToken {
        switch self {
        case .neutral:
            theme.colorModes.onBgInverseHigh
        case .accent:
            theme.colorModes.onStatusAccentEmphasized
        case .positive:
            theme.colorModes.onStatusPositiveEmphasized
        case .warning:
            theme.colorModes.onStatusWarningEmphasized
        case .negative:
            theme.colorModes.onStatusNegativeEmphasized
        case .info:
            theme.colorModes.onStatusInfoEmphasized
        }
    }
}

