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
    @Environment(\.theme) private var theme
    @Environment(\.isFocused) private var focused
    @Environment(\.colorScheme) private var colorScheme
    @State private var hover = false

    // MARK: - Body

    var body: some View {
        if case .loading = status {
            // TODO: update size with token
            LoaderIndicator(color: theme.colors.colorContentMuted.color(for: colorScheme))
                .frame(width: 24, height: 24, alignment: .center)
                .padding(.all, theme.button.buttonSpaceInsetIconOnly)
        } else {
            HStack(alignment: .center, spacing: theme.textInput.textInputSpaceColumnGapTrailingErrorAction) {
                if status == .error {
                    // TODO: Update asset name
                    Image(decorative: "ic_error", bundle: theme.resourcesBundle)
                        .renderingMode(.template)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .oudsForegroundStyle(errorIconColor)
                        .frame(width: 24, height: 24, alignment: .center)
                        .padding(.all, trailingAction == nil ? theme.button.buttonSpaceInsetIconOnly : theme.spaces.spaceFixedNone)
                }

                if let trailingAction {
                    OUDSButton(icon: trailingAction.icon,
                               accessibilityLabel: trailingAction.accessibilityLabel,
                               hierarchy: .minimal,
                               style: .default,
                               action: trailingAction.action)
                    .disabled(status == .disbaled || status == .readOnly)
                }
            }
        }
    }

    // MARK: Helper

    private var errorIconColor: MultipleColorSemanticTokens {
        if focused {
            return theme.colors.colorActionNegativePressed
        }
        if hover {
            return theme.colors.colorActionNegativeHover
        }
        return theme.colors.colorActionNegativeEnabled
    }
}
