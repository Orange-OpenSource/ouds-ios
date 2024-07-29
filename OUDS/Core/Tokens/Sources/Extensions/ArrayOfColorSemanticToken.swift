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

extension Array where Element == OUDSColorSemanticToken {

    public var backgrounds: [OUDSColorSemanticToken] {
        self.filter { colorSemanticToken in
            guard
                let property = colorSemanticToken.property,
                let colorProperty = property as? OUDSColorSemanticToken.Property else { return false }
            return colorProperty == .background
        }
    }

    public var foregrounds: [OUDSColorSemanticToken] {
        self.filter { colorSemanticToken in
            guard
                let property = colorSemanticToken.property,
                let colorProperty = property as? OUDSColorSemanticToken.Property else { return false }
            return colorProperty == .foreground
        }
    }

    public var enabled: [OUDSColorSemanticToken] {
        self.filter { colorSemanticToken in
            guard
                let state = colorSemanticToken.state,
                let colorState = state as? TokenState else { return false }
            return colorState == .enabled
        }
    }

    public var disabled: [OUDSColorSemanticToken] {
        self.filter { colorSemanticToken in
            guard
                let state = colorSemanticToken.state,
                let colorState = state as? TokenState else { return false }
            return colorState == .disabled
        }
    }

    public var focus: [OUDSColorSemanticToken] {
        self.filter { colorSemanticToken in
            guard
                let state = colorSemanticToken.state,
                let colorState = state as? TokenState else { return false }
            return colorState == .focus
        }
    }
}
