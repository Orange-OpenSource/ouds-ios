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

/// Kind of semantic tokens which will wrap a combination of `TypographyCompositeRawToken` depending to size classes.
/// Kind of composite token with multiple values, but not named "composite" because this word is already used in the design system.
/// Allows to gather the multiple-value tokens from *Figma* inside one object.
/// If a typography token exists with its value depending to the size class, it must be packed in such ``MultipleTypographyTokens``.
///
/// ```swift
///         // Assuming in Figma with have a typography semantic token typeDisplayLarge,
///         // with values depending to size class. These values are defined as typography composite raw tokens.
///         let typeBold850 = TypographyCompositeRawToken(size: fontSize850, lineHeight: fontLineHeight1050, weight: fontWeight700, letterSpacing: fontLetterSpacing850)
///         let typeBold1450 = TypographyCompositeRawToken(size: fontSize1450, lineHeight: fontLineHeight1850, weight: fontWeight700, letterSpacing: fontLetterSpacing1450)
///
///         // Then the develoment team declares an "higher" level typography semantic token
///         // inside TypographyCompositeSemanticTokens protocol,
///         // and defined inside OUDSTheme+TypographyCompositeSemanticTokens extension
///         var typeDisplayLarge: MultipleTypographyTokens { MultipleTypographyTokens(compact: TypographyRawTokens.typeBold850, regular: TypographyRawTokens.typeBold1450) }
///
///         // If the same typography is used whatever the size class is
///         var typeDisplayLarge: MultipleTypographyTokens { MultipleTypographyTokens(TypographyRawTokens.typeBold650) }
///
///         // The theme exposes both generated elevation semantic tokens and "crafted" higher level elevation semantic tokens.
///         // It is recommended to use the higher level version as it is less error-prone.
/// ```
///
/// The case of this ``MultipleTypographyTokens`` is quite particular because in fact it contains `TypographyCompositeRawToken` (i.e. raw tokens) instead of semantic tokens.
/// In fact there is not "typography composite semantic tokens" defined in the *Figma* kit.
/// 
public final class MultipleTypographyTokens: NSObject, Sendable {

    /// For **extra-compact** and **compact** viewports
    public let compact: TypographyCompositeRawToken

    /// For **regular** and **medium** viewports
    public let regular: TypographyCompositeRawToken

    /// Initializes a new typography composite semantic token.
    /// - Parameter unique: The `TypographyCompositeRawToken` to apply for both in *compact* and *regular* modes
    public init(_ unique: TypographyCompositeRawToken) {
        self.compact = unique
        self.regular = unique
    }

    /// Initializes a new typography composite semantic token.
    /// - Parameters:
    ///    - compact: The `TypographyCompositeRawToken` to apply if device in *compact* mode
    ///    - regular: The `TypographyCompositeRawToken` to apply if device in *regular* mode
    public init(compact: TypographyCompositeRawToken, regular: TypographyCompositeRawToken) {
        self.compact = compact
        self.regular = regular
    }

    deinit { }

    /// Returns `true` if `self` and `object` has the same `compact` and `regular` values and with `object`
    /// as a `MultipleTypographyTokens`. Otherwise returns `false`.
    /// `isEqual` override is preferred for `NSObject`.
    override public func isEqual(_ object: Any?) -> Bool {
        guard let object = object as? MultipleTypographyTokens else { return false }
        return self.compact == object.compact && self.regular == object.regular
    }

    /// Returns the composite raw token of typography to use according to the `userInterfaceSizeClass` (i.e. `compact` or `regular`)
    /// - Parameter userInterfaceSizeClass: The user interface size class
    /// - Returns: The composite raw token to use (of type `TypographyCompositeRawToken`)
    public func typographyToken(for userInterfaceSizeClass: UserInterfaceSizeClass) -> TypographyCompositeRawToken {
        userInterfaceSizeClass == .compact ? compact : regular
    }
}
