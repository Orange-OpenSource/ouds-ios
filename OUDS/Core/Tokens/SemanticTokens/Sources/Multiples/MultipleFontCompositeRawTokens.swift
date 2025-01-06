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
import SwiftUICore

/// Kind of semantic tokens which will wrap a combination of `FontCompositeRawToken` depending to size classes.
/// Kind of composite token with multiple values, but not named "composite" because this word is already used in the design system.
/// Allows to gather the multiple-value tokens from *Figma* inside one object.
/// If a font token exists with its value depending to the size class, it must be packed in such ``MultipleFontCompositeRawTokens``.
///
/// ```swift
///         // Assuming in Figma with have a font semantic token typeDisplayLarge,
///         // with values depending to size class. These values are defined as font composite raw tokens.
///         let typeBold850 = FontCompositeRawToken(size: fontSize850, lineHeight: fontLineHeight1050, weight: fontWeight700, letterSpacing: fontLetterSpacing850)
///         let typeBold1450 = FontCompositeRawToken(size: fontSize1450, lineHeight: fontLineHeight1850, weight: fontWeight700, letterSpacing: fontLetterSpacing1450)
///
///         // Then the develoment team declares an "higher" level font semantic token
///         // inside FontCompositeSemanticTokens protocol,
///         // and defined inside OUDSTheme+FontCompositeSemanticTokens extension
///         var typeDisplayLarge: MultipleFontCompositeRawTokens {
///             MultipleFontCompositeRawTokens(compact: FontRawTokens.typeBold850, regular: FontRawTokens.typeBold1450)
///         }
///
///         // If the same font is used whatever the size class is
///         var typeDisplayLarge: MultipleFontCompositeRawTokens { MultipleFontCompositeRawTokens(FontRawTokens.typeBold650) }
///
///         // The theme exposes both generated elevation semantic tokens and "crafted" higher level elevation semantic tokens.
///         // It is recommended to use the higher level version as it is less error-prone.
/// ```
///
/// The case of this ``MultipleFontCompositeRawTokens`` is quite particular because in fact it contains `FontCompositeRawToken`
/// (i.e. raw tokens) instead of semantic tokens.
/// In fact there is not "font composite semantic tokens" defined in the *Figma* kit.
///
/// - Since: 0.8.0
public final class MultipleFontCompositeRawTokens: NSObject, Sendable {

    /// For **extra-compact** and **compact** viewports
    public let compact: FontCompositeRawToken

    /// For **regular** and **medium** viewports
    public let regular: FontCompositeRawToken

    /// Initializes a new font composite semantic token.
    /// - Parameter unique: The `FontCompositeRawToken` to apply for both in *compact* and *regular* modes
    public init(_ unique: FontCompositeRawToken) {
        self.compact = unique
        self.regular = unique
    }

    /// Initializes a new font composite semantic token.
    /// - Parameters:
    ///    - compact: The `FontCompositeRawToken` to apply if device in *compact* mode
    ///    - regular: The `FontCompositeRawToken` to apply if device in *regular* mode
    public init(compact: FontCompositeRawToken, regular: FontCompositeRawToken) {
        self.compact = compact
        self.regular = regular
    }

    deinit { }

    /// Returns `true` if `self` and `object` has the same `compact` and `regular` values and with `object`
    /// as a `MultipleFontCompositeRawTokens`. Otherwise returns `false`.
    /// `isEqual` override is preferred for `NSObject`.
    override public func isEqual(_ object: Any?) -> Bool {
        guard let object = object as? MultipleFontCompositeRawTokens else { return false }
        return self.compact == object.compact && self.regular == object.regular
    }

    /// Returns the composite raw token of font to use according to the `userInterfaceSizeClass` (i.e. `compact` or `regular`)
    /// - Parameter userInterfaceSizeClass: The user interface size class
    /// - Returns: The composite raw token to use (of type `FontCompositeRawToken`)
    public func fontToken(for userInterfaceSizeClass: UserInterfaceSizeClass) -> FontCompositeRawToken {
        userInterfaceSizeClass == .compact ? compact : regular
    }
}
