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
import OUDSTokensComponent
import SwiftUI

// MARK: - Link frame modifer

struct LinkFrameModifier: ViewModifier {

    // MARK: Properties

    let size: OUDSLink.Size
    let density: OUDSLink.Density
    let isFullWidth: Bool

    @Environment(\.theme) private var theme
    @Environment(\.isEnabled) private var isEnabled

    // MARK: Body

    func body(content: Content) -> some View {
        content
            .padding(.horizontal, theme.link.spacePaddingInline)
            .padding(.vertical, verticalPadding)
            .frame(minWidth: minWidth, minHeight: minHeight)
            .frame(maxWidth: isFullWidth ? .infinity : nil, alignment: .leading)
            .contentShape(Rectangle())
    }

    // MARK: Helpers

    private var minWidth: Double {
        size == .small ? theme.link.sizeMinWidthSmall : theme.link.sizeMinWidth
    }

    private var minHeight: Double {
        switch density {
        case .default:
            size == .small ? theme.link.sizeMinHeightSmall : theme.link.sizeMinHeightDefault
        case .compact:
            theme.link.sizeMinHeightCompactDensity
        }
    }

    private var verticalPadding: Double {
        switch density {
        case .default:
            size == .small ? theme.link.spacePaddingBlockSmall : theme.link.spacePaddingBlockDefault
        case .compact:
            size == .small ? theme.link.spacePaddingBlockCompactDensitySmall : theme.link.spacePaddingBlockCompactDensityDefault
        }
    }
}
