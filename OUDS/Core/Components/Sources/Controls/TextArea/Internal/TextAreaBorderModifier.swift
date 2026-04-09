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

    func body(content: Content) -> some View {
        if isOutlined {
            // Outlined mode: full-perimeter border; no border at all for readOnly.
            if status == .readOnly {
                content
            } else {
                content
                    .border(style: theme.borders.styleDefault,
                            width: borderWidth,
                            radius: borderRadius,
                            color: borderColor)
            }
        } else {
            // Default mode — same structure for all statuses to prevent layout changes
            // when switching status. clipShape clips content, then an overlay draws
            // the border on top without affecting the content's intrinsic size.
            // - Non-readOnly: bottom-only divider line.
            // - readOnly: full-perimeter stroke drawn over (not inside) the clip shape.
            content
                .clipShape(RoundedRectangle(cornerRadius: borderRadius))
                .overlay(borderOverlay)
        }
    }

    // MARK: - Helpers

    /// Overlay view applied on top of the clipped content.
    /// Always the same type regardless of status so SwiftUI never changes the view hierarchy,
    /// preventing height jumps when switching between statuses.
    @ViewBuilder
    private var borderOverlay: some View {
        if status == .readOnly {
            // Full-perimeter stroke for readOnly — uses .stroke (not .strokeBorder) so the line
            // draws centred on the clip boundary and does not inset the content area.
            RoundedRectangle(cornerRadius: borderRadius)
                .stroke(theme.colors.borderMuted.color(for: colorScheme),
                        lineWidth: theme.textInput.borderWidthDefault)
        } else {
            // Bottom-only divider for all other statuses.
            Rectangle()
                .frame(height: borderWidth)
                .foregroundColor(borderColor.color(for: colorScheme))
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottom)
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
        // Over-limit mirrors the error border colour regardless of the caller-supplied status.
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
        case .error:
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
