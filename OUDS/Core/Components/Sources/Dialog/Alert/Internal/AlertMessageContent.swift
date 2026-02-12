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
    let description: String?
    let bulletList: [String]?
    let link: OUDSAlertMessage.Link?
    let status: OUDSAlertMessage.Status

    @Environment(\.theme) private var theme

    // MARK: - Body

    var body: some View {
        VStack(alignment: .leading, spacing: theme.alert.spaceRowGapAction) {
            VStack(alignment: .leading, spacing: theme.alert.spaceRowGap) {
                Text(text)
                    .labelModerateLarge(theme)
                    .oudsForegroundColor(theme.colors.contentDefault)
                    .frame(maxWidth: .infinity, alignment: .leading)

                if let description, !description.isEmpty {
                    Text(description)
                        .labelDefaultMedium(theme)
                        .oudsForegroundColor(theme.colors.contentMuted)
                        .frame(maxWidth: .infinity, alignment: .leading)
                }

                if let bulletList {
                    ForEach(bulletList, id: \.self) { text in
                        AletMessageBulletListItem(text: text)
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
}
