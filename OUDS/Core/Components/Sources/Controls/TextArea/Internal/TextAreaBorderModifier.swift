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
    let isOverLimit: Bool
    let isOutlined: Bool

    @Environment(\.theme) private var theme
    @Environment(\.colorScheme) private var colorScheme

    // MARK: - Body

    /// Always produces the same view structure — `content.clipShape(...).overlay(borderOverlay)` —
    /// regardless of `isOutlined` or `status`, so SwiftUI never changes the view hierarchy
    /// when switching styles or statuses, preventing any size change.
    func body(content: Content) -> some View {
        content
            .clipShape(RoundedRectangle(cornerRadius: borderRadius))
            .overlay(borderOverlay)
    }

    // MARK: - Helpers

    /// Overlay that provides the correct visual border for every combination of
    /// `isOutlined` and `status`, without wrapping or insetting the content.
    /// Uses `.stroke()` (not `.strokeBorder()`) for full-perimeter borders — `.stroke`
    /// draws centred on the clip boundary so the inner half is clipped away without
    /// reducing the content's layout size.
    @ViewBuilder
    private var borderOverlay: some View {
        if isOutlined {
            if case .readOnly = status {
                // Outlined + readOnly: no border.
                Color.clear
            } else {
                // Outlined + any other status: full-perimeter stroke.
                RoundedRectangle(cornerRadius: borderRadius)
                    .stroke(borderColor.color(for: colorScheme), lineWidth: borderWidth)
            }
        } else {
            if case .readOnly = status {
                // Default + readOnly: full-perimeter muted stroke.
                RoundedRectangle(cornerRadius: borderRadius)
                    .stroke(theme.colors.borderMuted.color(for: colorScheme),
                            lineWidth: theme.textInput.borderWidthDefault)
            } else {
                // Default + any other status: bottom divider only.
                Rectangle()
                    .frame(height: borderWidth)
                    .foregroundColor(borderColor.color(for: colorScheme))
                    .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottom)
            }
        }
    }

    private var borderRadius: BorderRadiusSemanticToken {
        theme.tuning.hasRoundedTextInputs ? theme.textInput.borderRadiusRounded : theme.textInput.borderRadiusDefault
    }

    private var borderWidth: BorderWidthSemanticToken {
        switch interactionState {
        case .idle, .hover:
            theme.textInput.borderWidthDefault
        case .focused:
            theme.textInput.borderWidthFocus
        }
    }

    private var borderColor: MultipleColorSemanticToken {
        if isOverLimit {
            return switch interactionState {
            case .idle:
                theme.colors.actionNegativeEnabled
            case .focused:
                theme.colors.actionNegativePressed
            case .hover:
                theme.colors.actionNegativeHover
            }
        }
        return switch status {
        case .enabled:
            switch interactionState {
            case .idle:
                theme.textInput.colorBorderEnabled
            case .focused:
                theme.textInput.colorBorderFocus
            case .hover:
                theme.textInput.colorBorderHover
            }
        case .error, .richError:
            switch interactionState {
            case .idle:
                theme.colors.actionNegativeEnabled
            case .focused:
                theme.colors.actionNegativePressed
            case .hover:
                theme.colors.actionNegativeHover
            }
        case .loading:
            switch interactionState {
            case .idle:
                theme.textInput.colorBorderEnabled
            case .focused:
                theme.textInput.colorBorderFocus
            case .hover:
                theme.textInput.colorBorderHover
            }
        case .readOnly:
            theme.colors.borderMuted
        case .disabled:
            theme.colors.actionDisabled
        }
    }
}
#endif
