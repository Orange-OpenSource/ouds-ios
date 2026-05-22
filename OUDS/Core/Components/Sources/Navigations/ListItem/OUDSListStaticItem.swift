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

import OUDSTokensSemantic
import SwiftUI

/// ListItem is a navigation UI element used to display a row of content within a list.
/// It typically contains a title, an optional subtitle, an optional leading icon,
/// and an optional trailing element (like a chevron or an action).
/// ListItem helps users navigate between sections or screens.
///
/// ## Code samples
///
/// ```swift
///     // Simple list item with label only
///     OUDSListStaticItem(data: OUDSListItemSizeSmallData(label: "Labal")
///
///     // List item with default size and more labels
///     let data = OUDSListItemSizedefaultData(label: "Label", description: "Description", overline: "Overline", extraLabel: "ExtraLabal")
///     OUDSListStaticItem(data: data)
/// ```
///
/// ## Design documentation
///
/// [unified-design-system.orange.com](https://r.orange.fr/r/S-ouds-doc-listitem)
///
/// - Version: 1.0.0 (Figma component design version)
/// - Since: 2.0.0
@available(iOS 15, macOS 13, visionOS 1, watchOS 11, tvOS 16, *)
public struct OUDSListStaticItem: View {

    // MARK: - Stored Properties

    private let data: OUDSListItemData
    private let leading: OOUDSListItemLeading?
    private let trailing: OUDSListItemTrailing?

    @Environment(\.isEnabled) private var isEnabled
    @Environment(\.theme) private var theme

    // MARK: - Initializer

    /// Creates a list item to display static data, means without interaction and navigation.
    ///
    /// ```swift
    ///    let data = OUDSListItemData(label: "Label", description: "Description")
    ///    OUDSListIStaticItem(data: data)
    /// ```
    ///
    /// - Parameters
    ///    - data: The data of the item.
    ///    - leading: The optional element set at leading (before texts)
    ///    - trailing: The optional element set at trailing (after texts)
    ///
    ///    **Remark** trailing, leading elements and texts can be aligned using ``View.oudsListItemContainersAlignment``.
    public init(data: OUDSListItemData,
                leading: OOUDSListItemLeading? = nil,
                trailing: OUDSListItemTrailing? = nil)
    {
        self.data = data
        self.leading = leading
        self.trailing = trailing
    }

    // MARK: - Body

    public var body: some View {
        ListItemContent(data: data,
                        affordanceType: nil,
                        leading: leading,
                        trailing: trailing,
                        interactionState: isEnabled ? .enabled : .disabled)
    }
}
