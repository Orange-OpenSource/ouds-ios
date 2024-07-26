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

/// An OUDS component for text input
public struct OUDSFormTextInput: View {

    // MARK: - Component implementation own properties

    var placeholder: String
    @Binding var value: String
    var isEnabled: Bool
    @Environment(\.colorScheme) var colorScheme

    // MARK: - SwiftUI body

    public init(placeholder: String, value: Binding<String>, isEnabled: Bool = true) {
        self.placeholder = placeholder
        self._value = value
        self.isEnabled = isEnabled
    }

    public var body: some View {
        TextField(placeholder, text: $value)
            .background(
                isEnabled
                ? colorBackgrounds().backgrounds.enabled.first!.finalValue
                : colorBackgrounds().backgrounds.disabled.first!.finalValue
            )
        // .tint(colorBackgrounds().foregrounds.focus.first!.finalValue) // TODO: Comment gérer les valeurs par défaut ?
            .border(.black, width: isEnabled ? borderWidth().enabled.first!.finalValue : borderWidth().disabled.first!.finalValue)
    }

}

// MARK: - From OUDSComponent

extension OUDSFormTextInput: OUDSComponent {

    func colorBackgrounds(colorScheme: ComponentColorScheme = .light) -> [ColorSemanticToken] {
        Mocks().mockColors
    }

    func borderWidth() -> [BorderSemanticToken] {
        Mocks().mockBorders
    }

    // No color foregrounds defined for this component
    // No elevations defined for this component
}
