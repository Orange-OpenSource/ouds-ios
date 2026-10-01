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

struct CategoricalTagIcon: View {

    let size: OUDSTag.Size
    let leading: OUDSCategoricalTag.Leading

    @Environment(\.theme) private var theme

    var body: some View {
        Group {
            switch leading {
            case .none:
                EmptyView()
            case .bullet:
                Image(decorative: "ic_tag_bullet", bundle: theme.resourcesBundle)
                    .renderingMode(.template)
                    .resizable()
                    .foregroundColor(theme.categoricalTag.colorContent)
                    .padding(.all, bulletPadding)
            case let .icon(oudsImage):
                if let asset = oudsImage.asset {
                    asset
                        .renderingMode(oudsImage.renderingMode)
                        .resizable()
                        .toFlip(oudsImage.flipped)
                        .foregroundColor(theme.categoricalTag.colorContent)
                        .padding(.all, iconPadding)
                } else {
                    EmptyView()
                }
            }
        }
    }

    private var bulletPadding: CGFloat {
        switch size {
        case .default:
            theme.tag.spaceInsetBulletDefault
        case .small:
            theme.tag.spaceInsetBulletSmall
        }
    }

    private var iconPadding: CGFloat {
        switch size {
        case .default:
            theme.tag.spaceInsetIconDefault
        case .small:
            theme.tag.spaceInsetIconSmall
        }
    }
}
