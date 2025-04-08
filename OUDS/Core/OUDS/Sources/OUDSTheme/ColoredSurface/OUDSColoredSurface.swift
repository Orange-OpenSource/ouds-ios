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

/// Defines all colors available as background
public enum OUDSBackgroundSurfaceColor {
    // swiftlint:disable missing_docs
    case brandPrimary
    case statusAccentEmphasized
    case statusAccentMuted
    case statusInfoEmphasized
    case statusInfoMuted
    case statusNegativeEmphasized
    case statusNegativeMuted
    case statusNeutralEmphasized
    case statusNeutralMuted
    case statusPositiveEmphasized
    case statusPositiveMuted
    case statusWarningEmphasized
    case statusWarningMuted
    // swiftlint:enable missing_docs
}

/// Used to define if a content is used on a colored surface.
///
/// It applies the `color` to the background and set the `oudsColoredSurface`
/// environment variable to *true*. This variable is usefull, for example, to change
/// the style of a component according to its environment (example: monochrome mode on `OUDSButton`).
///
/// ```swift
///   OUDSColoredSurface(color: .brandPrimary) {
///      OUDSButton(icon: Image("ic_heart"), hierarchy: .strong, state: .default) {}
///   }
/// ```
///
/// - Since: 0.10.0
public struct OUDSColoredSurface<Content>: View where Content: View {

    // MARK: Stored Properties

    let backgroundSurfaceColor: OUDSBackgroundSurfaceColor
    let content: () -> Content

    // MARK: Initializer

    /// Create a view with background color applied on the `content` view.
    ///
    /// - Parameters:
    ///     - color: The color applied as background on the content view
    ///     - content: The content view builder
    public init(color: OUDSBackgroundSurfaceColor, @ViewBuilder content: @escaping () -> Content) {
        self.backgroundSurfaceColor = color
        self.content = content
    }

    // MARK: Body

    public var body: some View {
        content().modifier(OUDSColoredSurfaceModifier(backgroundSurfaceColor: backgroundSurfaceColor))
    }
}

extension View {

    /// Helper to set the current view on colored surface based on ``OUDSColoredSurface``.
    ///
    /// - Parameter color: The color applied as background on the current view.
    public func oudsColoredSurface(color: OUDSBackgroundSurfaceColor) -> some View {
        self.modifier(OUDSColoredSurfaceModifier(backgroundSurfaceColor: color))
    }
}

private struct OUDSColoredSurfaceModifier: ViewModifier {

    // MARK: - Stored properties

    let backgroundSurfaceColor: OUDSBackgroundSurfaceColor
    @Environment(\.theme) private var theme
    @Environment(\.colorScheme) private var colorScheme

    // MARK: - Body

    public func body(content: Content) -> some View {
        content
            .background(useColorToken.color(for: colorScheme))
            .environment(\.oudsUseMonochrome, useMono)
            .environment(\.oudsOnColoredSurface, true)
            .environment(\.colorScheme, useColorScheme)
    }

    // MARK: - The associated sementic token color

    private var useColorToken: MultipleColorSemanticTokens {
        switch backgroundSurfaceColor {
        case .brandPrimary:
            theme.colors.colorSurfaceBrandPrimary
        case .statusAccentEmphasized:
            theme.colors.colorSurfaceStatusAccentEmphasized
        case .statusAccentMuted:
            theme.colors.colorSurfaceStatusAccentMuted
        case .statusInfoEmphasized:
            theme.colors.colorSurfaceStatusInfoEmphasized
        case .statusInfoMuted:
            theme.colors.colorSurfaceStatusInfoMuted
        case .statusNegativeEmphasized:
            theme.colors.colorSurfaceStatusNegativeEmphasized
        case .statusNegativeMuted:
            theme.colors.colorSurfaceStatusNegativeMuted
        case .statusNeutralEmphasized:
            theme.colors.colorSurfaceStatusNeutralEmphasized
        case .statusNeutralMuted:
            theme.colors.colorSurfaceStatusNeutralMuted
        case .statusPositiveEmphasized:
            theme.colors.colorSurfaceStatusPositiveEmphasized
        case .statusPositiveMuted:
            theme.colors.colorSurfaceStatusPositiveMuted
        case .statusWarningEmphasized:
            theme.colors.colorSurfaceStatusWarningEmphasized
        case .statusWarningMuted:
            theme.colors.colorSurfaceStatusWarningMuted
        }
    }

    // MARK: - The colorScheme to use

    private var useColorScheme: ColorScheme {
        switch backgroundSurfaceColor {
            // Force light
        case .brandPrimary,
                .statusAccentEmphasized,
                .statusInfoEmphasized,
                .statusPositiveEmphasized,
                .statusWarningEmphasized:
            return .light

            // Reverse
        case .statusNegativeEmphasized, .statusNeutralEmphasized:
            if colorScheme == .dark {
                return .light
            } else {
                return .dark
            }

            // Follow device configuration
        case .statusAccentMuted,
                .statusInfoMuted,
                .statusNegativeMuted,
                .statusPositiveMuted,
                .statusNeutralMuted,
                .statusWarningMuted:
            return colorScheme
        }
    }

    // MARK: - The monochrome flag

    private var useMono: Bool {
        switch backgroundSurfaceColor {
        case .brandPrimary,
                .statusAccentEmphasized,
                .statusInfoEmphasized,
                .statusPositiveEmphasized,
                .statusWarningEmphasized,
                .statusNegativeEmphasized:
            return true
        case .statusNeutralEmphasized,
                .statusAccentMuted,
                .statusInfoMuted,
                .statusNegativeMuted,
                .statusPositiveMuted,
                .statusNeutralMuted,
                .statusWarningMuted:
            return false
        }
    }
}
