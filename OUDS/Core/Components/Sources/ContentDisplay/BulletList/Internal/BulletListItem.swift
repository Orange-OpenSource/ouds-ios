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
        if case .ordered = type {
            "\(accessibilityLabelPrefix), \(item.text)"
        } else {
            item.text
        }
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
