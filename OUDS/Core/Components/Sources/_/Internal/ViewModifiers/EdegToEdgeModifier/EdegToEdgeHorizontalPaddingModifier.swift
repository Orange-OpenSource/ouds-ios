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

struct EdegToEdgeHorizontalPaddingModifier: ViewModifier {

    let padding: SpaceSemanticToken
    let disabledEdgeToEdge: Bool
    @Environment(\.oudsEdgeToEdge) private var edgeToEdge

    func body(content: Content) -> some View {
        if edgeToEdge && !disabledEdgeToEdge {
            content.gridMargin(.horizontal)
        } else {
            content.padding(.horizontal, padding)
        }
    }
}
