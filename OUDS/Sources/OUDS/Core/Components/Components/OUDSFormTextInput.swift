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

/// An OUDS component for text input. A plain SwftUI ocmponent not so related to OUDS
public struct OUDSFormTextInput: OUDSComponentContract, View {

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
        VStack {
            Text("This is a simple TextField from OUDS")
            TextField(placeholder, text: $value)
        }
        .modifier(BackgroundViewModifier(self, isEnabled: isEnabled))
        .modifier(BorderViewModifier(self, isEnabled: isEnabled))
    }
}
