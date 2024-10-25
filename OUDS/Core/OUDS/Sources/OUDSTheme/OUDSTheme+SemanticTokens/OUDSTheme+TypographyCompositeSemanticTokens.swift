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

// swiftlint:disable line_length

/// Defines basic values common to all themes for `TypographyCompositeSemanticTokens`.
/// These values can be overriden inside `OUDSTheme` subclasses (in extensions or not, in the same module or not) thanks to the `@objc open` combination.
/// The aim of this extensions is to make relationships between all composite semantic tokens for typography and associated composite raw tokens.
/// `OUDSTheme` can be seen as a kind of "abstract class" in _object oriented paradigm_.
///
extension OUDSTheme: TypographyCompositeSemanticTokens {

    // MARK: - Semantic tokens - Typography - Composites - Display

    @objc open var typeDisplayLarge: MultipleTypographyTokens { MultipleTypographyTokens(compact: TypographyRawTokens.typeBold850, regular: TypographyRawTokens.typeBold1450) }
    @objc open var typeDisplayMedium: MultipleTypographyTokens { MultipleTypographyTokens(compact: TypographyRawTokens.typeBold750, regular: TypographyRawTokens.typeBold1050) }
    @objc open var typeDisplaySmall: MultipleTypographyTokens { MultipleTypographyTokens(compact: TypographyRawTokens.typeBold650, regular: TypographyRawTokens.typeBold850) }

    // MARK: - Semantic tokens - Typography - Composites - Heading

    @objc open var typeHeadingXLarge: MultipleTypographyTokens { MultipleTypographyTokens(compact: TypographyRawTokens.typeBold550, regular: TypographyRawTokens.typeBold750) }
    @objc open var typeHeadingLarge: MultipleTypographyTokens { MultipleTypographyTokens(compact: TypographyRawTokens.typeBold450, regular: TypographyRawTokens.typeBold550) }
    @objc open var typeHeadingMedium: MultipleTypographyTokens { MultipleTypographyTokens(compact: TypographyRawTokens.typeBold350, regular: TypographyRawTokens.typeBold450) }
    @objc open var typeHeadingSmall: MultipleTypographyTokens { MultipleTypographyTokens(compact: TypographyRawTokens.typeBold300, regular: TypographyRawTokens.typeBold350) }

    // MARK: - Semantic tokens - Typography - Composites - Body

    @objc open var typeBodyDefaultLarge: MultipleTypographyTokens { MultipleTypographyTokens(TypographyRawTokens.typeRegular250) }
    @objc open var typeBodyDefaultMedium: MultipleTypographyTokens { MultipleTypographyTokens(TypographyRawTokens.typeRegular200) }
    @objc open var typeBodyDefaultSmall: MultipleTypographyTokens { MultipleTypographyTokens(TypographyRawTokens.typeRegular150) }
    @objc open var typeBodyStrongLarge: MultipleTypographyTokens { MultipleTypographyTokens(TypographyRawTokens.typeBold250) }
    @objc open var typeBodyStrongMedium: MultipleTypographyTokens { MultipleTypographyTokens(TypographyRawTokens.typeBold200) }
    @objc open var typeBodyStrongSmall: MultipleTypographyTokens { MultipleTypographyTokens(TypographyRawTokens.typeBold150) }

    // MARK: - Semantic tokens - Typography - Composites - Label

    @objc open var typeLabelDefaultXLarge: MultipleTypographyTokens { MultipleTypographyTokens(TypographyRawTokens.typeRegular250) } // NOTE: .typeRegular300 in Figjam but undefined
    @objc open var typeLabelDefaultLarge: MultipleTypographyTokens { MultipleTypographyTokens(TypographyRawTokens.typeBold250) }
    @objc open var typeLabelDefaultMedium: MultipleTypographyTokens { MultipleTypographyTokens(TypographyRawTokens.typeRegular200) }
    @objc open var typeLabelDefaultSmall: MultipleTypographyTokens { MultipleTypographyTokens(TypographyRawTokens.typeRegular150) }
    @objc open var typeLabelStrongXLarge: MultipleTypographyTokens { MultipleTypographyTokens(TypographyRawTokens.typeBold300) }
    @objc open var typeLabelStrongLarge: MultipleTypographyTokens { MultipleTypographyTokens(TypographyRawTokens.typeBold250) }
    @objc open var typeLabelStrongMedium: MultipleTypographyTokens { MultipleTypographyTokens(TypographyRawTokens.typeBold200) }
    @objc open var typeLabelStrongSmall: MultipleTypographyTokens { MultipleTypographyTokens(TypographyRawTokens.typeBold150) }

    // MARK: - Semantic tokens - Typography - Composites - Code

    @objc open var typeCodeMedium: MultipleTypographyTokens { MultipleTypographyTokens(TypographyRawTokens.typeRegular200) }
    @objc open var typeCodeSmall: MultipleTypographyTokens { MultipleTypographyTokens(TypographyRawTokens.typeRegular150) }
}

// swiftlint:enable line_length
