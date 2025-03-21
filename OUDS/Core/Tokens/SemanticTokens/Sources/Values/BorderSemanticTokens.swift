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

// [File not generated by the tokenator]
// WARNING: Not synchronized anymore with the Figjam / Figma by developers team
// Create an issue for update https://github.com/Orange-OpenSource/ouds-ios/issues/new?template=token_update.yml

// swiftlint:disable missing_docs

/// This is a group of semantic tokens for **borders**.
/// It defines all ``BorderWidthSemanticToken``, ``BorderRadiusSemanticToken`` and ``BorderStyleSemanticToken`` a theme must have.
/// Any border semantic token must be declared there as providers like `OUDSBorderSemanticTokensProvider` will then expose them through `OUDSTheme`.
///
/// - Since: 0.8.0
public protocol BorderSemanticTokens {

    // MARK: - Semantic token - Border - Width

    var borderWidthNone: BorderWidthSemanticToken { get }
    var borderWidthDefault: BorderWidthSemanticToken { get }
    var borderWidthThin: BorderWidthSemanticToken { get }
    var borderWidthMedium: BorderWidthSemanticToken { get }
    var borderWidthThick: BorderWidthSemanticToken { get }
    var borderWidthThicker: BorderWidthSemanticToken { get }
    var borderWidthFocus: BorderWidthSemanticToken { get }
    var borderWidthFocusInset: BorderWidthSemanticToken { get }

    // MARK: - Semantic token - Border - Radius

    var borderRadiusNone: BorderRadiusSemanticToken { get }
    var borderRadiusDefault: BorderRadiusSemanticToken { get }
    var borderRadiusShort: BorderRadiusSemanticToken { get }
    var borderRadiusMedium: BorderRadiusSemanticToken { get }
    var borderRadiusTall: BorderRadiusSemanticToken { get }
    var borderRadiusPill: BorderRadiusSemanticToken { get }

    // MARK: - Semantic token - Border - Style

    var borderStyleDefault: BorderStyleSemanticToken { get }
    var borderStyleDrag: BorderStyleSemanticToken { get }
}

// swiftlint:enable missing_docs
