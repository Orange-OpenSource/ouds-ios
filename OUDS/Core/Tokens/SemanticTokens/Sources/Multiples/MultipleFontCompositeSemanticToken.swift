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

/// Kind of semantic tokens which will wrap a combination of `FontCompositeSemanticToken` depending to size classes.
/// Kind of composite token with multiple values, but not named "composite" because this word is already used in the design system.
/// Allows to gather the multiple-value tokens from *Figma* inside one object.
/// If a font token exists with its value depending to the size class, it must be packed in such ``MultipleFontCompositeSemanticTokens``.
///
/// ```swift
///         // Assuming in Figma with have a font semantic token displayLarge,
///         // with values depending to size class. These values are defined as font composite raw tokens.
///         let bold850 = FontCompositeSemanticToken(size: size850, lineHeight: lineHeight1050, weight: weight700, letterSpacing: letterSpacing850)
///         let bold1450 = FontCompositeSemanticToken(size: size1450, lineHeight: lineHeight1850, weight: weight700, letterSpacing: letterSpacing1450)
///
///         // Then the develoment team declares an "higher" level font semantic token
///         // inside FontCompositeSemanticTokens protocol,
///         // and defined inside OrangeTheme+FontCompositeSemanticTokens extension
///         var displayLarge: MultipleFontCompositeSemanticTokens {
///             MultipleFontCompositeSemanticTokens(compact: bold850, regular: bold1450)
///         }
///
///         // If the same font is used whatever the size class is
///         var displayLarge: MultipleFontCompositeSemanticTokens { MultipleFontCompositeSemanticTokens(bold650) }
///
///         // The theme exposes both generated elevation semantic tokens and "crafted" higher level elevation semantic tokens.
///         // It is recommended to use the higher level version as it is less error-prone.
/// ```
///
/// The case of this ``MultipleFontCompositeSemanticTokens`` is quite particular because in fact it contains `FontCompositeSemanticToken`
/// (i.e. raw tokens) instead of semantic tokens.
/// In fact there is not "font composite semantic tokens" defined in the *Figma* kit.
///
/// - Since: 0.22.0
public final class MultipleFontCompositeSemanticToken: NSObject, Sendable, Comparable {

    /// For **extra-compact** and **compact** viewports
    public let compact: FontCompositeSemanticToken

    /// For **regular** and **medium** viewports
    public let regular: FontCompositeSemanticToken

    /// Initializes a new font composite semantic token.
    ///
    /// - Parameter unique: The `FontCompositeSemanticToken` to apply for both in *compact* and *regular* modes
    public init(_ unique: FontCompositeSemanticToken) {
        compact = unique
        regular = unique
    }

    /// Initializes a new font composite semantic token.
    ///
    /// - Parameters:
    ///    - compact: The `FontCompositeSemanticToken` to apply if device in *compact* mode
    ///    - regular: The `FontCompositeSemanticToken` to apply if device in *regular* mode
    public init(compact: FontCompositeSemanticToken, regular: FontCompositeSemanticToken) {
        self.compact = compact
        self.regular = regular
    }

    deinit {}

    /// Returns `true` if `self` and `object` has the same `compact` and `regular` values and with `object`
    /// as a `MultipleFontCompositeSemanticTokens`. Otherwise returns `false`.
    /// `isEqual` override is preferred for `NSObject`.
    override public func isEqual(_ object: Any?) -> Bool {
        guard let object = object as? MultipleFontCompositeSemanticToken else { return false }
        return compact == object.compact && regular == object.regular
    }

    /// Returns the composite raw token of font to use according to the `userInterfaceSizeClass` (i.e. `compact` or `regular`)
    ///
    /// - Parameter userInterfaceSizeClass: The user interface size class
    /// - Returns: The composite raw token to use (of type `FontCompositeSemanticToken`)
    public func fontToken(for userInterfaceSizeClass: UserInterfaceSizeClass) -> FontCompositeSemanticToken {
        userInterfaceSizeClass == .compact ? compact : regular
    }

    // MARK: - Comparable

    /// Operator which will return `true` if `lhs` is smaller than `rhs`.
    /// By "smaller" we mean smaller `FontCompositeSemanticToken`
    ///
    /// - Parameters:
    ///    - lhs: The multiple font composite semantic token we expect to be smaller than `rhs`
    ///    - rhs: The multiple font composite semantic token we expect to be bigger than `lhs`
    /// - Returns Bool: `true` if `lhs` smaller than `rhs`, `false` otherwise
    public static func < (lhs: MultipleFontCompositeSemanticToken, rhs: MultipleFontCompositeSemanticToken) -> Bool {
        let lhsCompact = lhs.compact, lhsRegular = lhs.regular
        let rhsCompact = rhs.compact, rhsRegular = rhs.regular

        return (lhsCompact <| rhsCompact) && (lhsRegular <| rhsRegular)
    }
}
