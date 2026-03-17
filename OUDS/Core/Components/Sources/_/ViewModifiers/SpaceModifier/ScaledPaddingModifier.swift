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

// MARK: - Horizontal Modifier

struct HorizontalModifier: ViewModifier {

    let edge: Edge.Set
    let space: MultipleSpaceSemanticToken

    @Environment(\.horizontalSizeClass) private var horizontalSizeClass

    func body(content: Content) -> some View {
        if let width {
            content.padding(width.0, width.1)
        } else {
            content
        }
    }

    private var width: (Edge.Set, CGFloat)? {
        switch edge {
        case .leading, .trailing:
            (edge, CGFloat(space.dimension(for: horizontalSizeClass ?? .regular)))
        case .all, .horizontal:
            (.horizontal, CGFloat(space.dimension(for: horizontalSizeClass ?? .regular)))
        default:
            nil
        }
    }
}

// MARK: - Vertical Modifier

struct VerticalModifier: ViewModifier {

    let edge: Edge.Set
    let space: MultipleSpaceSemanticToken

    @Environment(\.verticalSizeClass) private var verticalSizeClass

    func body(content: Content) -> some View {
        if let height {
            content.padding(height.0, height.1)
        } else {
            content
        }
    }

    private var height: (Edge.Set, CGFloat)? {
        switch edge {
        case .top, .bottom:
            (edge, CGFloat(space.dimension(for: verticalSizeClass ?? .regular)))
        case .all, .vertical:
            (.vertical, CGFloat(space.dimension(for: verticalSizeClass ?? .regular)))
        default:
            nil
        }
    }
}
