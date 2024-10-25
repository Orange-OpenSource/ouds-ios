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

extension MockTheme {

    static let mockThemeMultipleTypographyTokens = MultipleTypographyTokens(TypographyRawTokens.typeBold1850)

    // MARK: - Semantic tokens - Typography - Composites - Display

    override open var typeDisplayLarge: MultipleTypographyTokens { Self.mockThemeMultipleTypographyTokens }
    override open var typeDisplayMedium: MultipleTypographyTokens { Self.mockThemeMultipleTypographyTokens }
    override open var typeDisplaySmall: MultipleTypographyTokens { Self.mockThemeMultipleTypographyTokens }

    // MARK: - Semantic tokens - Typography - Composites - Heading

    override open var typeHeadingXLarge: MultipleTypographyTokens { Self.mockThemeMultipleTypographyTokens }
    override open var typeHeadingLarge: MultipleTypographyTokens { Self.mockThemeMultipleTypographyTokens }
    override open var typeHeadingMedium: MultipleTypographyTokens { Self.mockThemeMultipleTypographyTokens }
    override open var typeHeadingSmall: MultipleTypographyTokens { Self.mockThemeMultipleTypographyTokens }

    // MARK: - Semantic tokens - Typography - Composites - Body

    override open var typeBodyDefaultLarge: MultipleTypographyTokens { Self.mockThemeMultipleTypographyTokens }
    override open var typeBodyDefaultMedium: MultipleTypographyTokens { Self.mockThemeMultipleTypographyTokens }
    override open var typeBodyDefaultSmall: MultipleTypographyTokens { Self.mockThemeMultipleTypographyTokens }
    override open var typeBodyStrongLarge: MultipleTypographyTokens { Self.mockThemeMultipleTypographyTokens }
    override open var typeBodyStrongMedium: MultipleTypographyTokens { Self.mockThemeMultipleTypographyTokens }
    override open var typeBodyStrongSmall: MultipleTypographyTokens { Self.mockThemeMultipleTypographyTokens }

    // MARK: - Semantic tokens - Typography - Composites - Label

    override open var typeLabelDefaultXLarge: MultipleTypographyTokens { Self.mockThemeMultipleTypographyTokens }
    override open var typeLabelDefaultLarge: MultipleTypographyTokens { Self.mockThemeMultipleTypographyTokens }
    override open var typeLabelDefaultMedium: MultipleTypographyTokens { Self.mockThemeMultipleTypographyTokens }
    override open var typeLabelDefaultSmall: MultipleTypographyTokens { Self.mockThemeMultipleTypographyTokens }
    override open var typeLabelStrongXLarge: MultipleTypographyTokens { Self.mockThemeMultipleTypographyTokens }
    override open var typeLabelStrongLarge: MultipleTypographyTokens { Self.mockThemeMultipleTypographyTokens }
    override open var typeLabelStrongMedium: MultipleTypographyTokens { Self.mockThemeMultipleTypographyTokens }
    override open var typeLabelStrongSmall: MultipleTypographyTokens { Self.mockThemeMultipleTypographyTokens }

    // MARK: - Semantic tokens - Typography - Composites - Code

    override open var typeCodeMedium: MultipleTypographyTokens { Self.mockThemeMultipleTypographyTokens }
    override open var typeCodeSmall: MultipleTypographyTokens { Self.mockThemeMultipleTypographyTokens }
}
