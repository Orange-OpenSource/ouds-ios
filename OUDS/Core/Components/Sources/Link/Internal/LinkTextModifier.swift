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

import SwiftUI

// MARK: - Link Text Modifier

struct LinkTextModifier: ViewModifier {

    // MARK: - Properties

    let interactionState: InteractionState
    let size: OUDSLink.Size
    let layout: OUDSLink.Layout

    @Environment(\.theme) private var theme

    // MARK: - Body

    func body(content: Content) -> some View {
        Group {
            switch size {
            case .small:
                content.typeLabelStrongMedium(theme)
            case .`default`:
                content.typeLabelStrongLarge(theme)
            }
        }
        .multilineTextAlignment(.leading)
        .modifier(LinkUnderlineModifier(interactionState: interactionState, layout: layout))
    }
}

// MARK: - Link Underline Modifier

private struct LinkUnderlineModifier: ViewModifier {

    let interactionState: InteractionState
    let layout: OUDSLink.Layout

    @State private var textWidth: CGFloat = 0

    func body(content: Content) -> some View {
        if #available(iOS 16.0, *) {
            content.underline(underlineActive, pattern: .solid)
        } else {
            if underlineActive {
                VStack(spacing: 0) {
                    content
                        .readSize { size in
                            textWidth = size.width
                        }
                    Rectangle().frame(width: textWidth, height: 1)
                }
            } else {
                content
            }
        }
    }

    private var underlineActive: Bool {
        switch layout {
        case .indicator:
            return interactionState == .hover || interactionState == .pressed
        case .textOnly:
            return true
        case .iconAndText:
            return interactionState == .hover || interactionState == .pressed
        }
    }
}
