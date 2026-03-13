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

struct OUDSNavigationBarModifier: ViewModifier {

    private let title: String
    private let subtitle: String?
    private let leadingItems: [OUDSToolbarItem]
    private let trailingItems: [OUDSToolbarItem]

    init(title: String, subtitle: String? = nil, leadingItems: [OUDSToolbarItem] = [], trailingItems: [OUDSToolbarItem] = []) {
        self.title = title
        self.subtitle = subtitle
        self.leadingItems = leadingItems
        self.trailingItems = trailingItems
    }

    func body(content: Content) -> some View {
        content
    }
}
