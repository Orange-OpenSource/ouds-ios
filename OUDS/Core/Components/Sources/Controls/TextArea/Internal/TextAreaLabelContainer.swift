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

struct TextAreaLabelContainer: View {

    // MARK: Properties

    let label: String
    let isSmallLabel: Bool
    let status: OUDSTextArea.Status
    let interactionState: TextAreaInteractionState
    let isOverLimit: Bool

    @Environment(\.theme) private var theme

    // MARK: Body

    var body: some View {
        if !label.isEmpty {
            Group {
                if isSmallLabel {
                    Text(label)
                        .labelDefaultSmall(theme)
                } else {
                    Text(label)
                        .labelDefaultLarge(theme)
                }
            }
            .lineLimit(1)
            .minimumScaleFactor(1.0)
            .foregroundColor(color)
            .frame(maxWidth: .infinity, alignment: .leading)
            .accessibilityHidden(true)
        }
    }

    // MARK: Helpers

    private var color: MultipleColorSemanticToken {
        if isOverLimit {
            return switch interactionState {
            case .idle:
                theme.colors.actionNegativeEnabled
            case .focused:
                theme.colors.actionNegativeFocus
            case .hover:
                theme.colors.actionNegativeHover
            }
        }
        return switch status {
        case .enabled, .readOnly, .loading:
            theme.colors.contentMuted
        case .error, .richError:
            switch interactionState {
            case .idle:
                theme.colors.actionNegativeEnabled
            case .focused:
                theme.colors.actionNegativeFocus
            case .hover:
                theme.colors.actionNegativeHover
            }
        case .disabled:
            theme.colors.actionDisabled
        }
    }
}
#endif
