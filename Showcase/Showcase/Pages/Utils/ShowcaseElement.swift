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

import SwiftUI

@MainActor
protocol ShowcaseElement {
    var name: String { get }
    var imageName: String { get }
    var description: String { get }
    var pageDescription: AnyView { get }
}

extension ShowcaseElement {
    var id: String { name }
}
