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

struct AlertMessageAction: View {

    // MARK: - Properties

    let link: OUDSAlertMessage.Link?
    let onClose: (() -> Void)?
    let status: OUDSAlertMessage.Status

    @Environment(\.theme) private var theme

    // MARK: - Body

    var body: some View {
        HStack(alignment: .center, spacing: theme.alert.spaceColumnGapAction) {
            if let link, self.link?.position == .topTrailing {
                OUDSLink(text: link.text, size: .default, action: link.action)
            }

            if let onClose {
                OUDSButton(icon: Image(decorative: "ic_button_expurge", bundle: theme.resourcesBundle),
                           accessibilityLabel: "core_alertMessage_close_a11y".localized(),
                           appearance: .minimal,
                           action: onClose)
            }
        }
    }
}
