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

import OUDS
import OUDSTokensSemantic
import SwiftUI

struct InputTagBorderModifier: ViewModifier {

    // MARK: Stored Properties

    let state: InteractionState

    @Environment(\.theme) private var theme

    // MARK: Body

    func body(content: Content) -> some View {
        content
            .oudsBorder(
                style: theme.borders.borderStyleDefault,
                width: width,
                radius: theme.tag.tagBorderRadius,
                color: color)
    }

    // MARK: Private helpers

    private var width: BorderWidthSemanticToken {
        switch state {
        case .enabled, .disabled:
            theme.inputTag.inputTagBorderWidthDefault
        case .hover, .pressed:
            theme.inputTag.inputTagBorderWidthDefaultInteraction
        case .readOnly:
            // Should not appear
            theme.inputTag.inputTagBorderWidthDefault
        }
    }

    private var color: MultipleColorSemanticTokens {
        switch state {
        case .enabled:
            theme.inputTag.inputTagColorBorderEnabled
        case .hover:
            theme.inputTag.inputTagColorBorderHover
        case .pressed:
            theme.inputTag.inputTagColorBorderPressed
        case .disabled:
            theme.colors.colorActionDisabled
        case .readOnly:
            // Should not appear
            theme.colors.colorActionDisabled
        }
    }
}
