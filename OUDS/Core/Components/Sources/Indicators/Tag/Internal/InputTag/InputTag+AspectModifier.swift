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

struct InputTagAspectModifier: ViewModifier {

    let interactionState: OUDSButtonInteractionState
    @Environment(\.skeletonState) private var skeletonState
    @Environment(\.theme) private var theme

    func body(content: Content) -> some View {
        if skeletonState == nil {
            content
                .modifier(InputTagBackgroundModifier(state: interactionState))
                .modifier(InputTagForegroundModifier(state: interactionState))
                .modifier(InputTagBorderModifier(state: interactionState))
        } else {
            content.skeleton(shape: RoundedRectangle(cornerRadius: theme.tag.borderRadius))
        }
    }
}
