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

import OUDSTokensRaw
import OUDSTokensSemantic

/// Overrides **all** the font  composite semantic tokens (from its super class, i.e. `OUDSTheme` so as to test overriding of them (unit tests)
/// and to act like smoke tests with crashing tests if some tokens disappeared.
extension MockTheme {

    static let mockThemeMultipleFontCompositeRawTokens = MultipleFontCompositeRawTokens(FontRawTokens.typeBold1850)

    // MARK: - Semantic tokens - Typography - Composites - Display

    override open var typeDisplayLarge: MultipleFontCompositeRawTokens { Self.mockThemeMultipleFontCompositeRawTokens }
    override open var typeDisplayMedium: MultipleFontCompositeRawTokens { Self.mockThemeMultipleFontCompositeRawTokens }
    override open var typeDisplaySmall: MultipleFontCompositeRawTokens { Self.mockThemeMultipleFontCompositeRawTokens }

    // MARK: - Semantic tokens - Typography - Composites - Heading

    override open var typeHeadingXLarge: MultipleFontCompositeRawTokens { Self.mockThemeMultipleFontCompositeRawTokens }
    override open var typeHeadingLarge: MultipleFontCompositeRawTokens { Self.mockThemeMultipleFontCompositeRawTokens }
    override open var typeHeadingMedium: MultipleFontCompositeRawTokens { Self.mockThemeMultipleFontCompositeRawTokens }
    override open var typeHeadingSmall: MultipleFontCompositeRawTokens { Self.mockThemeMultipleFontCompositeRawTokens }

    // MARK: - Semantic tokens - Typography - Composites - Body

    override open var typeBodyDefaultLarge: MultipleFontCompositeRawTokens { Self.mockThemeMultipleFontCompositeRawTokens }
    override open var typeBodyDefaultMedium: MultipleFontCompositeRawTokens { Self.mockThemeMultipleFontCompositeRawTokens }
    override open var typeBodyDefaultSmall: MultipleFontCompositeRawTokens { Self.mockThemeMultipleFontCompositeRawTokens }
    override open var typeBodyStrongLarge: MultipleFontCompositeRawTokens { Self.mockThemeMultipleFontCompositeRawTokens }
    override open var typeBodyStrongMedium: MultipleFontCompositeRawTokens { Self.mockThemeMultipleFontCompositeRawTokens }
    override open var typeBodyStrongSmall: MultipleFontCompositeRawTokens { Self.mockThemeMultipleFontCompositeRawTokens }

    // MARK: - Semantic tokens - Typography - Composites - Label

    override open var typeLabelDefaultXLarge: MultipleFontCompositeRawTokens { Self.mockThemeMultipleFontCompositeRawTokens }
    override open var typeLabelDefaultLarge: MultipleFontCompositeRawTokens { Self.mockThemeMultipleFontCompositeRawTokens }
    override open var typeLabelDefaultMedium: MultipleFontCompositeRawTokens { Self.mockThemeMultipleFontCompositeRawTokens }
    override open var typeLabelDefaultSmall: MultipleFontCompositeRawTokens { Self.mockThemeMultipleFontCompositeRawTokens }
    override open var typeLabelStrongXLarge: MultipleFontCompositeRawTokens { Self.mockThemeMultipleFontCompositeRawTokens }
    override open var typeLabelStrongLarge: MultipleFontCompositeRawTokens { Self.mockThemeMultipleFontCompositeRawTokens }
    override open var typeLabelStrongMedium: MultipleFontCompositeRawTokens { Self.mockThemeMultipleFontCompositeRawTokens }
    override open var typeLabelStrongSmall: MultipleFontCompositeRawTokens { Self.mockThemeMultipleFontCompositeRawTokens }

    // MARK: - Semantic tokens - Typography - Composites - Code

    override open var typeCodeMedium: MultipleFontCompositeRawTokens { Self.mockThemeMultipleFontCompositeRawTokens }
    override open var typeCodeSmall: MultipleFontCompositeRawTokens { Self.mockThemeMultipleFontCompositeRawTokens }
}
