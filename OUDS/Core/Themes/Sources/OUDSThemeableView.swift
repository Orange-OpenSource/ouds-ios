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

    static let defaultValue: ThemeContract = OUDSDefaultTheme()
}

extension EnvironmentValues {

    public var theme: ThemeContract {
        get {
            self[ThemeContractEnvironmentKey.self]
        }
        set {
            self[ThemeContractEnvironmentKey.self] = newValue
        }
    }
}

// MARK: - Themeable View

public struct OUDSThemeableView<Content>: View where Content: View {

    private let theme: ThemeContract
    private let content: () -> Content

    public init(theme: ThemeContract, @ViewBuilder content: @escaping () -> Content) {
        self.theme = theme
        self.content = content
    }

    public var body: some View {
        content()
            .environment(\.theme, theme)
    }
}
