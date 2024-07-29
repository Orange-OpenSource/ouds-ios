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
import OUDSThemes
import OUDSTokens

// MARK: - Definition of the component

/// An OUDS component for text input. A plain SwftUI ocmponent not so related to OUDS
/// A form input is a component which can be defined by:
/// - a set of background colors (enabled, disabled, active, hover, selected, focus)
/// - a set of border widths (enabled, disabled, active, hover, selected, focus)
public struct OUDSFormTextInput: View, OUDSComponentWithBorders, 
                                    OUDSComponentWithBackgroundColor,
                                 OUDSComponentWithForegroundColor {

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
    
    // MARK: - Components tokens
    
    @Environment(\.theme) var theme
    
    var borderWidthEnabled: OUDSTokens.OUDSBorderSemanticToken {
        get {
            theme.borders.enabled.firstOrDefaultWidth
        }
    }
    
    var borderWidthDisabled: OUDSTokens.OUDSBorderSemanticToken {
        get {
            theme.borders.disabled.width.firstOrDefaultWidth
        }
    }
    
    var colorBackgroundEnabled: OUDSTokens.OUDSColorSemanticToken {
        get {
            theme.colors.backgrounds.enabled
        }
    }
    
    var colorBackgroundDisabled: OUDSTokens.OUDSColorSemanticToken {
        get {
            theme.colors.backgrounds.disabled.first
        }
    }
    
    var colorForegroundEnabled: OUDSTokens.OUDSColorSemanticToken {
        get {
            theme.colors.foregrounds.enabled.first
        }
    }
    
    var colorForegroundDisabled: OUDSTokens.OUDSColorSemanticToken {
        get {
            theme.colors.foregrounds.enabled.first
        }
    }
    
}
