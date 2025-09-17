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

    private var color: MultipleColorSemanticTokens? {
        isOutlined ? outlinedColor : defaultColor
    }

    private var defaultColor: MultipleColorSemanticTokens? {
        switch status {
        case .default:
            switch interactionState {
            case .idle:
                theme.colors.colorActionSupportEnabled
            case .focused:
                theme.colors.colorActionSupportPressed
            case .hover:
                theme.colors.colorActionSupportHover
            }
        case .error:
            theme.colors.colorSurfaceStatusNegativeMuted
        case .loading:
            theme.colors.colorActionSupportLoading
        case .readOnly:
            nil
        case .disabled:
            theme.colors.colorActionSupportDisabled
        }
    }

    private var outlinedColor: MultipleColorSemanticTokens? {
        if status == .readOnly {
            theme.colors.colorActionSupportDisabled
        } else {
            nil
        }
    }
}
