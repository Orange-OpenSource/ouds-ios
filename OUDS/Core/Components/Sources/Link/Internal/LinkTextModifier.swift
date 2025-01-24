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

struct LinkTextModifier: ViewModifier {

    @Environment(\.theme) private var theme
    @Environment(\.colorScheme) private var colorScheme

    let size: OUDSLink.Size
    let layout: OUDSLink.Layout
    let state: InternalLinkState

    func body(content: Content) -> some View {
        Group {
            switch size {
            case .small:
                content.typeLabelStrongMedium(theme)
            case .medium:
                content.typeLabelStrongLarge(theme)
            }
        }
        .multilineTextAlignment(.leading)
        .modifier(LinkUnderlineModifier(layout: layout, state: state))
    }
}

struct LinkUnderlineModifier: ViewModifier {

    @State private var textWidth: CGFloat = 0
    let layout: OUDSLink.Layout
    let state: InternalLinkState

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
        case .arrow:
            return state == .hover || state == .pressed
        case .textOnly:
            return true
        case .iconAndText:
            return state == .hover || state == .pressed
        }
    }
}

private struct SizePreferenceKey: @preconcurrency PreferenceKey {
    @MainActor static var defaultValue: CGSize = .zero

    static func reduce(value _: inout CGSize, nextValue _: () -> CGSize) {}
}

// swiftlint:disable strict_fileprivate
extension View {
    fileprivate func readSize(onChange: @escaping (CGSize) -> Void) -> some View {
        background(
            GeometryReader { geometryProxy in
                Color.clear
                    .preference(key: SizePreferenceKey.self, value: geometryProxy.size)
            }
        )
        .onPreferenceChange(SizePreferenceKey.self, perform: onChange)
    }
}
// swiftlint:enable strict_fileprivate
