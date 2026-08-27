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

struct TextInputTrailingContainer: View {

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
        case .error, .richError:
            HStack(alignment: .center, spacing: theme.textInput.spaceColumnGapTrailingErrorAction) {
                Image(decorative: "ic_alert_important_fill", bundle: theme.resourcesBundle)
                    .resizable()
                    .renderingMode(.template)
                    .aspectRatio(contentMode: .fill)
                    .foregroundColor(errorIconColor)
                    .frame(width: theme.button.sizeIconOnlyDefault, height: theme.button.sizeIconOnlyDefault, alignment: .center)
                    .padding(.all, trailingAction == nil ? theme.button.spaceInsetIconOnlyDefault : theme.spaces.fixedNone)

                if let trailingAction {
                    trailingButton(for: trailingAction)
                }
            }
        case let .loading(progress):
            TextInputCircularProgressIndicator(progress: progress)
                .padding(.all, theme.button.spaceInsetProgressIndicatorOnlyDefault)
                .padding(.all, theme.button.spaceInsetIconOnlyDefault)
                .accessibilityHidden(true)
        }
    }

    // MARK: Helpers

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

    private func trailingButton(for trailingAction: OUDSTextInput.TrailingAction) -> some View {
        precondition(trailingAction.icon.asset != nil, "OUDSTextInput.TrailingAction.icon must be created with an asset Image")
        // Inject the actionHint as accessibilityLabel into a new OUDSImage for OUDSButton icon-only
        // swiftlint:disable:next force_unwrapping
        let imageWithA11y = OUDSImage(asset: trailingAction.icon.asset!,
                                      flipped: trailingAction.icon.flipped,
                                      accessibilityLabel: trailingAction.actionHint,
                                      renderingMode: trailingAction.icon.renderingMode)

        return OUDSButton(image: imageWithA11y,
                          appearance: .minimal,
                          style: .default,
                          action: trailingAction.action)
    }
}
#endif
