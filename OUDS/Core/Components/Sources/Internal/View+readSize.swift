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

// MARK: - Sizes management

private struct SizePreferenceKey: @preconcurrency PreferenceKey {
    @MainActor static var defaultValue: CGSize = .zero

    static func reduce(value _: inout CGSize, nextValue _: () -> CGSize) {}
}

extension View {

    /// Use to read the size of the current view (usefull to read the width of text)
    ///
    /// - Parameter onChange: Called when the size changes
    @MainActor
    func readSize(onChange: @escaping (CGSize) -> Void) -> some View {
        background(
            GeometryReader { geometryProxy in
                Color.clear
                    .preference(key: SizePreferenceKey.self, value: geometryProxy.size)
            }
        )
        .onPreferenceChange(SizePreferenceKey.self, perform: onChange)
    }
}
