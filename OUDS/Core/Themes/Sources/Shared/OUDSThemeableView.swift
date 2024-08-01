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

import Foundation
import SwiftUI
import OUDSTheme

// MARK: - Environment values

private struct ThemeContractEnvironmentKey: EnvironmentKey {

    static let defaultValue: OUDSTheme = OUDSTheme()
}

extension EnvironmentValues {

    public var theme: OUDSTheme {
        get {
            self[ThemeContractEnvironmentKey.self]
        }
        set {
            self[ThemeContractEnvironmentKey.self] = newValue
        }
    }
}

// MARK: - Themeable View

/// This a a kind of root view to add at the top level of your views tree so as to define
/// as an environement varable, the theme which will be applied.
/// By default the applied theme is `OUDSTheme`.
public struct OUDSThemeableView<Content>: View where Content: View {

    private let theme: OUDSTheme
    private let content: () -> Content

    public init(theme: OUDSTheme, @ViewBuilder content: @escaping () -> Content) {
        self.theme = theme
        self.content = content
    }

    public var body: some View {
        content()
            .environment(\.theme, theme)
    }
}
