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
///
/// ## Code samples
///
/// ```swift
///     // 1. Unordered list with 3 items with bullet as default in body large text style
///     OUDSBulletList(label: "Label 1", level: .zero)
///     OUDSBulletList(label: "Label 2", level: .one)
///     OUDSBulletList(label: "Label 3", level: .two)
///
///     // 2. Ordered list with 2 items in first level, one item as subitem in level 1,
///     // and 2 items as subitem in level 2
///     OUDSBulletList(label: "Label 1", type: .ordered(index: 0), level: .zero)
///     OUDSBulletList(label: "Label 2", type: .ordered(index: 1), level: .one)
///     OUDSBulletList(label: "Label 1.1", type: .ordered(index: 0), level: .one)
///     OUDSBulletList(label: "Label 1.1.1", type: .ordered(index: 0), level: .two)
///     OUDSBulletList(label: "Label 1.1.2", type: .ordered(index: 1), level: .two)
///
///     // 3, Bare list with 3 items
///     OUDSBulletList(label: "Label 1", type: .bare, level: .zero)
///     OUDSBulletList(label: "Label 2", type: .bare, level: .one)
///     OUDSBulletList(label: "Label 3", type: .bare, level: .two)
///
///     // Item of Unordered list with bullet as tick and body medium text style
///     OUDSBulletList(label: "Label",
///                    type: .unordered(icon: .tick),
///                    textStyle: .bodyMedium,
///                    level: .one)
///
///     // The same item with the branded tick and text in bold
///     OUDSBulletList(label: "Label",
///                    type: .unordered(icon: .tick, isBranded: true),
///                    textStyle: .bodyMedium,
///                    level: .one,
///                    isBold: true)
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
public struct OUDSBulletList: View {

    // MARK: - Properties

    let label: String
    let type: `Type`
    let textStyle: TextStyle
    let level: NestedLevel
    let isBold: Bool

    @Environment(\.theme) private var theme

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
        case free(image: Image, accessibilityLabel: String? = nil)
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
        ///
        ///  - Parameter index: The current index of the ordered item
        case ordered(index: UInt8)

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
    public enum NestedLevel {
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
    /// Creates a button with text and icon.
    ///
    /// - Parameters:
    ///     - label: The label text of the item
    ///     - type: The visual type of the list
    ///     - textStyle: The typography style for the list item, `bodyLarge` by default
    ///     - level: The level of the list item, `zero`by default
    ///     - isBold: Whether the list item text should be bold. `true` by default.
    public init(label: String,
                type: Type = .unordered(icon: .bullet, isBranded: true),
                textStyle: TextStyle = .bodyLarge,
                level: NestedLevel = .zero,
                isBold: Bool = true)
    {
        self.label = label
        self.type = type
        self.textStyle = textStyle
        self.level = level
        self.isBold = isBold
    }

    // MARK: - Body

    public var body: some View {
        HStack(alignment: .center, spacing: spacing) {
            Bullet(type: type, level: level, textStyle: textStyle, isBold: isBold)
            BulletListLabel(label: label, textStyle: textStyle, isBold: isBold)
        }
        .padding(.leading, leadingPadding)
        .padding(.vertical, verticalPadding)
    }

    // MARK: - Private helpers

    private var spacing: Double {
        if textStyle == .bodyMedium, level == .zero {
            theme.bulletList.spaceColumnGapBodyMedium
        } else {
            theme.bulletList.spaceColumnGapBodyLarge
        }
    }

    private var leadingPadding: Double {
        switch level {
        case .zero:
            theme.bulletList.spacePaddingInlineLevel0
        case .one:
            theme.bulletList.spacePaddingInlineLevel1
        case .two:
            theme.bulletList.spacePaddingInlineLevel2
        }
    }

    private var verticalPadding: Double {
        if textStyle == .bodyMedium, level == .zero {
            theme.bulletList.spacePaddingBlockBodyMedium
        } else {
            theme.bulletList.spacePaddingBlockBodyLarge
        }
    }
}
