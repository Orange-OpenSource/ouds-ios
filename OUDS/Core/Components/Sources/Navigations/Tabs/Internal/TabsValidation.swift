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

#if !os(watchOS)
import Foundation
import OUDSFoundations

enum TabsValidation {
    static func validate(_ items: [OUDSTabItem<some Any>], layout: OUDSTabsLayout) {
        if let message = failure(for: items, layout: layout) { OL.fatal(message) }
    }

    static func failure(for items: [OUDSTabItem<some Any>], layout: OUDSTabsLayout) -> String? {
        guard items.count <= 8 else { return "OUDS tabs support at most 8 items." }
        guard Set(items.map(\.tag)).count == items.count else { return "OUDS tab tags must be unique." }
        guard items.allSatisfy({ !$0.label.rawValue.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty }) else {
            return "Each OUDS tab needs a nonempty label, including asset-only tabs for accessibility."
        }
        guard !layout.hasAsset || items.allSatisfy({ $0.image?.asset != nil }) else {
            return "Each OUDS tab needs an asset for the requested layout."
        }
        return nil
    }
}
#endif
