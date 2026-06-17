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

import OUDSSwiftUI
import SwiftUI

struct Indicator: View {

    @Environment(\.theme) private var theme
    @Environment(\.verticalSizeClass) private var verticalSizeClass

    var body: some View {
        VStack(spacing: theme.spaces.scaledMedium.dimension(for: verticalSizeClass ?? .regular)) {
            HStack(spacing: theme.spaces.fixedSmall) {
                OUDSBadgeStandard(accessibilityLabel: "Badge positive", status: .positive, size: .large)
                OUDSBadgeCount(1, accessibilityLabel: "Badge count", status: .negative, size: .large)
                OUDSBadgeIcon(status: .info, accessibilityLabel: "Badge info", size: .large)
            }
        }
    }
}

#Preview {
    ScrollView {
        Indicator().orangePreview()
    }
}
