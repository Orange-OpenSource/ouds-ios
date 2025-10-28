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

import OUDSTokensRaw
import SwiftUI

/// Kind of semantic tokens which will wrap a combination of ``ColorModeSemanticToken`` depending to *color scheme* (i.e. light mode or dark mode).
/// Kind of composite token with multiple values, but not named "composite" because this word is already used in the design system.
///
/// ```swift
///         // There are some components which must be used in colored surface providing a specific background color.
///         // There are several cases depending to the color scheme and the monochrome mode:
///         // - Non monochome for components, light and dark modes to apply on texts
///         // - Monochrome on components, light and dark modes to apply on texts
///         // - Monochrome on components, light and dark modes reversed
///         // It can result with several combinations:
///
///         // Use the "monochrome light" mode anytime
///         var onBrandPrimaryLight: ColorModeSemanticToken { ColorModeRawTokens.monochromeLight }
///         var onBrandPrimaryDark: ColorModeSemanticToken { ColorModeRawTokens.monochromeLight }
///         var onBrandPrimary: MultipleColorModeSemanticTokens {
///             MultipleColorModeSemanticToken("some unique name", onBrandPrimary)
///         }
///
///         // Use light mode in light soclor scheme, dark mode in dark color scheme
///         var onStatusNegativeMutedLight: BackgroundSurfaceColorSemanticToken { ColorModeRawTokens.light }
///         var onStatusNegativeMutedDark: BackgroundSurfaceColorSemanticToken { ColorModeRawTokens.dark }
///         var onStatusNegativeMuted: MultipleColorModeSemanticTokens {
///             MultipleColorModeSemanticToken("some unique name",
///                                             light: onStatusNegativeMutedLight,
///                                             dark: onStatusNegativeMutedDark)
///         }
///
///         // Use if light color scheme the monochrome dark mode, and if dark color scheme the monochrome light mode
///         var onStatusNeutralEmphasizedLight: ColorModeSemanticToken { ColorModeRawTokens.monochromeDark }
///         var onStatusNeutralEmphasizedDark: ColorModeSemanticToken { ColorModeRawTokens.monochromeLight }
///         var onStatusNeutralEmphasized: MultipleColorModeSemanticTokens {
///             MultipleColorModeSemanticToken("some unique name",
///                                             light: onStatusNeutralEmphasizedLight,
///                                             dark: onStatusNeutralEmphasizedDark)
///         }
/// ```
///
/// - Since: 0.13.0
public final class MultipleColorModeSemanticTokens: NSObject, Sendable {

    /// Because such tokens can have the same light and dark values, a name can be used to identity them
    public let name: String

    /// For **light** mode scheme
    public let light: ColorModeSemanticToken

    /// For **dark** mode scheme
    public let dark: ColorModeSemanticToken

    /// Initializes a new color mode color multiple semantic token with the same value for light and dark modes
    /// - Parameters:
    ///    - name: A unique name for the token
    ///    - value: The `ColorModeSemanticToken` to apply wether the device is in *light* and *dark* mode
    public init(_ name: String, _ value: ColorModeSemanticToken) {
        self.name = name
        light = value
        dark = value
    }

    /// Initializes a new color mode multiple semantic token with two values
    /// - Parameters:
    ///    - name: A unique name for the token
    ///    - light: The `ColorModeSemanticToken` to apply if device in *light* mode
    ///    - dark: The `ColorModeSemanticToken` to apply if device in *dark* mode
    public init(_ name: String, light: ColorModeSemanticToken, dark: ColorModeSemanticToken) {
        self.name = name
        self.light = light
        self.dark = dark
    }

    deinit {}

    /// Returns `true` if `self` and `object` has the same `name` and with `object`
    /// as a `MultipleColorModeSemanticTokens`. Otherwise returns `false`.
    /// `isEqual` override is preferred for `NSObject`.
    override public func isEqual(_ object: Any?) -> Bool {
        guard let other = object as? MultipleColorModeSemanticTokens else { return false }
        return name == other.name
    }

    /// Because some color semantic tokens can be forbidden values, making some color mode semantic tokens undefined,
    /// this helpers returns a flag saying if its the case or not
    /// - Returns: True if contains at least one udnefined color mode semenatic tokens, false otherwise
    public func hasUndefinedValue() -> Bool {
        light == ColorModeRawTokens.undefined || dark == ColorModeRawTokens.undefined
    }
}
