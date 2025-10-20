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

    // MARK: - Body

    var body: some View {
        switch status {
        case .enabled, .readOnly, .disabled:
            if let trailingAction {
                trailingButton(for: trailingAction)
                    .disabled(status == .readOnly || status == .disabled)
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
            trailingButton(for: .init(icon: Image(decorative: "ic_heart"), actionHint: "", action: {}))
                .accessibilityHidden(true)
        }
    }

    // MARK: Helpers

    private var errorIconColor: MultipleColorSemanticTokens {
        switch interactionState {
        case .idle:
            theme.colors.colorActionNegativeEnabled
        case .focused:
            theme.colors.colorActionNegativePressed
        case .hover:
            theme.colors.colorActionNegativeHover
        }
    }

    private func trailingButton(for trailingAction: OUDSTextInput.TrailingAction) -> some View {
        OUDSButton(icon: trailingAction.icon,
                   accessibilityLabel: trailingAction.actionHint,
                   appearance: .minimal,
                   style: status == .loading ? .loading : .default,
                   action: trailingAction.action)
    }
}
