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

// [File not generated by the tokenator]
// WARNING: Not synchronized anymore with the Figjam / Figma by developers team
// Create an issue for update https://github.com/Orange-OpenSource/ouds-ios/issues/new?template=token_update.yml

// swiftlint:disable line_length

/// Defines basic values common to all themes for `FontCompositeSemanticToken`.
/// These values can be overriden inside ``OrangeThemeFontSemanticTokensProvider`` subclasses (in extensions or not, in the same module or not) thanks to the `@objc open` combination.
/// The aim of this extensions is to make relationships between all composite semantic tokens for typography / fonts and associated composite raw tokens.
/// The *tokenator* is not able to provide code for such "composite" objects because the *Figma* tool itself cannot manage that and does not output anything in its JSON to process.
extension OrangeThemeFontSemanticTokensProvider: FontCompositeSemanticTokens {

    // MARK: - Semantic tokens - Typography - Composites - Display

    @objc open var typeDisplayLarge: MultipleFontCompositeRawTokens { MultipleFontCompositeRawTokens(compact: FontRawTokens.typeBold850, regular: FontRawTokens.typeBold1450) }
    @objc open var typeDisplayMedium: MultipleFontCompositeRawTokens { MultipleFontCompositeRawTokens(compact: FontRawTokens.typeBold750, regular: FontRawTokens.typeBold1050) }
    @objc open var typeDisplaySmall: MultipleFontCompositeRawTokens { MultipleFontCompositeRawTokens(compact: FontRawTokens.typeBold650, regular: FontRawTokens.typeBold850) }

    // MARK: - Semantic tokens - Typography - Composites - Heading

    @objc open var typeHeadingXLarge: MultipleFontCompositeRawTokens { MultipleFontCompositeRawTokens(compact: FontRawTokens.typeBold550, regular: FontRawTokens.typeBold750) }
    @objc open var typeHeadingLarge: MultipleFontCompositeRawTokens { MultipleFontCompositeRawTokens(compact: FontRawTokens.typeBold450, regular: FontRawTokens.typeBold550) }
    @objc open var typeHeadingMedium: MultipleFontCompositeRawTokens { MultipleFontCompositeRawTokens(compact: FontRawTokens.typeBold350, regular: FontRawTokens.typeBold450) }
    @objc open var typeHeadingSmall: MultipleFontCompositeRawTokens { MultipleFontCompositeRawTokens(compact: FontRawTokens.typeBold300, regular: FontRawTokens.typeBold350) }

    // MARK: - Semantic tokens - Typography - Composites - Body

    @objc open var typeBodyDefaultLarge: MultipleFontCompositeRawTokens { MultipleFontCompositeRawTokens(FontRawTokens.typeRegular250) }
    @objc open var typeBodyDefaultMedium: MultipleFontCompositeRawTokens { MultipleFontCompositeRawTokens(FontRawTokens.typeRegular200) }
    @objc open var typeBodyDefaultSmall: MultipleFontCompositeRawTokens { MultipleFontCompositeRawTokens(FontRawTokens.typeRegular150) }
    @objc open var typeBodyStrongLarge: MultipleFontCompositeRawTokens { MultipleFontCompositeRawTokens(FontRawTokens.typeBold250) }
    @objc open var typeBodyStrongMedium: MultipleFontCompositeRawTokens { MultipleFontCompositeRawTokens(FontRawTokens.typeBold200) }
    @objc open var typeBodyStrongSmall: MultipleFontCompositeRawTokens { MultipleFontCompositeRawTokens(FontRawTokens.typeBold150) }

    // MARK: - Semantic tokens - Typography - Composites - Label

    @objc open var typeLabelDefaultXLarge: MultipleFontCompositeRawTokens { MultipleFontCompositeRawTokens(FontRawTokens.typeRegular300) }
    @objc open var typeLabelDefaultLarge: MultipleFontCompositeRawTokens { MultipleFontCompositeRawTokens(FontRawTokens.typeBold250) }
    @objc open var typeLabelDefaultMedium: MultipleFontCompositeRawTokens { MultipleFontCompositeRawTokens(FontRawTokens.typeRegular200) }
    @objc open var typeLabelDefaultSmall: MultipleFontCompositeRawTokens { MultipleFontCompositeRawTokens(FontRawTokens.typeRegular150) }
    @objc open var typeLabelStrongXLarge: MultipleFontCompositeRawTokens { MultipleFontCompositeRawTokens(FontRawTokens.typeBold300) }
    @objc open var typeLabelStrongLarge: MultipleFontCompositeRawTokens { MultipleFontCompositeRawTokens(FontRawTokens.typeBold250) }
    @objc open var typeLabelStrongMedium: MultipleFontCompositeRawTokens { MultipleFontCompositeRawTokens(FontRawTokens.typeBold200) }
    @objc open var typeLabelStrongSmall: MultipleFontCompositeRawTokens { MultipleFontCompositeRawTokens(FontRawTokens.typeBold150) }

    // MARK: - Semantic tokens - Typography - Composites - Code

    @objc open var typeCodeMedium: MultipleFontCompositeRawTokens { MultipleFontCompositeRawTokens(FontRawTokens.typeRegular200) }
    @objc open var typeCodeSmall: MultipleFontCompositeRawTokens { MultipleFontCompositeRawTokens(FontRawTokens.typeRegular150) }
}

// swiftlint:enable line_length
