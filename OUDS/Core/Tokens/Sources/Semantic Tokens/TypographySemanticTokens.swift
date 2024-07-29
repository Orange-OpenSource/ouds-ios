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

// MARK: - Type aliases to keep grammar clear

public typealias TypographyFontFamilySemanticToken = TypographyFontFamilyPrimitiveToken
public typealias TypographyFontWeightSemanticToken = TypographyFontWeightPrimitiveToken
public typealias TypographyFontSizeSemanticToken = TypographyFontSizePrimitiveToken
public typealias TypographyFontLineHeightSemanticToken = TypographyFontLineHeightPrimitiveToken

// MARK: - Semantic tokens

public struct TypographySemanticTokens {
    
    // MARK: Font family
    
    // ...
    static let fontFamilyDisplay: TypographyFontFamilySemanticToken = TypographyPrimitiveTokens.fontFamilySystemSFProText
    static let fontFamilyHeading: TypographyFontFamilySemanticToken = TypographyPrimitiveTokens.fontFamilySystemSFProText
    static let fontFamilyBody: TypographyFontFamilySemanticToken = TypographyPrimitiveTokens.fontFamilySystemSFProText
    static let fontFamilyLabel: TypographyFontFamilySemanticToken = TypographyPrimitiveTokens.fontFamilySystemSFProText
    // ...
    
    // MARK: Font weight
    
    static let fontWeightDisplay: TypographyFontWeightSemanticToken = TypographyPrimitiveTokens.fontWeight700
    static let fontWeightHeading: TypographyFontWeightSemanticToken = TypographyPrimitiveTokens.fontWeight700
    // ...
    static let fontWeightBodyDefault: TypographyFontWeightSemanticToken = TypographyPrimitiveTokens.fontWeight400
    static let fontWeightBodyStrong: TypographyFontWeightSemanticToken = TypographyPrimitiveTokens.fontWeight700
    // ...
    
    // MARK: Font size
    
    static let fontSizeMobileHeadingSmall: TypographyFontSizeSemanticToken = TypographyPrimitiveTokens.fontSize300
    // ...
    static let fontSizeMobileHeadingMedium: TypographyFontSizeSemanticToken = TypographyPrimitiveTokens.fontSize350
    // ...
    static let fontSizeTableHeadingSmall: TypographyFontSizeSemanticToken = TypographyPrimitiveTokens.fontSize350
    // ...
    
    // MARK: Line height
    // TODO: Implement
    
    // MARK: Paragrpah spacing
    // TODO: Implement
}
