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

import OUDSFoundations
import OUDSTokensSemantic
import SwiftUI

// MARK: - OUDS Bullet List

/// Bullet list is a UI element that helps to view in related individual text items grouped together; items usually starting with a number or a bullet.
/// Bullet list is also known as _Unordered list_ or _Ordered list_ and is not an interactive element by default.
///
/// ## Types
///
/// Three types are proposed:
///
/// - **Unordered (by default)**: Collects related items that don’t need to be in a specific order or sequence.
/// - **Ordered**: Collects related items with numeric order or sequence.
/// - **Bare**: An unordered list without any bullets or alphanumeric sequence.
///
/// Types can be mixed in list, but must be identical for the same `OUDSBulletList.NestedLevel`.
///
/// ## Levels
///
/// Lists can include nested items to indicate hierarchy or subcategories, with indentation distinguishing each level.
/// Arrange ordered list items logically, such as ranking by importance, highest to lowest values, or in alphabetical / numeric order.
/// Three levels are maximum.
///
/// ## Text Style
///
/// List can be used with different font sizes:
/// - **Body Large**: If the text accompanying the list component is the Body Large text. This variant is designed for more visual, engaging experiences.
/// - **Body Medium**: If the text accompanying the list component is the Body Medium text. This variant is best suited for functional, task-oriented experiences.
///
/// ## Cases forbidden by design
///
/// **it is not allowed to have a depth of items greater than 3**
///
/// ## Code samples
///
/// ```swift
///        // 1. Unordered list with bullets
///        OUDSBulletList {
///            OUDSBulletList.Item("Label 1")
///            OUDSBulletList.Item("Label 2")
///            OUDSBulletList.Item("Label 3")
///        }
///
///        // 1.1. Item of Unordered list with bullet as tick, a text style
///        // body medium and text bold
///        OUDSBulletList(type: .unordered(icon: .tick),
///                    textStyle: .bodyMedium,
///                    isBold: true)  {
///            OUDSBulletList.Item("Label 1")
///            OUDSBulletList.Item("Label 2")
///            OUDSBulletList.Item("Label 3")
///        }
///
///        // 2. Bare list with 3 items
///        OUDSBulletList(type: .bare) {
///            OUDSBulletList.Item("Label 1")
///            OUDSBulletList.Item("Label 2")
///            OUDSBulletList.Item("Label 3")
///        }
///
///        // 3. Ordered list with 3 items
///        OUDSBulletList(type: .ordered) {
///            OUDSBulletList.Item("Label 1")
///            OUDSBulletList.Item("Label 2")
///            OUDSBulletList.Item("Label 3")
///        }
///
///        // 3.1. Ordered list with 3 items in first level,
///        // and one item as sub item (second level),
///        // and 2 items as sub item in (third level)
///        OUDSBulletList(type: .ordered) {
///            OUDSBulletList.Item("Label 1") {
///                OUDSBulletList.Item("Label 1.1") {
///                    OUDSBulletList.Item("Label 1.1.1")
///                    OUDSBulletList.Item("Label 1.1.2")
///                }
///            }
///            OUDSBulletList.Item("Label 2")
///            OUDSBulletList.Item("Label 3")
///        }
///
///        // Same Bullet list but items in third level with free icon as bullet
///        let freeIcon = Image(decorative: "ic_heart")
///        OUDSBulletList(type: .ordered) {
///            OUDSBulletList.Item("Label 1") {
///                OUDSBulletList.Item("Label 1.1", subListType: .unordered(icon: .free(freeIcon))) {
///                    OUDSBulletList.Item("Label 1.1.1")
///                    OUDSBulletList.Item("Label 1.1.2")
///                }
///            }
///            OUDSBulletList.Item("Label 2")
///            OUDSBulletList.Item("Label 3")
///        }
/// ```
///
/// ## Design documentation
///
/// [unified-design-system.orange.com](https://r.orange.fr/r/S-ouds-doc-bullet-list)
///
/// ## Themes rendering
///
/// ### Orange
///
/// ![A bullet list component in light and dark modes with Orange theme](component_bullet_list_Orange)
///
/// ### Orange Business Tools
///
/// ![A bullet list component in light and dark modes with Orange Business Tools theme](component_bullet_list_OrangeBusinessTools)
///
/// ### Sosh
///
/// ![A bullet list component in light and dark modes with Sosh theme](component_bullet_list_Sosh)
///
/// ### Wireframe
///
/// ![A bullet list component in light and dark modes with Wireframe theme](component_bullet_list_Wireframe)
///
/// - Version: 1.0.0 (Figma component design version)
/// - Since: 1.2.0
@available(iOS 15, macOS 13, visionOS 1, watchOS 11, tvOS 16, *)
public struct OUDSBulletList: View {

    // MARK: Properties

    let type: Self.`Type`
    let textStyle: Self.TextStyle
    let isBold: Bool
    let items: [Item]

    @Environment(\.theme) private var theme

    // MARK: - Item

    // swiftlint:disable discouraged_optional_boolean
    /// The item of bullet list with text and optional sub items.
    public struct Item {

        // MARK: Properties

        let text: String
        let subListType: OUDSBulletList.`Type`?
        let subListTextStyle: OUDSBulletList.TextStyle?
        let subListHasBoldText: Bool?
        let subItems: [Item]

        // MARK: Initializer

        /// Create the item with text and sub items.
        /// Use the `subListType` , `subListTextStyle` and `subListHasBoldText`
        /// to change properties for those sub items, if needed.
        ///
        /// - Parameters:
        ///    - text: The text of the item
        ///    - subListType: The specific `OUDSBulletList.Type` for the nested sub-list, if any. If `nil`,
        ///     the type is inherited from the parent list.
        ///    - subListTextStyle: The specific `OUDSBulletList.TextStyle` for the nested sub-list, if any. If
        ///     `nil`, the text style is inherited from the parent list.
        ///    - subListHasBoldText: Whether the text of the nested sub-list should be bold. If `nil`, the bold
        ///     setting is inherited from the parent list.
        ///    - subItems: The sub items builder to add to the current item. **Remark** only three levels are allowed.
        public init(_ text: String,
                    subListType: OUDSBulletList.`Type`? = nil,
                    subListTextStyle: OUDSBulletList.TextStyle? = nil,
                    subListHasBoldText: Bool? = nil,
                    @OUDSBulletListItemBuilder subItems: () -> [OUDSBulletList.Item] = { [] })
        {
            self.text = text
            self.subListType = nil
            self.subListTextStyle = nil
            self.subListHasBoldText = nil
            self.subItems = subItems()
        }
    }

    // swiftlint:enable discouraged_optional_boolean

    // MARK: - Unordered Icon

    /// The type of icon in the unordered list
    /// - Since: 1.2.0
    public enum UnorderedIcon {
        /// A bullet for unordered bullet list
        case bullet

        /// A tick as bullet
        case tick

        /// A free icon as bullet
        ///
        ///  - Parameters:
        ///     - image: The asset image as bullet
        ///     - accessibilityLabel: An optional label for accessibility description if asset is not decorative.
        case free(_ image: Image, accessibilityLabel: String? = nil)
    }

    // MARK: - Type

    /// The visual type of the list
    /// - Since: 1.2.0
    public enum `Type` {
        /// Collects related items that don’t need to be in a specific order or sequence.
        /// List items are typically marked with bullets, but it is also possible to use a tick or any Solaris icon.
        ///
        ///  - Parameters:
        ///     - icon: The type of icon the unordered item should be used, Bullet as default
        ///     - isBranded: Flag used to display icon tinted with brand color. false by default
        case unordered(icon: UnorderedIcon = .bullet, isBranded: Bool = false)

        /// Collects related items with numeric order or sequence. Numbering starts at 1 with the first list item and increases
        /// by increments of 1 for each successive ordered list item.
        case ordered

        /// An unordered list without any bullets or alphanumeric sequence. It still has left-padding,
        /// so list items will appear indented. This is the default and is also known as undecorated “Unstyled” list.
        case bare
    }

    // MARK: - Text Style

    /// The typography style for the list item
    /// - Since: 1.2.0
    public enum TextStyle {
        /// If the text accompanying the list component is the body large text.
        /// This variant is designed for more visual, engaging experiences.
        case bodyLarge

        /// If the text accompanying the list component is the body medium text.
        /// This variant is best suited for functional, task-oriented experiences.
        case bodyMedium
    }

    // MARK: - Nested Level

    /// The level of the list item
    enum NestedLevel: Int {
        /// Level 0 list items define the main structure.
        case zero

        /// Level 1 (nested) list items provide hierarchy or subcategories.
        case one

        /// Level 2 (nested) list items provide hierarchy or subcategories.
        case two
    }

    // MARK: - Initializer

    /// Creates a bullet list with a bullet type, text style and bold.
    ///
    /// - Parameters:
    ///    - type: The visual type of the list (e.g., `ordered`, `unordered` or `bare`).
    ///     See `OUDSBulletList.Type`, default `.unordered(icon: .bullet, isBranded: false)`
    ///    - textStyle: The typography style for the list items. See `OUDSBulletList.TextStyle`, defaults `.bodyLarge`
    ///    - isBold: Whether the list item text should be bold. This can be overridden for sub-lists. Defaults to `true`
    ///    - items: Defines the list items
    public init(type: Self.`Type` = .unordered(icon: .bullet, isBranded: false),
                textStyle: Self.TextStyle = .bodyLarge,
                isBold: Bool = true,
                @OUDSBulletListItemBuilder items: () -> [OUDSBulletList.Item])
    {
        self.type = type
        self.textStyle = textStyle
        self.isBold = isBold
        self.items = items()
    }

    // MARK: - Properties

    public var body: some View {
        VStack(alignment: .leading, spacing: theme.spaces.fixedNone) {
            ForEach(Array(items.enumerated()), id: \.offset) { index, item in
                BulletListItem(item: item,
                               type: type,
                               textStyle: textStyle,
                               isBold: isBold,
                               level: .zero,
                               index: UInt8(index))
            }
        }
    }
}
