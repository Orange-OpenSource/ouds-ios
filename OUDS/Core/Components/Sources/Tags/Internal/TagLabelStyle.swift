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

struct TagLabelStyle: LabelStyle {

    // MARK: Stored Properties

    let hierarchy: OUDSTag.Hierarchy
    let status: OUDSTag.Status
    let shape: OUDSTag.Shape
    let size: OUDSTag.Size

    @Environment(\.theme) private var theme

    // MARK: Body

    func makeBody(configuration: Configuration) -> some View {
        HStack(alignment: .center, spacing: spacing) {
            configuration.icon
                .frame(width: assetSize, height: assetSize, alignment: .center)

            configuration.title
        }
    }

    // MARK: Helper

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

