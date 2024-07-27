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

/// A `TokenState` can be used to describe the state of a component for example
public enum TokenState: SemanticTokenStateContract {
    case enabled
    case hover
    case active
    case selected
    case disabled
    case focus
}

// TODO: Question - Est-ce que tous ces cas sont pertinents pour iOS et SwiftUI et pas un reliquat hérité de la logique web ?
