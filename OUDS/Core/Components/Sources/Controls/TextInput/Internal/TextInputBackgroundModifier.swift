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

struct TextInputBackgroundModifier: ViewModifier {

    // MARK: - Properties

    let status: OUDSTextInput.Status
    let isOutlined: Bool
    let interactionState: TextInputInteractionState

    @Environment(\.theme) private var theme

    // MARK: - Body

    func body(content: Content) -> some View {
        if let color {
            content.oudsBackground(color)
        } else {
            content
        }
    }

    // MARK: - Helpers

    private var color: MultipleColorSemanticToken? {
        isOutlined ? outlinedColor : defaultColor
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
            theme.colors.actionSupportLoading
        case .readOnly:
            nil
        case .disabled:
            theme.colors.actionSupportDisabled
        }
    }

    private var outlinedColor: MultipleColorSemanticToken? {
        if status == .readOnly {
            theme.colors.actionSupportDisabled
        } else {
            nil
        }
    }
}
#endif
