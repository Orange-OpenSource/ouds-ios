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

#if !os(watchOS) && !os(tvOS)
import OUDSTokensSemantic
import SwiftUI

/// Displayes a helper message below `ContolItems` texts according to the data avilable in `ControlItemData.Style`
/// and updates text color according to the `InteractionState`:
/// - error message if not empty and if `isError` flag are set in `true`.
/// - helper text, if `isError` flag are set in `false`
struct ControlItemHelperErrorTextContainer: View {

    // MARK: - Properties

    let layoutDataStyle: ControlItemData.Style
    let interactionState: InteractionState

    @Environment(\.theme) private var theme

    // MARK: - Body

    var body: some View {
        if let text = layoutDataStyle.helperErrorText, !text.isEmpty {
            textView(for: text)
                .labelDefaultMedium(theme)
                .foregroundColor(color)
                .multilineTextAlignment(.leading)
                .padding(.top, theme.controlItem.spacePaddingBlockTopHelperText)
                .padding(.horizontal, theme.controlItem.spacePaddingInline)
        }
    }

    // MARK: - Helper

    private var color: MultipleColorSemanticToken {
        if layoutDataStyle.isError {
            return theme.colors.contentStatusNegative
        }

        return interactionState == .disabled ? theme.colors.actionDisabled : theme.colors.contentMuted
    }
}
#endif
