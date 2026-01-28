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
/// ## Type
///
/// Three types are proposed
///
/// **Unordered (by default)**: Collects related items that don’t need to be in a specific order or sequence.
///
/// **Ordered**: Collects related items with numeric order or sequence.
///
/// **Bare**: An unordered list without any bullets or alphanumeric sequence.
///
/// Types can be mixed in list, but must be the identical for the same `OUDSBulletList.NestedLevel`
///
/// ## Levels
///
/// Lists can include nested items to indicate hierarchy or subcategories, with indentation distinguishing each level.
/// Arrange ordered list items logically, such as ranking by importance, highest to lowest values, or in alphabetical/numeric order.
/// Three levels are proposed.
///
/// ## Text Style
///
/// List can be used with different font sizes:
///
///  **Body Large**: Make sure to use this reference if the text accompanying the list component is the Body Large text.
/// This variant is designed for more visual, engaging experiences.
///
///  **Body Medium**: Make sure to use this reference if the text accompanying the list component is the Body Medium text.
///  This variant is best suited for functional, task-oriented experiences.
///
/// ## Code samples
///
/// ```swift
///     // 1. Unordered list with 3 items with bullet as default in body large text style
///     OUDSBulletList(items [.init("Label 1"), .init("Label 2"), .init("Label 3")])
///
///     // 1.1. Item of Unordered list with bullet as tick and body medium text style
///     OUDSBulletList(type: .unordered(icon: .tick),
///                    textStyle: .bodyMedium,
///                    items [.init("Label 1"), .init("Label 2"), .init("Label 3")])
///
///     // 2. Bare list with 3 items
///     OUDSBulletList(type: .bare, items [.init("Label 1"), .init("Label 2"), .init("Label 3")])
///
///     // 3. Ordered list with 3 items
///     OUDSBulletList(type: .ordered, items [.init("Label 1"), .init("Label 2"), .init("Label 3")])
///
///     // 3.1. Ordered list with 2 items in first level, one item as sub item (second level),
///     // and 2 items as sub item in (tgird level)
///     OUDSBulletList(type: .ordered, items: [
///                                         .init("Label 1", subItems: [
///                                            .init("Label 1.1", subItems: [
///                                                 .init("Label 1.1.1"),
///                                                 .init("Label 1.1.2"),
///                                             ])
///                                         ]),
///                                         .init("Label 2")
///                                     ])
///
///     // 3.2. Ordered list with 2 items in first level, one item as sub item (second level) with type
///     // Unordred with free icon
///     OUDSBulletList(type: .ordered,
///                    items: [
///                       .init("Label 1",
///                             subListType: .unordered(icon: .free(Image(decorative "ic_heart"))),
///                             subItems: [ .init("Label 1.1") ]),
///                       .init("Label 2")
///                       ])
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
/// - Since: 1.1.0
@available(iOS 15, macOS 15, visionOS 1, watchOS 11, tvOS 16, *)
public struct OudsBulletList: View {

    // MARK: - Properties

    let type: Self.`Type`
    let textStyle: Self.TextStyle
    let isBold: Bool
    let items: [Item]

    @Environment(\.theme) private var theme

    /// The item of bullet list with text and optional sub items.
    public struct Item {

        // MARK: - Properties

        let text: String
        let subListType: OudsBulletList.`Type`?
        let subListTextStyle: OudsBulletList.TextStyle?
        let subListHasBoldText: Bool?
        let subItems: [Item]

        // MARK: - Initializer

        /// Create the item with text and sub items.
        /// Use the `subListType` , `subListTextStyle` and `subListHasBoldText`
        /// to chenge properties for those sub items, if needed.
        ///
        /// - Parameters:
        ///     - subListType: The specific `OudsBulletList.Type` for the nested sub-list, if any. If `nil`,
        ///     the type is inherited from the parent list.
        ///     - subListTextStyle: The specific `OudsBulletList.TextStyle` for the nested sub-list, if any. If
        ///     `nil`, the text style is inherited from the parent list.
        ///     - subListHasBoldText: Whether the text of the nested sub-list should be bold. If `nil`, the bold
        ///     setting is inherited from the parent list.
        ///     - subitems: The sub Items of the current item. **Remark** only three levels are allowed.
        public init(_ text: String,
                    subListType: OudsBulletList.`Type`? = nil,
                    subListTextStyle: OudsBulletList.TextStyle? = nil,
                    subListHasBoldText: Bool? = nil,
                    subItems: [Item] = [])
        {
            self.text = text
            self.subListType = subListType
            self.subListTextStyle = subListTextStyle
            self.subListHasBoldText = subListHasBoldText
            self.subItems = subItems
        }
    }

    /// The type of icon in the unordered list
    public enum UnorderedIcon {
        /// A bullet for unordered bullet list
        case bullet

        /// A tick as bullet
        case tick

        /// A free icon as bullet
        ///
        ///  - Parameters:
        ///     - image; The asset image as bullet
        ///     - accessibilityLabel: An optinal label for accessibility description if asset is not decorative.
        case free(_ image: Image, accessibilityLabel: String? = nil)
    }

    /// The visual type of the list
    public enum `Type` {
        /// Collects related items that don’t need to be in a specific order or sequence.
        /// List items are typically marked with bullets, but it is also possible to use a tick or any Solaris icon.
        ///
        ///  - Parameters:
        ///     - icon: The type of icon the unordered item should be used, Bullet as default
        ///     - isBranded: flag used to display icon tinted with brand color. false by default
        case unordered(icon: UnorderedIcon = .bullet, isBranded: Bool = false)

        /// Collects related items with numeric order or sequence. Numbering starts at 1 with the first list item and increases
        /// by increments of 1 for each successive ordered list item.
        case ordered

        /// An unordered list without any bullets or alphanumeric sequence. It still have left-padding,
        /// so list items will appear indented. This is the default and is also known as undecorated “Unstyled” list.
        case bare
    }

    /// The typography style for the list item
    public enum TextStyle {
        /// Make sure to use this reference if the text accompanying the list component is the body large text.
        /// This variant is designed for more visual, engaging experiences.
        case bodyLarge

        /// Make sure to use this reference if the text accompanying the list component is the body medium text.
        /// This variant is best suited for functional, task oriented experiences.
        case bodyMedium
    }

    /// The levet of the list item
    enum NestedLevel: Int {
        /// Level 0 list items define the main structure.
        /// - Unordered level 0 list items are marked with full squares.
        /// - Ordered level 0 list items are marked with numbers.
        case zero

        /// Level 1 (nested) list items provide hierarchy or subcategories.
        /// - Unordered level 1 list items are marked with outlined squares.
        /// - Ordered level 1 list items are marked with uppercase letters.
        case one

        /// Level 2 (nested) list items provide hierarchy or subcategories.
        /// - Unordered level 2 list items are marked with dashes.
        /// - Ordered level 2 list items are marked with lowercase letters.
        case two
    }

    // MARK: - Initializer

    /// Creates a bullet list with a bullet type, text style and bold.
    ///
    /// - Parameters:
    ///     - type: The visual type of the list (e.g., ordered, unordered, bare).
    ///     See `OudsBulletList.Type`, Defaullt `.unordered(icon: .bullet, isBranded: false)`
    ///     - textStyle: The typography style for the list items. See `OudsBulletList.TextStyle`, Defaults `.bodyLarge`
    ///     - isBold: Whether the list item text should be bold. This can be overridden for sub-lists. Defaults to `true`
    ///     - items: Defines the list items
    public init(type: Self.`Type` = .unordered(icon: .bullet, isBranded: false),
                textStyle: Self.TextStyle = .bodyLarge,
                isBold: Bool = true,
                items: [Item] = [])
    {
        self.type = type
        self.textStyle = textStyle
        self.isBold = isBold
        self.items = items
    }

    // MARK: - Properties

    public var body: some View {
        VStack(alignment: .leading, spacing: theme.spaces.fixedNone) {
            ForEach(Array(items.enumerated()), id: \.element.text) { index, item in
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

/// A custom parameter attribute that constructs OudsBulletListItem from closures.
///
/// You typically use ``OudsBulletListItemBuilder`` as a parameter attribute for
/// sub items producing closure parameters, allowing those closures to provide
/// multiple sub items.
///
/// Clients of this function can use multiple-statement closures to provide
/// several sub items, as shown in the following example:
///
///     func listItem() {
///         Item("First item")
///         Item("Second item") {
///             Item("First sub item")
///             Item("Second sub item")
///         }
///     }
///
@resultBuilder
public struct OudsBulletListItemBuilder {
    /// Builds an empty view from a block containing no statements.
    public static func buildBlock(_ items: [OudsBulletList.Item]...) -> [OudsBulletList.Item] {
        items.flatMap(\.self)
    }

    /// Builds an expression within the builder.
    public static func buildExpression(_ item: OudsBulletList.Item) -> [OudsBulletList.Item] {
        [item]
    }

    /// Builds an empty view from a block containing no statements.
    public static func buildArray(_ components: [[OudsBulletList.Item]]) -> [OudsBulletList.Item] {
        components.flatMap(\.self)
    }
}
