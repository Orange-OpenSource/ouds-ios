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

struct SkeletonModifier<S: SwiftUI.Shape>: ViewModifier {

    let securityMargin: Bool
    let shape: S

    @Environment(\.skeletonState) private var skeletonState

    func body(content: Content) -> some View {
        if skeletonState == nil {
            content
        } else {
            content
                .hidden()
                .overlay {
                    GeometryReader { geometry in
                        OUDSSkeleton(securityMargin: securityMargin, shape: shape)
                            .frame(width: geometry.size.width, height: geometry.size.height)
                    }
                }
                .clipShape(shape)
        }
    }
}
