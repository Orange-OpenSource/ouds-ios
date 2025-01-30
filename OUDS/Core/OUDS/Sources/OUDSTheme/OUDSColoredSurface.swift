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

/// Used to define if a content is used on a colored surface.
///
/// It applies the `color` to the background and set the `oudsOnColoredSurface`
/// environment variable to *true*. This variable is usefull, for example, to change
/// the style of a component according to its environment.
///
/// ```swift
///   OUDSColoredSurface(color: .green) {
///      OUDSButton(icon: Image("ic_heart"), hierarchy: .strong, state: .nomal) {}
///   }
/// ```
///
/// - Since: 0.10.0
public struct OUDSColoredSurface<Content>: View where Content: View {

    // MARK: Stored Properties

    let color: Color
    let content: () -> Content

    // MARK: Initializer

    /// Create a view with background `color` applied on the `content` view.
    ///
    /// - Parameters:
    ///     - color: The color applied as background on the content view
    ///     - content: The content view builder
    public init(color: Color, @ViewBuilder content: @escaping () -> Content) {
        self.color = color
        self.content = content
    }

    // MARK: Body

    public var body: some View {
        content()
            .background(color)
            .environment(\.oudsOnColoredSurface, true)
    }
}

extension View {

    /// Helper to set the current view on colored surface based on ``OUDSColoredSurface``.
    ///
    /// - Parameter color: The color applied as background on the current view.
    public func oudsColoredSurface(color: Color) -> some View {
        self
            .background(color)
            .environment(\.oudsOnColoredSurface, true)
    }
}

// MARK: - Environment values

private struct ColoredSurfaceClassEnvironmentKey: EnvironmentKey {

    static let defaultValue = false
}

extension EnvironmentValues {

    /// Updated by the ``OUDSColoredSurface``, the value tells if the current view is
    /// on a colored surface or not.
    public var oudsOnColoredSurface: Bool {
        get {
            self[ColoredSurfaceClassEnvironmentKey.self]
        }
        set {
            self[ColoredSurfaceClassEnvironmentKey.self] = newValue
        }
    }
}
