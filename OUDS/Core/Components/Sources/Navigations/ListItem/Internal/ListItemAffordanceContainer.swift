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

/// A conainer to display the affordance accoring to its type and apply the right color based on the `InteractionState`.
/// For RTL,  the next and previous affordance change there assets according to the `LayoutDirection`.
struct ListItemAffordanceContainer: View {

    // MARK: - Properties

    let type: OUDSListItemNavigationAffordanceType?
    let interactionState: InteractionState

    @Environment(\.theme) private var theme
    @Environment(\.layoutDirection) private var layoutDirection

    var body: some View {
        if let assetName {
            HStack {
                Image(decorative: assetName, bundle: theme.resourcesBundle)
                    .renderingMode(.template)
                    .resizable()
                    .foregroundColor(color)
                    .frame(width: theme.controlItem.sizeAssetSmall, height: theme.controlItem.sizeAssetSmall)
            }
            .frame(minHeight: theme.controlItem.sizeAssetMedium, alignment: .center)
        }
    }

    // MARK: - Helpers

    // TODO: use right asset
    private var assetName: String? {
        switch type {
        case .next:
            layoutDirection == .rightToLeft ? "ic_link_previous" : "ic_link_next"
        case .previous:
            layoutDirection == .rightToLeft ? "ic_link_next" : "ic_link_previous"
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
}
