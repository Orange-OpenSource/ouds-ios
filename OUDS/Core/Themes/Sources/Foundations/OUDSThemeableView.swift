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

// MARK: - Environement values

private struct ThemeContractEnvironmentKey: EnvironmentKey {

    static let defaultValue: OUDSThemeContract = OUDSDefaultTheme()
}

extension EnvironmentValues {

    public var theme: OUDSThemeContract {
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
/// By default the applied theme is `OUDSDefaultTheme`.
public struct OUDSThemeableView<Content>: View where Content: View {

    private let theme: OUDSThemeContract
    private let content: () -> Content

    public init(theme: OUDSThemeContract, @ViewBuilder content: @escaping () -> Content) {
        self.theme = theme
        self.content = content
    }

    public var body: some View {
        content()
            .environment(\.theme, theme)
    }
}
