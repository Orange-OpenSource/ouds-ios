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

import OUDSFoundations

/// An operator to make for example comparisons between `TypographyCompositeRawToken`
infix operator <|

/// Composite raw tokens are here to pack a set of specific values according to the global design system tool.
/// Here a *typography* is finaly defined by some specific values.
public struct TypographyCompositeRawToken: Equatable, Sendable {

    // Font family is not included here because this is the only thing which can vary

    /// The font size to apply for the texts
    public let size: TypographyFontSizeRawToken

    /// The line height to apply on texts
    public let lineHeight: TypographyFontLineHeightRawToken

    /// The font weight to associate with the font family
    public let weight: TypographyFontWeightRawToken

    /// The font letter spacing to associated with the font family
    public let letterSpacing: TypographyFontLetterSpacingRawToken

    /// Operator which will return `true` if `lhs` is smaller than `rhs`.
    /// By "smaller" we mean smaller `size` and smaller or equal `lineHeight`, `weight` and `letterSpacing`
    /// - Parameters:
    ///    - lhs: The typography composite token we expect to be smaller than `rhs`
    ///    - rhs: The typography composite token we expect to be bigger than `lhs`
    /// - Returns Bool: `true` if `lhs` smaller than `rhs`, `false` otherwise
    static func <| (lhs: TypographyCompositeRawToken, rhs: TypographyCompositeRawToken) -> Bool {
        lhs.size < rhs.size
        && lhs.lineHeight <= rhs.lineHeight
        && lhs.weight <= rhs.weight
        && lhs.letterSpacing <= rhs.letterSpacing
    }
}
