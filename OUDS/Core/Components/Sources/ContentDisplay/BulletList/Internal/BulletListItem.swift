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

    let item: OUDSBulletList.Item
    let type: OUDSBulletList.`Type`
    let textStyle: OUDSBulletList.TextStyle
    let isBold: Bool
    let level: OUDSBulletList.NestedLevel
    let index: UInt8

    @Environment(\.theme) var theme

    // MARK: - Body

    var body: some View {
        VStack(alignment: .leading, spacing: theme.spaces.fixedNone) {
            HStack(alignment: .center, spacing: spacing) {
                Bullet(type: type, level: level, textStyle: textStyle, isBold: isBold, index: index)
                BulletListLabel(label: item.text, textStyle: textStyle, isBold: isBold)
            }
            .padding(.leading, leadingPadding)
            .padding(.vertical, verticalPadding)

            let enumeratedSubItems = item.subItems.enumerated()
            ForEach(Array(enumeratedSubItems), id: \.element.text) { index, subItem in
                BulletListItem(item: subItem,
                               type: item.subListType ?? type,
                               textStyle: item.subListTextStyle ?? textStyle,
                               isBold: item.subListHasBoldText ?? isBold,
                               level: nextLevel,
                               index: UInt8(index))
            }
        }
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

    private var nextLevel: OUDSBulletList.NestedLevel {
        guard let nextLevel = OUDSBulletList.NestedLevel(rawValue: level.rawValue + 1) else {
            fatalError("Maximum list depth (3 levels) reached. Children of '\(item.text)' will not be displayed.")
        }

        return nextLevel
    }
}
