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

import SwiftUI

struct TagLabelStyle: LabelStyle {

    // MARK: Stored properties

    let appearance: OUDSTag.Appearance
    let shape: OUDSTag.Shape
    let size: OUDSTag.Size
    let type: OUDSTag.`Type`

    @Environment(\.theme) private var theme

    // MARK: Body

    func makeBody(configuration: Configuration) -> some View {
        HStack(alignment: .center, spacing: spacing) {
            configuration.icon
                .frame(width: assetSize, height: assetSize, alignment: .center)

            configuration.title
        }
        .modifier(TagPaddingsAndSizeModifier(size: size, hasIcon: hasIcon))
        .modifier(TagBackgroundModifier(appearance: appearance, type: type))
        .modifier(TagShapeModifier(shape: shape))
    }

    // MARK: Helpers

    private var hasIcon: Bool {
        switch type {
        case let .status(_, status):
            switch status.leading {
            case .icon, .bullet:
                true
            default:
                false
            }
        default:
            true
        }
    }

    private var spacing: CGFloat {
        switch size {
        case .default:
            theme.tag.tagSpaceColumnGapDefault
        case .small:
            theme.tag.tagSpaceColumnGapSmall
        }
    }

    private var assetSize: CGFloat {
        switch size {
        case .default:
            theme.tag.tagSizeAssetDefault
        case .small:
            theme.tag.tagSizeAssetSmall
        }
    }
}
