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

/// An operator to make for example comparisons between ``FontCompositeRawToken``
infix operator <|

/// In the *Figma* global design system, composite tokens are defined for font-related things.
/// Composite tokens are tokens defined in *Figma* by other tokens.
/// Here a *font* thing is caracterized by a *font size*, a *line height*, a *font weight* and *letter spacing* values.
/// All these elements are *raw tokens*, and together define a *composite raw token* for *font* thing.
///
/// - Since: 0.8.0
public struct FontCompositeRawToken: Equatable, Sendable {

    // Font family is not included here because this is the only thing which can vary

    /// The font size to apply for the texts
    public let size: FontSizeRawToken

    /// The line height to apply on texts
    public let lineHeight: FontLineHeightRawToken

    /// The font weight to associate with the font family
    public let weight: FontWeightRawToken

    /// The font letter spacing to associated with the font family
    public let letterSpacing: FontLetterSpacingRawToken

    /// Operator which will return `true` if `lhs` is smaller than `rhs`.
    /// By "smaller" we mean smaller `size` and smaller or equal `lineHeight` and `weight`.
    ///
    /// `letterSpacing` is not managed here because these values are, in fact, computed in Figma side
    /// and can vary a lot because depend to two factors and the result can increase and decrease even if
    /// these composite tokens are bigger or not. In few words, this property is not trustable.
    ///
    /// - Parameters:
    ///    - lhs: The font composite token we expect to be smaller than `rhs`
    ///    - rhs: The font composite token we expect to be bigger than `lhs`
    /// - Returns Bool: `true` if `lhs` smaller than `rhs`, `false` otherwise
    public static func <| (lhs: FontCompositeRawToken, rhs: FontCompositeRawToken) -> Bool {
        lhs.size < rhs.size
            && lhs.lineHeight <= rhs.lineHeight
            && lhs.weight <= rhs.weight
    }
}
