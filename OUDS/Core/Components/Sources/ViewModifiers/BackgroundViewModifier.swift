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
import OUDSTokens

struct BackgroundViewModifier: ViewModifier {

    private var isEnabled: Bool
    private var colorBackgrounds: [OUDSColorSemanticToken]

    init(_ contract: OUDSComponentContract,
         isEnabled: Bool) {
        self.isEnabled = isEnabled
        colorBackgrounds = contract.colorBackgrounds
    }

    func body(content: Content) -> some View {
        if let cbEnabled = colorBackgrounds.backgrounds.enabled.first,
           let cbDisabled = colorBackgrounds.backgrounds.disabled.first {
            content.background(
                isEnabled
                ? cbEnabled.finalValue
                : cbDisabled.finalValue
            )
        } else {
            content
        }
    }
}
