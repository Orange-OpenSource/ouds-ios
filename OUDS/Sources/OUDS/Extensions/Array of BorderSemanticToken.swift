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

extension Array where Element == BorderSemanticToken {

    var width: [BorderSemanticToken] {
        self.filter { borderSemanticToken in
            guard
                let property = borderSemanticToken.property,
                let borderProperty = property as? BorderSemanticToken.Property else { return false }
            return borderProperty == .width
        }
    }

    var enabled: [BorderSemanticToken] {
        self.filter { borderSemanticToken in
            guard
                let state = borderSemanticToken.state,
                let borderState = state as? RealTokenState else { return false }
            return borderState == .enabled
        }
    }

    var disabled: [BorderSemanticToken] {
        self.filter { borderSemanticToken in
            guard
                let state = borderSemanticToken.state,
                let borderState = state as? RealTokenState else { return false }
            return borderState == .disabled
        }
    }
}
