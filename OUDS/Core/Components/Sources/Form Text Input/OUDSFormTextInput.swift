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

// MARK: - Definition of the component

/// An OUDS component for text input. A plain SwftUI ocmponent not so related to OUDS
/// A form input is a component which can be defined by:
/// - a set of background colors (enabled, disabled, active, hover, selected, focus)
/// - a set of border widths (enabled, disabled, active, hover, selected, focus)
public struct OUDSFormTextInput: View{

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
//        .modifier(BackgroundViewModifier(self, isEnabled: isEnabled))
//        .modifier(BorderViewModifier(self, isEnabled: isEnabled))
    }
    
}

// MARK: - Backgorund View Modifier

//private struct BackgroundViewModifier: ViewModifier {
//
//    private var isEnabled: Bool
//
//    init(_ contract: OUDSComponentContract,
//         isEnabled: Bool) {
//        self.isEnabled = isEnabled
//        colorBackgrounds = contract.colorBackgrounds
//    }
//
//    func body(content: Content) -> some View {
//        if let cbEnabled = colorBackgrounds.backgrounds.enabled.first,
//           let cbDisabled = colorBackgrounds.backgrounds.disabled.first {
//            content.background(
//                isEnabled
//                ? cbEnabled.finalValue
//                : cbDisabled.finalValue
//            )
//        } else {
//            content
//        }
//    }
//}
//
//struct BorderViewModifier: ViewModifier {
//
//    private var isEnabled: Bool
//    private var borderWidth: [OUDSBorderSemanticToken]
//
//    init(_ contract: OUDSComponentContract,
//         isEnabled: Bool) {
//        self.isEnabled = isEnabled
//        borderWidth = contract.borderWidth
//    }
//
//    func body(content: Content) -> some View {
//        if let bwEnabled = borderWidth.enabled.first,
//           let bwDisabled = borderWidth.disabled.first {
//            content.border(.black, width:
//                            isEnabled
//                           ? bwEnabled.finalValue
//                           : bwDisabled.finalValue)
//        } else {
//            content
//        }
//    }
//}
