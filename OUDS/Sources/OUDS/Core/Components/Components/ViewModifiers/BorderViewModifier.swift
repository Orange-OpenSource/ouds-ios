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

import Foundation
import SwiftUI

struct BorderViewModifier: ViewModifier {

    private var isEnabled: Bool
    private var borderWidth: [BorderSemanticToken]

    init(_ contract: OUDSComponentContract,
         isEnabled: Bool) {
        self.isEnabled = isEnabled
        borderWidth = contract.borderWidth
    }

    func body(content: Content) -> some View {
        if let bwEnabled = borderWidth.enabled.first,
           let bwDisabled = borderWidth.disabled.first {
            content.border(.black, width:
                            isEnabled
                           ? bwEnabled.finalValue
                           : bwDisabled.finalValue)
        } else {
            content
        }
    }
}
