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

// TODO: ADD doc here

///
/// ## Design documentation
///
/// [unified-design-system.orange.com](https://r.orange.fr/r/S-ouds-doc-listitem)
///
/// - Version: 1.0.0 (Figma component design version)
/// - Since: 2.0.0
@available(iOS 15, macOS 13, visionOS 1, watchOS 11, tvOS 16, *)
public struct OUDSListItemNavigation: View {

    // MARK: - Stored Properties

    private let data: OUDSListItemData
    private let affordanceType: AffordanceType
    private let action: (() -> Void)?
    private let leading: OOUDSListItemLeading?
    private let trailing: OOUDSListItemTrailing?

    @Environment(\.isEnabled) private var isEnabled
    @Environment(\.theme) private var theme
    @Environment(\.layoutDirection) private var layoutDirection

    /// The navigation afforance indicator.
    ///
    /// - Since: 2.0.0
    @frozen public enum AffordanceType {
        /// When item is clicked,  the next page is opened in navigation
        case next

        /// When item is clicked, the previous page is presented in navigation
        case previous

        /// When item is clicked, the next action is done outside the application (open an url in browser, open file in an external viewer, ...)
        case external
    }

    // MARK: - Initializer

    /// Creates a list item with the data (`OUDSListItemSizeSmallData` or `OUDSListItemSizeDefaultData`) and the type of affordance
    /// according to action done when item is clicked.
    ///
    /// ```swift
    ///    let data = OUDSListItemSizeSmallData(label: "Label", description: "Description")
    ///    OUDSListIStaticCard(data: data)
    /// ```
    ///
    /// - Parameter data: The data of the item. Could be default content with `OUDSListItemSizeDefaultData` or more simplier data with `OUDSListItemSizeSmallData`
    ///
    /// - Parameters:
    ///   - data: The main label text of the item, must not be empty
    ///   - affordanceType:The type of affordance
    ///   - leading: The optinal leading element
    ///   - trailing: The optional trailing element,
    ///   - action: An additional action to trigger when the radio button has been pressed
    public init(data: OUDSListItemData,
                affordanceType: AffordanceType = .next,
                leading: OOUDSListItemLeading? = nil,
                trailing: OOUDSListItemTrailing? = nil,
                action: (() -> Void)? = nil)
    {
        self.data = data
        self.affordanceType = affordanceType
        self.leading = leading
        self.trailing = trailing
        self.action = action
    }

    // MARK: - Body

    public var body: some View {
        InteractionButton(isReadOnly: false) {
            action?()
        } content: { interactionState in
            ListItemContent(data: data,
                            affordanceType: affordanceType,
                            leading: leading,
                            trailing: trailing,
                            interactionState: interactionState)
        }
    }
}
