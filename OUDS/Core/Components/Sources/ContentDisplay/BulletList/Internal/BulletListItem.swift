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

struct BulletListItem: View {

    // MARK: - Properties

    private let item: OUDSBulletList.Item
    private let type: OUDSBulletList.`Type`
    private let textStyle: OUDSBulletList.TextStyle
    private let isBold: Bool
    private let level: OUDSBulletList.NestedLevel
    private let index: UInt8
    private let accessibilityLabelPrefix: String

    @Environment(\.theme) private var theme

    // MARK: - Init

    init(item: OUDSBulletList.Item,
         type: OUDSBulletList.`Type`,
         textStyle: OUDSBulletList.TextStyle,
         isBold: Bool,
         level: OUDSBulletList.NestedLevel,
         index: UInt8,
         accessibilityLabelPrefix: String? = nil)
    {
        self.item = item
        self.type = type
        self.textStyle = textStyle
        self.isBold = isBold
        self.level = level
        self.index = index

        // Maybe bullet list item for nested levels
        if let accessibilityLabelPrefix {
            self.accessibilityLabelPrefix = accessibilityLabelPrefix
            // Maybe bullet list item for root level
        } else if case .ordered = type {
            self.accessibilityLabelPrefix = OrderedBullet.levelZeroBullet(for: index)
            // No need of prefix for list not ordered
        } else {
            self.accessibilityLabelPrefix = ""
        }
    }

    // MARK: - Body

    var body: some View {
        VStack(alignment: .leading, spacing: theme.spaces.fixedNone) {
            HStack(alignment: .top, spacing: spacing) {
                Bullet(type: type, level: level, textStyle: textStyle, isBold: isBold, index: index)
                BulletListLabel(label: item.text, textStyle: textStyle, isBold: isBold)
            }
            .accessibilityElement(children: .combine)
            .accessibilityLabel(accessibilityLabel)
            .padding(.leading, leadingPadding)
            .padding(.vertical, verticalPadding)

            let enumeratedSubItems = item.subItems.enumerated()
            ForEach(Array(enumeratedSubItems), id: \.offset) { index, subItem in
                BulletListItem(item: subItem,
                               type: item.subListType ?? type,
                               textStyle: item.subListTextStyle ?? textStyle,
                               isBold: item.subListHasBoldText ?? isBold,
                               level: nextLevel,
                               index: UInt8(index),
                               accessibilityLabelPrefix: Self.prefixAfter(accessibilityLabelPrefix, for: nextLevel, at: index))
            }
        }
    }

    // MARK: - Private helpers

    private var spacing: Double {
        switch textStyle {
        case .bodyLarge:
            theme.bulletList.spaceColumnGapBodyLarge
        case .bodyMedium:
            theme.bulletList.spaceColumnGapBodyMedium
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
        switch textStyle {
        case .bodyLarge:
            theme.bulletList.spacePaddingBlockBodyLarge
        case .bodyMedium:
            theme.bulletList.spacePaddingBlockBodyMedium
        }
    }

    private var nextLevel: OUDSBulletList.NestedLevel {
        guard let nextLevel = OUDSBulletList.NestedLevel(rawValue: level.rawValue + 1) else {
            OL.fatal("It is forbidden by design to have more than 3 levels depth. Children of '\(item.text)' are too much.")
        }
        return nextLevel
    }

    private var accessibilityLabel: String {
        let orderedPrefix: String? = if case .ordered = type {
            accessibilityLabelPrefix
        } else {
            nil
        }
        return Self.buildAccessibilityLabel(
            orderedPrefix: orderedPrefix,
            text: item.text,
            level: level,
            subItemsCount: item.subItems.count)
    }

    /// Builds the VoiceOver accessibility label for a bullet list item.
    ///
    /// The label is composed of up to four parts joined by `", "`:
    /// 1. The ordered prefix (e.g. `"1."`, `"1.A."`) — only for ordered lists.
    /// 2. The item text.
    /// 3. The nesting level (e.g. `"level 1"`) — only for **unordered and bare** lists when nesting
    ///    is involved (i.e. `level > .zero` or the item has sub-items). Ordered lists already encode
    ///    the depth through their hierarchical prefix (`"1."`, `"1.A."`, `"1.A.a."`), so announcing
    ///    the level again would be redundant.
    /// 4. The count of sub-items (e.g. `"3 sub-items"`) — for all list types when `subItemsCount > 0`.
    ///
    /// - Parameters:
    ///   - orderedPrefix: The hierarchical ordered bullet prefix, or `nil` for unordered / bare lists.
    ///   - text: The visible text of the item.
    ///   - level: The nesting depth of the item.
    ///   - subItemsCount: The number of direct children of the item.
    /// - Returns: A localised accessibility label string.
    static func buildAccessibilityLabel(orderedPrefix: String?,
                                        text: String,
                                        level: OUDSBulletList.NestedLevel,
                                        subItemsCount: Int) -> String
    {
        var components: [String] = []

        // Ordered prefix (e.g. "1.", "1.A.", "1.A.a.")
        if let orderedPrefix {
            components.append(orderedPrefix)
        }

        // Item text
        components.append(text)

        // Nesting level: only for unordered / bare lists.
        // Ordered lists already convey depth through their hierarchical prefix.
        let isNested = level != .zero || subItemsCount > 0
        if isNested, orderedPrefix == nil {
            let levelNumber = level.rawValue + 1
            let levelString = String(format: String(localized: "core_bulletList_a11y_level", bundle: .module), levelNumber)
            components.append(levelString)
        }

        // Sub-items count: always announced when children are present, regardless of list type.
        if subItemsCount > 0 {
            let subItemsString = String(format: String(localized: "core_bulletList_a11y_subItemsCount", bundle: .module), subItemsCount)
            components.append(subItemsString)
        }

        return components.joined(separator: ", ")
    }

    static func prefixAfter(_ accessibilityLabel: String, for level: OUDSBulletList.NestedLevel, at index: Int) -> String {
        let index = UInt8(index)
        let currentPrefix = switch level {
        case .zero:
            OrderedBullet.levelZeroBullet(for: index)
        case .one:
            OrderedBullet.levelOneBullet(for: index)
        case .two:
            OrderedBullet.levelTwoBullet(for: index)
        }
        return "\(accessibilityLabel)\(currentPrefix)"
    }
}
