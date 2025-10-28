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

struct InputTagForegroundModifier: ViewModifier {

    // MARK: Stored Properties

    let state: InteractionState

    @Environment(\.theme) private var theme

    // MARK: Body

    func body(content: Content) -> some View {
        content.oudsForegroundColor(color)
    }

    // MARK: Private helpers

    private var color: MultipleColorSemanticTokens {
        switch state {
        case .enabled:
            theme.inputTag.colorContentEnabled
        case .hover:
            theme.inputTag.colorContentHover
        case .pressed:
            theme.inputTag.colorContentPressed
        case .disabled:
            theme.colors.actionDisabled
        case .readOnly:
            // should not appear
            theme.colors.actionDisabled
        }
    }
}
