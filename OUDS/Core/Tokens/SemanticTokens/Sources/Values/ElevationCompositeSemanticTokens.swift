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

// swiftlint:disable missing_docs

// ଘ( ･ω･)_/ﾟ･:*:･｡☆
// [File to generate with the tokenator with Figma able to output composites and tokenatoer able to manage them]
// WARNING: Not synchronized anymore with the Figjam / Figma by developers team
// Create an issue for update https://github.com/Orange-OpenSource/ouds-ios/issues/new?template=token_update.yml

/// This is a group of semantic tokens for **elevations**, but only **composite tokens**.
/// There are splitted and not declared in `ElevationSemanticTokens` as the *tokenator* tool parsing *Figma* JSON to Swift code is not able to manage them.
/// Thus we need to declare them in another file to prevent them to be erased.
/// 
/// It declares in fact box shadows effects.
///
/// This protocol makes themes able to provide and override `ElevationCompositeSemanticToken`.
/// `ElevationCompositeSemanticToken` refers to `MultipleElevationTokens`, which contains for light and dark color schemes `ElevationCompositeRawToken`.
/// This `ElevationCompositeRawToken` is not managed by tokenator yet as it is composed by three properties.
public protocol ElevationCompositeSemanticTokens {

    var elevationNone: ElevationCompositeSemanticToken { get }
    var elevationRaised: ElevationCompositeSemanticToken { get }
    var elevationDrag: ElevationCompositeSemanticToken { get }
    var elevationOverlayDefault: ElevationCompositeSemanticToken { get }
    var elevationOverlayEmphasized: ElevationCompositeSemanticToken { get }
    var elevationStickyDefault: ElevationCompositeSemanticToken { get }
    var elevationStickyEmphasized: ElevationCompositeSemanticToken { get }
    var elevationStickyNavigationScrolled: ElevationCompositeSemanticToken { get }
}

// swiftlint:enable missing_docs