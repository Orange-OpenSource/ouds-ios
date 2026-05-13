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

/// This is the trailing container of the `ListItemContent`.
///
struct ListItemTrailingContainer<Content: View>: View {

    // MARK: - Stored properties

    let interactionState: InteractionState
    @ViewBuilder
    let content: () -> Content

    @Environment(\.theme) private var theme

    // MARK: Body

    var body: some View {
        // TODO: check if is EmptyView work well
        if !(content() is EmptyView) {
            HStack(alignment: .center, spacing: 0) {
                content()
            }
        }
    }

    // MARK: - Colors

    private var color: MultipleColorSemanticToken {
        switch interactionState {
        case .enabled, .pressed, .hover, .readOnly:
            theme.colors.contentDefault
        case .disabled:
            theme.colors.contentDisabled
        }
    }
}
