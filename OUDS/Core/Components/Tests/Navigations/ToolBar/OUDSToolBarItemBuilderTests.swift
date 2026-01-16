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

import OUDSComponents
import SwiftUI
import Testing

@available(iOS 16, macOS 15, visionOS 1, *)
struct OUDSToolBarItemBuilderTests {

    @Test func builderCollectsItems() {
        let items = makeItems {
            OUDSToolBarItem {
                Image(systemName: "bell")
            }
            OUDSToolBarItem {
                Image(systemName: "tray")
            }
        }

        #expect(items.count == 2)
    }

    @Test func navigationItemRawValues() {
        #expect(OUDSToolBarNavigationItem.back.rawValue == "ic_navigation_back")
        #expect(OUDSToolBarNavigationItem.close.rawValue == "ic_navigation_close")
        #expect(OUDSToolBarNavigationItem.menu.rawValue == "ic_navigation_menu")
    }

    private func makeItems(@OUDSToolBarItemsBuilder _ items: () -> [OUDSToolBarItem]) -> [OUDSToolBarItem] {
        items()
    }
}
