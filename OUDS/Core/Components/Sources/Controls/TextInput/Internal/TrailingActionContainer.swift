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

struct TrailingActionContainer: View {

    // MARK: - Properties

    let trailingAction: OUDSTextInput.TrailingAction?
    let status: OUDSTextInput.Status
    let interactionState: TextInputInteractionState
    @Environment(\.theme) private var theme
    @Environment(\.colorScheme) private var colorScheme

    // MARK: - Body

    var body: some View {
        HStack(alignment: .center, spacing: theme.textInput.textInputSpaceColumnGapTrailingErrorAction) {
            if status == .error {
                // TODO: Update asset name
                Image(decorative: "ic_error", bundle: theme.resourcesBundle)
                    .renderingMode(.template)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .oudsForegroundStyle(errorIconColor)
                    .padding(.all, trailingAction == nil ? theme.button.buttonSpaceInsetIconOnly : theme.spaces.spaceFixedNone)
            }

            if let trailingAction {
                OUDSButton(icon: trailingAction.icon,
                           accessibilityLabel: trailingAction.accessibilityLabel,
                           hierarchy: .minimal,
                           style: .loading == status ?  .loading : .default,
                           action: trailingAction.action)
                .disabled(status == .disbaled || status == .readOnly)
            }
        }
    }

    // MARK: Helper

    private var errorIconColor: MultipleColorSemanticTokens {
        switch interactionState {
        case .idle:
            return theme.colors.colorActionNegativeEnabled
        case .focused:
            return theme.colors.colorActionNegativePressed
        case .hover:
            return theme.colors.colorActionNegativeHover
        }
    }
}
