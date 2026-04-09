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

struct TextAreaBackgroundModifier: ViewModifier {

    // MARK: - Properties

    let status: OUDSTextArea.Status
    let interactionState: TextAreaInteractionState
    let isOverLimit: Bool
    let isOutlined: Bool

    @Environment(\.theme) private var theme
    @Environment(\.colorScheme) private var colorScheme

    // MARK: - Body

    func body(content: Content) -> some View {
        // Always apply .background to keep a stable view structure across all status changes.
        // Color.clear is used when no background is intended so the layout footprint is identical.
        content.background(color?.color(for: colorScheme) ?? Color.clear)
    }

    // MARK: - Helpers

    private var color: MultipleColorSemanticToken? {
        // Over-limit mirrors the error background regardless of outlined mode or status.
        if isOverLimit { return theme.colors.surfaceStatusNegativeMuted }
        return isOutlined ? outlinedColor : defaultColor
    }

    /// Outlined mode: transparent background for all interactive states; `actionSupportDisabled`
    /// for `.readOnly` to visually distinguish it from an empty field.
    private var outlinedColor: MultipleColorSemanticToken? {
        status == .readOnly ? theme.colors.actionSupportDisabled : MultipleColorSemanticToken?.none
    }

    private var defaultColor: MultipleColorSemanticToken? {
        switch status {
        case .enabled:
            switch interactionState {
            case .idle:
                theme.colors.actionSupportEnabled
            case .focused:
                theme.colors.actionSupportPressed
            case .hover:
                theme.colors.actionSupportHover
            }
        case .error:
            theme.colors.surfaceStatusNegativeMuted
        case .loading:
            switch interactionState {
            case .idle:
                theme.colors.actionSupportEnabled
            case .focused:
                theme.colors.actionSupportPressed
            case .hover:
                theme.colors.actionSupportHover
            }
        case .readOnly:
            MultipleColorSemanticToken?.none
        case .disabled:
            theme.colors.actionSupportDisabled
        }
    }
}
#endif
