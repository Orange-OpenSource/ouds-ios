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

extension Array where Element == ColorSemanticToken {

    public var backgrounds: [ColorSemanticToken] {
        self.filter { colorSemanticToken in
            guard
                let property = colorSemanticToken.property,
                let colorProperty = property as? ColorSemanticToken.Property else { return false }
            return colorProperty == .background
        }
    }

    public var foregrounds: [ColorSemanticToken] {
        self.filter { colorSemanticToken in
            guard
                let property = colorSemanticToken.property,
                let colorProperty = property as? ColorSemanticToken.Property else { return false }
            return colorProperty == .foreground
        }
    }

    public var enabled: [ColorSemanticToken] {
        self.filter { colorSemanticToken in
            guard
                let state = colorSemanticToken.state,
                let colorState = state as? TokenState else { return false }
            return colorState == .enabled
        }
    }

    public var disabled: [ColorSemanticToken] {
        self.filter { colorSemanticToken in
            guard
                let state = colorSemanticToken.state,
                let colorState = state as? TokenState else { return false }
            return colorState == .disabled
        }
    }

    public var focus: [ColorSemanticToken] {
        self.filter { colorSemanticToken in
            guard
                let state = colorSemanticToken.state,
                let colorState = state as? TokenState else { return false }
            return colorState == .focus
        }
    }
}
