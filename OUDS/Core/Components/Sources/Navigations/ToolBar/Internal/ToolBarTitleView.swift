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
import SwiftUI

@available(iOS 15, macOS 15, visionOS 1, *)
struct ToolBarTitleView: View {

    let title: String
    let subtitle: String?

    @Environment(\.theme) private var theme

    var body: some View {
        VStack(spacing: 0) {
            Text(LocalizedStringKey(title))
                .headingSmall(theme)
                .oudsForegroundColor(theme.colors.contentDefault)

            if let subtitle {
                Text(LocalizedStringKey(subtitle))
                    .bodyDefaultSmall(theme)
                    .oudsForegroundColor(theme.colors.contentDefault)
            }
        }
        .multilineTextAlignment(.center)
    }
}
