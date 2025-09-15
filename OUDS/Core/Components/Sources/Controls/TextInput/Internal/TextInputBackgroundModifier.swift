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

struct TextInputBackgroundModifier: ViewModifier {

    // MARK: - Stored properties

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

    private var color: MultipleColorSemanticTokens? {
        isOutlined ? outlinedColor : defaultColor
    }

    private var defaultColor: MultipleColorSemanticTokens? {
        switch status {
        case .default:
            switch interactionState {
            case .idle:
                return theme.colors.colorActionSupportEnabled
            case .focused:
                return theme.colors.colorActionSupportPressed
            case .hover:
                return theme.colors.colorActionSupportHover
            }
        case .error:
            return theme.colors.colorSurfaceStatusNegativeMuted
        case .loading:
            return theme.colors.colorActionSupportLoading
        case .readOnly:
            return nil
        case .disabled:
            return theme.colors.colorActionSupportDisabled
        }
    }

    private var outlinedColor: MultipleColorSemanticTokens? {
        if status == .readOnly {
            return theme.colors.colorActionSupportDisabled
        } else {
            return nil
        }
    }
}

