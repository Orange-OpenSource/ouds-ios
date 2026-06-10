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

/// A container to display the affordance according to its type and apply the right color based on the `InteractionState`.
/// For RTL,  the next and previous affordance change there assets according to the `LayoutDirection`.
struct ListItemAffordanceContainer: View {

    // MARK: - Properties

    let type: OUDSNavigationListItemAffordanceType?
    let interactionState: InteractionState

    @Environment(\.theme) private var theme
    @Environment(\.oudsListItemSize) private var size
    @Environment(\.layoutDirection) private var layoutDirection

    // MARK: - Body

    var body: some View {
        if let assetName {
            HStack {
                Image(decorative: assetName, bundle: theme.resourcesBundle)
                    .renderingMode(.template)
                    .resizable()
                    .foregroundColor(color)
                    .frame(width: theme.controlItem.sizeAssetSmall, height: theme.controlItem.sizeAssetSmall)
            }
            .frame(minHeight: minHeight, alignment: .center)
        }
    }

    // MARK: - Helpers

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
            theme.colors.actionEnabled
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
        switch size {
        case .small:
            theme.controlItem.sizeAssetSmall
        case .standard:
            theme.controlItem.sizeAssetMedium
        }
    }
}
