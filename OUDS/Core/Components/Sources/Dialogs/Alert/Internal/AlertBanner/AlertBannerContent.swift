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

struct AlertBannerContent: View {

    // MARK: - Properties

    let text: String
    let status: OUDSAlertStatus
    let description: OUDSTextualContent?
    let link: OUDSAlertBanner.Link?
    let onClose: (() -> Void)?

    @Environment(\.theme) private var theme
    @Environment(\.horizontalSizeClass) private var horizontalSizeClass

    // MARK: - Body

    var body: some View {
        VStack(alignment: .leading, spacing: theme.spaces.fixedNone) {
            VStack(alignment: .leading, spacing: theme.alert.spaceRowGap) {
                Text(text)
                    .labelModerateLarge(theme)
                    .foregroundColor(foregroundColor)
                    .multilineTextAlignment(.leading)
                    .frame(maxWidth: maxWidthText, alignment: .leading)

                if let description, !description.isEmpty {
                    textView(for: description)
                        .labelDefaultMedium(theme)
                        .foregroundColor(foregroundColor)
                        .frame(maxWidth: maxWidthText, alignment: .leading)
                        .padding(.bottom, theme.alert.spacePaddingBlockBottomContent)
                }
            }
            .accessibilityElement(children: .combine)
            .accessibilityLabel(accessibilityLabel)
            .accessibilitySortPriority(OUDSAlertMessage.textsAccessibilityPriority)
            // Todo: Mutualize
//            #if canImport(UIKit)
//                .modifier(AlertMessageFKACustomActionsModifier(link: link, onClose: onClose))
//            #endif

            // Action
            if let link, self.link?.position == .bottom {
                OUDSLink(text: link.text, size: .default, density: .compact, action: link.action)
                    .accessibilitySortPriority(OUDSAlertMessage.actionLinkAccessibilityPriority)
            }
        }
        .padding(.vertical, theme.alert.spacePaddingBlock)
        .fixedSize(horizontal: false, vertical: true)
        .onAppear {
            VoiceOverUtils.announce(accessibilityLabel)
        }
    }

    // MARK: - Helpers

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
            "core_alertMessage_info_a11y".localized() + ","
        default:
            ""
        }
        return "\(labelPrefix) \(alertText)"
    }

    private var alertText: String {
        var parts: [String] = [text]
        if let description, !description.isEmpty {
            parts.append(description.rawValue)
        }
        return parts.joined(separator: ", ")
    }
}
