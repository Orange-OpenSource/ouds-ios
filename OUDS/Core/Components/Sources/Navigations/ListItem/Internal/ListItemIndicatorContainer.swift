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

/// A container to display the indicator according to its type and apply the right color based on the `InteractionState`.
/// For RTL, the next and previous indicators change their assets according to the `LayoutDirection`.
struct ListItemIndicatorContainer: View {

    // MARK: - Properties

    let type: OUDSNavigationListItemIndicatorType?
    let interactionState: InteractionState

    @Environment(\.theme) private var theme
    @Environment(\.oudsListItemSize) private var itemSize
    @Environment(\.layoutDirection) private var layoutDirection

    // MARK: - Body

    var body: some View {
        if let asset {
            HStack {
                ScaledIcon(icon: asset, size: theme.controlItem.sizeAssetSmall)
                    .foregroundColor(color)
            }
            .frame(minHeight: minHeight, alignment: .center)
        }
    }

    // MARK: - Helpers

    private var asset: Image? {
        if let assetName {
            Image(assetName, bundle: theme.resourcesBundle)
                .renderingMode(.template)
        } else {
            nil
        }
    }

    private var assetName: String? {
        switch type {
        case .next:
            layoutDirection == .rightToLeft ? "ic_control_item_previous" : "ic_control_item_next"
        case .previous:
            layoutDirection == .rightToLeft ? "ic_control_item_next" : "ic_control_item_previous"
        case .external:
            "ic_functional_action_external_link"
        case .none:
            nil
        }
    }

    private var color: MultipleColorSemanticToken {
        switch interactionState {
        case .enabled:
            theme.link.colorChevronEnabled
        case .hover:
            theme.colors.actionHover
        case .pressed:
            theme.colors.actionPressed
        case .disabled:
            theme.colors.actionDisabled
        case .readOnly:
            // should not appear
            theme.colors.actionDisabled
        }
    }

    private var minHeight: CGFloat {
        switch itemSize {
        case .standard:
            // TODO: ouds/💠_control/list-item/size/asset/medium
            theme.controlItem.sizeAssetMedium
        case .small:
            // TODO: ouds/💠_control/list-item/size/asset/small
            theme.controlItem.sizeAssetSmall
        }
    }
}
