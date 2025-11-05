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

struct LabelContainer: View {

    // MARK: Properties

    let label: String
    let status: OUDSTextInput.Status
    let interactionState: TextInputInteractionState
    let position: Position

    @Environment(\.theme) private var theme

    // MARK: Enums

    enum Position {
        case top
        case middle
    }

    // MARK: Body

    var body: some View {
        if !label.isEmpty {
            switch position {
            case .top:
                content.labelDefaultSmall(theme)
            case .middle:
                content.labelDefaultLarge(theme)
            }
        }
    }

    // MARK: Helper

    private var content: some View {
        Text(label)
            .lineLimit(numberOfLines)
            .minimumScaleFactor(1.0)
            .oudsForegroundColor(color)
            .frame(maxWidth: .infinity, alignment: .leading)
            .accessibilityHidden(true)
    }

    private var numberOfLines: Int {
        switch position {
        case .top:
            1
        case .middle:
            2
        }
    }

    private var color: MultipleColorSemanticTokens {
        switch status {
        case .enabled, .loading, .readOnly:
            theme.colors.contentMuted
        case .error:
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
