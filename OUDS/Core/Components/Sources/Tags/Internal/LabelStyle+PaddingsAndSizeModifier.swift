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

struct TagPaddingsAndSizeModifier: ViewModifier {

    // MARK: Stored Properties

    let size: OUDSTag.Size
    let type: OUDSTag.`Type`
    @Environment(\.theme) private var theme

    // MARK: Body

    func body(content: Content) -> some View {
        content
            .padding(.top, paddingTop)
            .padding(.bottom, paddingBottom)
            .padding(.leading, paddingLeading)
            .padding(.trailing, paddingTailing)
            .frame(minWidth: minWidth, minHeight: minHeight, alignment: .center)
    }

    // MARK: Helpers

    private var paddingTop: CGFloat {
        switch size {
        case .default:
            theme.tag.tagSpacePaddingBlockDefault
        case .small:
            theme.tag.tagSpacePaddingBlockSmall
        }
    }

    private var paddingBottom: CGFloat {
        switch size {
        case .default:
            theme.tag.tagSpacePaddingBlockDefault
        case .small:
            theme.tag.tagSpacePaddingBlockSmall
        }
    }

    private var paddingLeading: CGFloat {
        switch size {
        case .default:
            hasAsset ? theme.tag.tagSpacePaddingInlineAssetDefault : theme.tag.tagSpacePaddingInlineDefault
        case .small:
            hasAsset ? theme.tag.tagSpacePaddingInlineAssetSmall : theme.tag.tagSpacePaddingInlineSmall
        }
    }

    private var paddingTailing: CGFloat {
        switch size {
        case .default:
            theme.tag.tagSpacePaddingInlineDefault
        case .small:
            theme.tag.tagSpacePaddingInlineSmall
        }
    }

    private var minWidth: CGFloat{
        switch size {
        case .default:
            theme.tag.tagSizeMinWidthDefault
        case .small:
            theme.tag.tagSizeMinWidthSmall
        }
    }

    private var minHeight: CGFloat{
        switch size {
        case .default:
            theme.tag.tagSizeMinHeightDefault
        case .small:
            theme.tag.tagSizeMinHeightSmall
        }
    }

    private var hasAsset: Bool {
        switch type {
        case .text(_, let hasBullet):
            return hasBullet
        default:
            return true
        }
    }
}
