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

    // MARK: Properties

    let size: OUDSTag.Size
    let leading: OUDSCategoricalTag.Leading

    @Environment(\.theme) private var theme
    @Environment(\.isEnabled) private var isEnabled

    // MARK: Body

    var body: some View {
        iconContent?
            .renderingMode(appliedRenderingMode)
            .resizable()
            .toFlip(flipped)
            .foregroundColor(contentColor)
            .padding(.all, padding)
    }

    // MARK: Helpers

    private var iconContent: Image? {
        switch leading {
        case .none:
            nil
        case .bullet:
            Image(decorative: "ic_tag_bullet", bundle: theme.resourcesBundle)
        case let .icon(oudsImage):
            oudsImage.asset
        }
    }

    private var appliedRenderingMode: Image.TemplateRenderingMode {
        if case let .icon(oudsImage) = leading {
            return oudsImage.renderingMode
        }
        return .template
    }

    private var flipped: Bool {
        if case let .icon(oudsImage) = leading {
            return oudsImage.flipped
        }
        return false
    }

    private var contentColor: MultipleColorSemanticToken {
        isEnabled ? theme.categoricalTag.colorContent : theme.colors.contentOnActionDisabled
    }

    private var padding: CGFloat {
        switch leading {
        case .none:
            0
        case .bullet:
            switch size {
            case .default:
                theme.tag.spaceInsetBulletDefault
            case .small:
                theme.tag.spaceInsetBulletSmall
            }
        case .icon:
            switch size {
            case .default:
                theme.tag.spaceInsetIconDefault
            case .small:
                theme.tag.spaceInsetIconSmall
            }
        }
    }
}
