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

#if !os(watchOS) && !os(tvOS)
import OUDSThemesContract
import SwiftUI

/// `View` dedicated to the display of title and subtitle in the toolbar components
struct ToolBarTitleView: View {

    let title: String
    let subtitle: String?

    @Environment(\.theme) private var theme

    var body: some View {
        VStack(spacing: 2) {
            Text(LocalizedStringKey(title))
                .headingSmall(theme)
            if let subtitle {
                Text(LocalizedStringKey(subtitle))
                    .labelDefaultMedium(theme)
            }
        }
        .oudsForegroundColor(theme.colors.contentDefault)
        .multilineTextAlignment(.center)
    }
}
#endif
