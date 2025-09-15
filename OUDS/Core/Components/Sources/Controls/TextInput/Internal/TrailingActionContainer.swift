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
        switch status {
        case .default, .readOnly, .disabled:
            if let trailingAction {
                trailingButton(for: trailingAction)
            }
        case .error:
            HStack(alignment: .center, spacing: theme.textInput.textInputSpaceColumnGapTrailingErrorAction) {
                Image(decorative: "ic_important", bundle: theme.resourcesBundle)
                    .renderingMode(.template)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .oudsForegroundColor(errorIconColor)
                    .frame(width: theme.button.buttonSizeIconOnly, height: theme.button.buttonSizeIconOnly, alignment: .center)
                    .padding(.all, trailingAction == nil ? theme.button.buttonSpaceInsetIconOnly : theme.spaces.spaceFixedNone)

                if let trailingAction {
                    trailingButton(for: trailingAction)
                }
            }
        case .loading:
            trailingButton(for: .init(icon:  Image(decorative: "ic_heart"), accessibilityLabel: "", action: {}))
        }
    }

    // MARK: Helpers

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

    func trailingButton(for trailingAction: OUDSTextInput.TrailingAction) -> some View {
        OUDSButton(icon: trailingAction.icon,
                   accessibilityLabel: trailingAction.accessibilityLabel,
                   hierarchy: .minimal,
                   style: .loading == status ?  .loading : .default,
                   action: trailingAction.action)
    }
}
