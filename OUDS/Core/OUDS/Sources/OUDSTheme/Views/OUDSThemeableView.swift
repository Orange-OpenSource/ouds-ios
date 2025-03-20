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

// MARK: - Environment values

private struct ThemeEnvironmentKey: EnvironmentKey {

    /// ``OUDSTheme`` is kind of abstract, no instance can be done because of providers to define at theme levels
    static let defaultValue: OUDSTheme? = nil
}

extension EnvironmentValues {

    // swiftlint:disable strict_fileprivate
    /// The `OUDSTheme` instance exposed as en environment values across the library.
    /// Because at the level of the package we don't have any existing theme, this instance is optional
    fileprivate var _theme: OUDSTheme? {
        get {
            self[ThemeEnvironmentKey.self]
        }
        set {
            self[ThemeEnvironmentKey.self] = newValue
        }
    }
    // swiftlint:enable strict_fileprivate

    // swiftlint:disable force_unwrapping
    /// The `OUDSTheme` applied to the application
    public var theme: OUDSTheme {
        _theme!
    }
    // swiftlint:enable force_unwrapping
}

// MARK: - Themeable View

/// This is a kind of root `SwiftUI.View` to add at the top level of your views tree so as to define
/// as an environement variable the theme which will be applied.
/// Any theme to apply must be a child of `OUDSTheme`, direct or not.
///
/// To use this special `View` and apply the *theme*, you must wrap your app root view inside, like:
///
/// ```swift
///     // Make imports
///     import OUDS // For OUDSThemeableView
///     import OUDSThemesOrange // For OrangeTheme
///
///     // Add themeable view to your root view to use the OrangeTheme
///     OUDSThemeableView(theme: OrangeTheme()) {
///         YourRootView()
///     }
///
///     // Or use your custom theme if you want
///     OUDSThemeableView(theme: YourCustomTheme()) {
///         YourRootView()
///     }
/// ```
///
/// - Since: 0.8.0
public struct OUDSThemeableView<Content>: View where Content: View {

    private let theme: OUDSTheme
    private let content: () -> Content

    public init(theme: OUDSTheme, @ViewBuilder content: @escaping () -> Content) {
        self.theme = theme
        self.content = content
    }

    public var body: some View {
        content()
            .environment(\._theme, theme)
            .modifier(UserInterfaceSizeClassModifier())
    }
}

/// Private modifier used to set in environment the computed orizontal and vertical size classes.
private struct UserInterfaceSizeClassModifier: ViewModifier {

    @Environment(\.horizontalSizeClass) private var horizontalSizeClass
    @Environment(\.verticalSizeClass) private var verticalSizeClass

    /// According to Apple guidelines, this value of 390 is the limit defining extract compact size classes if lower and compact if higher or equal
    private static let extraCompactMaxWidth = 390.0

    private var horizontalUserInterfaceSizeClass: OUDSUserInterfaceSizeClass {
        if UIScreen.main.bounds.width < Self.extraCompactMaxWidth {
            return .extraCompact
        } else {
            return horizontalSizeClass == .compact ? .compact : .regular
        }
    }
    private var verticalUserInterfaceSizeClass: OUDSUserInterfaceSizeClass {
        if UIScreen.main.bounds.width < Self.extraCompactMaxWidth {
            return .extraCompact
        } else {
            return verticalSizeClass == .compact ? .compact : .regular
        }
    }

    func body(content: Content) -> some View {
        content
            .environment(\.oudsHorizontalSizeClass, horizontalUserInterfaceSizeClass)
            .environment(\.oudsVerticalSizeClass, verticalUserInterfaceSizeClass)
    }
}
