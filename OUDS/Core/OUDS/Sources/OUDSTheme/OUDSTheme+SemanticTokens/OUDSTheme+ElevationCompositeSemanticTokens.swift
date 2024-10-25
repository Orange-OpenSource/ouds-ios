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
import OUDSTokensRaw
import OUDSTokensSemantic

// ଘ( ･ω･)_/ﾟ･:*:･｡☆
// [File to generate with the tokenator with Figma able to output composites and tokenatoer able to manage them]
// WARNING: Not synchronized anymore with the Figjam / Figma by developers team
// Create an issue for update https://github.com/Orange-OpenSource/ouds-ios/issues/new?template=token_update.yml

/// Defines basic values common to all themes for `ElevationCompositeSemanticTokens`.
/// These values can be overriden inside `OUDSTheme` subclasses (in extensions or not, in the same module or not) thanks to the `@objc open` combination.
/// The aim of this extensions is to make relationships between all semantic tokens for elevations and associated raw tokens.
/// `OUDSTheme` can be seen as a kind of "abstract class" in _object oriented paradigm_.
///
/// It defines in fact box shadows effects.
extension OUDSTheme: ElevationCompositeSemanticTokens {

    // MARK: Semantic token - Elevation - Box shadow

    @objc open var elevationNone: ElevationCompositeSemanticToken { ElevationCompositeSemanticToken(ElevationRawTokens.elevationBottom_0) }

    @objc open var elevationRaised: ElevationCompositeSemanticToken { ElevationCompositeSemanticToken(ElevationRawTokens.elevationBottom_1_500) }

    @objc open var elevationDrag: ElevationCompositeSemanticToken { ElevationCompositeSemanticToken(ElevationRawTokens.elevationBottom_3_500) }

    @objc open var elevationOverlayDefault: ElevationCompositeSemanticToken { ElevationCompositeSemanticToken(ElevationRawTokens.elevationBottom_2_400) }

    @objc open var elevationOverlayEmphasized: ElevationCompositeSemanticToken { ElevationCompositeSemanticToken(ElevationRawTokens.elevationBottom_5_300) }

    @objc open var elevationStickyDefault: ElevationCompositeSemanticToken {
        ElevationCompositeSemanticToken(ElevationRawTokens.elevationBottom_3_300) }

    @objc open var elevationStickyEmphasized: ElevationCompositeSemanticToken { ElevationCompositeSemanticToken(ElevationRawTokens.elevationBottom_3_300) }

    @objc open var elevationStickyNavigationScrolled: ElevationCompositeSemanticToken { ElevationCompositeSemanticToken(ElevationRawTokens.elevationBottom_3_300) }
}
