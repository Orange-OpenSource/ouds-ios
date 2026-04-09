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

/// Renders the top-trailing indicator for `OUDSTextArea`.
///
/// Always reserves the same fixed-size slot regardless of status so the `HStack` width
/// never changes when switching between statuses — preventing height reflow.
///
/// - `.error` or `isOverLimit` → red alert icon (`ic_alert_important_fill`)
/// - `.loading` → loading spinner via `OUDSButton(style: .loading)`, accessibility hidden
/// - all other statuses → invisible placeholder of the same size
struct TextAreaTrailingContainer: View {

    // MARK: - Properties

    let status: OUDSTextArea.Status
    let interactionState: TextAreaInteractionState
    /// `true` when the caller uses `.charactersMaxCount` and the text exceeds the limit.
    let isOverLimit: Bool

    @Environment(\.theme) private var theme

    // MARK: - Body

    var body: some View {
        // The slot size is always button.sizeIconOnly + 2 × button.spaceInsetIconOnly (horizontal).
        // Content is swapped via opacity so the size is never zero — preventing layout shifts.
        ZStack {
            // Invisible placeholder — always present to hold the slot size.
            Color.clear
                .frame(width: theme.button.sizeIconOnly + 2 * theme.button.spaceInsetIconOnly,
                       height: theme.button.sizeIconOnly)

            if case .error = status {
                errorIcon
            } else if isOverLimit {
                errorIcon
            } else if case .loading = status {
                OUDSButton(icon: Image(decorative: "ic_heart"), // FIXME: #543 - Change this image
                           accessibilityLabel: "",
                           appearance: .minimal,
                           style: .loading,
                           action: {})
                    .accessibilityHidden(true)
            }
        }.frame(maxHeight: theme.textArea.sizeMaxHeightAssetsContainer)
    }

    // MARK: - Helpers

    private var errorIcon: some View {
        Image(decorative: "ic_alert_important_fill", bundle: theme.resourcesBundle)
            .resizable()
            .renderingMode(.template)
            .aspectRatio(contentMode: .fill)
            .foregroundColor(errorIconColor)
            .frame(width: theme.button.sizeIconOnly,
                   height: theme.button.sizeIconOnly,
                   alignment: .center)
            .padding(.horizontal, theme.button.spaceInsetIconOnly)
    }

    private var errorIconColor: MultipleColorSemanticToken {
        switch interactionState {
        case .idle:
            theme.colors.actionNegativeEnabled
        case .focused:
            theme.colors.actionNegativePressed
        case .hover:
            theme.colors.actionNegativeHover
        }
    }
}
#endif
