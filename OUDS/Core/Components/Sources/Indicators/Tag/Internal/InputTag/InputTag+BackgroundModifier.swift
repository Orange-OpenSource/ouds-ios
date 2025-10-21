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

struct InputTagBackgroundModifier: ViewModifier {

    // MARK: Stored Properties

    let state: InteractionState

    @Environment(\.theme) private var theme

    // MARK: Body

    func body(content: Content) -> some View {
        if let color {
            content.oudsBackground(color)
        } else {
            content
        }
    }

    // MARK: Private helpers

    private var color: MultipleColorSemanticTokens? {
        switch state {
        case .enabled:
            theme.inputTag.inputTagColorBgEnabled
        case .hover:
            theme.inputTag.inputTagColorBgHover
        case .pressed:
            theme.inputTag.inputTagColorBgPressed
        case .disabled:
            nil
        case .readOnly:
            // Should not appear
            nil
        }
    }
}
