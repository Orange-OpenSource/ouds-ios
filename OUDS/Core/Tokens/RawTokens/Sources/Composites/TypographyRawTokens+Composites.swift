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

/// Composite raw tokens are here to pack a set of specific values according to the global design system tool.
/// Here a *typography* is finaly defined by some specific values.
public struct TypographyCompositeRawToken: Equatable {

    // Font family is not included here because this is the only thing which can vary

    /// The font size to apply for the texts
    public let size: TypographyFontSizeRawToken

    /// The line height to apply on texts
    public let lineHeight: TypographyFontLineHeightRawToken

    /// The font weight to associated wit the font family
    public let weight: TypographyFontWeightRawToken

    // TODO: How to deal "letter spacing"?
}
