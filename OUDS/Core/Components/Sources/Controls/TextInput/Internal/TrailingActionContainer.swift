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
            HStack(alignment: .center, spacing: theme.textInput.spaceColumnGapTrailingErrorAction) {
                Image(decorative: "ic_important", bundle: theme.resourcesBundle)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .oudsForegroundColor(errorIconColor)
                    .frame(width: theme.button.sizeIconOnly, height: theme.button.sizeIconOnly, alignment: .center)
                    .padding(.all, trailingAction == nil ? theme.button.spaceInsetIconOnly : theme.spaces.fixedNone)

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
            theme.colors.actionNegativeEnabled
        case .focused:
            theme.colors.actionNegativePressed
        case .hover:
            theme.colors.actionNegativeHover
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
