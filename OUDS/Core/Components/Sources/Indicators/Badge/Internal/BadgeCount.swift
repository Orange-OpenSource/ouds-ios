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

struct BadgeCount: View {

    // MARK: Stored properties

    let count: UInt?
    let size: OUDSBadge.StandardSize

    @Environment(\.theme) private var theme

    // MARK: Body

    var body: some View {
        if let count {
            let text = count > OUDSBadge.maxCount ? "+\(OUDSBadge.maxCount)" : "\(count)"
            switch size {
            case .extraSmall, .small:
                EmptyView()
            case .medium:
                Text(text)
                    .labelDefaultSmall(theme)
                    .padding(.horizontal, horizontalPadding)
            case .large:
                Text(text)
                    .labelDefaultMedium(theme)
                    .padding(.horizontal, horizontalPadding)
            }
        }
    }

    private var horizontalPadding: SpaceSemanticToken {
        switch size {
        case .extraSmall, .small:
            theme.spaces.fixedNone
        case .medium:
            theme.badge.spacePaddingInlineMedium
        case .large:
            theme.badge.spacePaddingInlineLarge
        }
    }
}
