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
                trailingActionButton
                    .disabled(status == .disabled || status == .readOnly)
            case .error:
                HStack(alignment: .center, spacing: theme.textInput.textInputSpaceColumnGapTrailingErrorAction) {
                    Image(decorative: "ic_important", bundle: theme.resourcesBundle)
                        .renderingMode(.template)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .oudsForegroundColor(errorIconColor)
                        .frame(width: theme.button.buttonSizeIconOnly, height: theme.button.buttonSizeIconOnly, alignment: .center)
                        .padding(.all, trailingAction == nil ? theme.button.buttonSpaceInsetIconOnly : theme.spaces.spaceFixedNone)

                    trailingActionButton
                }

            case .loading:
                LoaderIndicator(color: theme.colors.colorContentMuted.color(for: colorScheme))
                    .frame(width: theme.button.buttonSizeLoader, height: theme.button.buttonSizeLoader, alignment: .center)
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

    @ViewBuilder
    private var trailingActionButton: some View {
        if let trailingAction {
            OUDSButton(icon: trailingAction.icon,
                       accessibilityLabel: trailingAction.accessibilityLabel,
                       hierarchy: .minimal,
                       style: .loading == status ?  .loading : .default,
                       action: trailingAction.action)
        }
    }
}
