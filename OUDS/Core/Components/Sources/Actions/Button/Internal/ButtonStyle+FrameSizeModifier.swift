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
import OUDSTokensSemantic
import SwiftUI

/// Used to apply the frame size limits (min width, max width, min height)
struct ButtonFrameSizeModifier: ViewModifier {

    // MARK: Stored Properties

    let size: OUDSButton.Size
    let isFullWidth: Bool

    @Environment(\.theme) private var theme

    // MARK: Body

    func body(content: Content) -> some View {
        if #available(iOS 16, *) {
            if isFullWidth {
                content.frame(minWidth: minWidth, maxWidth: .infinity, minHeight: minHeight)
            } else {
                content.limitedWidth(maxWidth: maxWidth, minWidth: minWidth, minHeight: minHeight)
            }
        } else {
            content.frame(minWidth: minWidth,
                          maxWidth: isFullWidth ? .infinity : maxWidth,
                          minHeight: minHeight)
        }
    }

    // MARK: Private helpers

    private var minWidth: CGFloat {
        switch size {
        case .default:
            theme.button.sizeMinWidthDefault
        case .small:
            theme.button.sizeMinWidthSmall
        }
    }

    private var minHeight: CGFloat {
        switch size {
        case .default:
            theme.button.sizeMinHeightDefault
        case .small:
            theme.button.sizeMinHeightSmall
        }
    }

    private var maxWidth: CGFloat {
        theme.button.sizeMaxWidth
    }
}
