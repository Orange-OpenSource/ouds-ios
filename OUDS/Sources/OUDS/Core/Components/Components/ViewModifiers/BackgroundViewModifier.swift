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

struct BackgroundViewModifier: ViewModifier {

    private var isEnabled: Bool
    private var colorBackgrounds: [ColorSemanticToken]

    init(_ contract: OUDSComponentContract,
         isEnabled: Bool) {
        self.isEnabled = isEnabled
        colorBackgrounds = contract.colorBackgrounds
    }

    func body(content: Content) -> some View {
        content.background(
            isEnabled
            ? colorBackgrounds.backgrounds.enabled.first!.finalValue // TODO: And if no value?
            : colorBackgrounds.backgrounds.disabled.first!.finalValue // TODO: And if no value?
        )
    }
}
