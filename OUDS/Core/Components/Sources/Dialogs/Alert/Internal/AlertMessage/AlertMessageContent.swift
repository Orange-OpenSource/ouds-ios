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

struct AlertMessageContent: View {

    // MARK: - Properties

    let text: String
    let status: OUDSAlertStatus
    let description: TextualContent?
    let bulletList: [String]
    let link: OUDSAlertMessage.Link?

    @Environment(\.theme) private var theme

    // MARK: - Body

    var body: some View {
        VStack(alignment: .leading, spacing: theme.alert.spaceRowGapAction) {
            VStack(alignment: .leading, spacing: theme.alert.spaceRowGap) {
                Text(text)
                    .labelModerateLarge(theme)
                    .foregroundColor(foregroundColor)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .accessibilityLabel(accessibilityLabel)

                if let description, !description.isEmpty {
                    textView(for: description)
                        .labelDefaultMedium(theme)
                        .foregroundColor(foregroundColor)
                        .frame(maxWidth: .infinity, alignment: .leading)
                }

                if !bulletList.isEmpty {
                    VStack(alignment: .leading, spacing: theme.alert.spaceRowGapBullet) {
                        ForEach(Array(bulletList.enumerated()), id: \.offset) { _, text in
                            AlertMessageBulletListItem(text: text, status: status)
                        }
                    }
                }
            }

            // Action
            if let link, self.link?.position == .bottom {
                OUDSLink(text: link.text, size: .default, action: link.action)
            }
        }
        .padding(.vertical, theme.alert.spacePaddingBlock)
        .fixedSize(horizontal: false, vertical: true)
    }

    // MARK: - Helpers

    /// Helps to create a `Text` View with the suitable infered type, otherwise compiler gets nut
    /// - Parameter description: The text to display in a particular context
    private func textView(for description: TextualContent) -> Text {
        switch description {
        case let .attributed(attributedString):
            Text(attributedString)
        case let .localized(key, table, bundle):
            Text(key.resolved(tableName: table, bundle: bundle))
        case let .raw(text):
            Text(text)
        }
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

    private var accessibilityLabel: String {
        let labelPrefix = switch status {
        case .warning:
            "core_alertMessage_warning_a11y".localized() + ","
        case .negative:
            "core_alertMessage_negative_a11y".localized() + ","
        default:
            ""
        }
        return "\(labelPrefix) \(text)"
    }
}
