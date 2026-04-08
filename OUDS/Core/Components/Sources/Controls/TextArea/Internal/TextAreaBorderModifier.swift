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

struct TextAreaBorderModifier: ViewModifier {

    // MARK: - Properties

    let status: OUDSTextArea.Status
    let interactionState: TextAreaInteractionState

    @Environment(\.theme) private var theme
    @Environment(\.colorScheme) private var colorScheme

    // MARK: - Body

    func body(content: Content) -> some View {
        if status == .readOnly {
            content
                .border(style: theme.borders.styleDefault,
                        width: theme.textInput.borderWidthDefault,
                        radius: theme.textInput.borderRadiusDefault,
                        color: theme.colors.borderMuted)
        } else {
            ZStack(alignment: .bottomLeading) {
                content
                Divider()
                    .frame(height: borderWidth)
                    .overlay(borderColor.color(for: colorScheme))
            }
            .clipShape(RoundedRectangle(cornerRadius: theme.textInput.borderRadiusDefault))
        }
    }

    // MARK: - Helpers

    private var borderWidth: BorderWidthSemanticToken {
        switch interactionState {
        case .idle, .hover:
            theme.textInput.borderWidthDefault
        case .focused:
            theme.textInput.borderWidthFocus
        }
    }

    private var borderColor: MultipleColorSemanticToken {
        switch status {
        case .enabled:
            switch interactionState {
            case .idle:
                theme.textInput.colorBorderEnabled
            case .focused:
                theme.textInput.colorBorderFocus
            case .hover:
                theme.textInput.colorBorderHover
            }
        case .error:
            switch interactionState {
            case .idle:
                theme.colors.actionNegativeEnabled
            case .focused:
                theme.colors.actionNegativePressed
            case .hover:
                theme.colors.actionNegativeHover
            }
        case .readOnly:
            theme.colors.borderMuted
        case .disabled:
            theme.colors.actionDisabled
        }
    }
}
#endif
