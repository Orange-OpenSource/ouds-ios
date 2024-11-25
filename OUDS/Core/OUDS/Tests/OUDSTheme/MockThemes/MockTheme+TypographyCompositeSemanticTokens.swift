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

    static let mockThemeMultipleTypographyCompositeRawTokens = MultipleTypographyCompositeRawTokens(TypographyRawTokens.typeBold1850)

    // MARK: - Semantic tokens - Typography - Composites - Display

    override open var typeDisplayLarge: MultipleTypographyCompositeRawTokens { Self.mockThemeMultipleTypographyCompositeRawTokens }
    override open var typeDisplayMedium: MultipleTypographyCompositeRawTokens { Self.mockThemeMultipleTypographyCompositeRawTokens }
    override open var typeDisplaySmall: MultipleTypographyCompositeRawTokens { Self.mockThemeMultipleTypographyCompositeRawTokens }

    // MARK: - Semantic tokens - Typography - Composites - Heading

    override open var typeHeadingXLarge: MultipleTypographyCompositeRawTokens { Self.mockThemeMultipleTypographyCompositeRawTokens }
    override open var typeHeadingLarge: MultipleTypographyCompositeRawTokens { Self.mockThemeMultipleTypographyCompositeRawTokens }
    override open var typeHeadingMedium: MultipleTypographyCompositeRawTokens { Self.mockThemeMultipleTypographyCompositeRawTokens }
    override open var typeHeadingSmall: MultipleTypographyCompositeRawTokens { Self.mockThemeMultipleTypographyCompositeRawTokens }

    // MARK: - Semantic tokens - Typography - Composites - Body

    override open var typeBodyDefaultLarge: MultipleTypographyCompositeRawTokens { Self.mockThemeMultipleTypographyCompositeRawTokens }
    override open var typeBodyDefaultMedium: MultipleTypographyCompositeRawTokens { Self.mockThemeMultipleTypographyCompositeRawTokens }
    override open var typeBodyDefaultSmall: MultipleTypographyCompositeRawTokens { Self.mockThemeMultipleTypographyCompositeRawTokens }
    override open var typeBodyStrongLarge: MultipleTypographyCompositeRawTokens { Self.mockThemeMultipleTypographyCompositeRawTokens }
    override open var typeBodyStrongMedium: MultipleTypographyCompositeRawTokens { Self.mockThemeMultipleTypographyCompositeRawTokens }
    override open var typeBodyStrongSmall: MultipleTypographyCompositeRawTokens { Self.mockThemeMultipleTypographyCompositeRawTokens }

    // MARK: - Semantic tokens - Typography - Composites - Label

    override open var typeLabelDefaultXLarge: MultipleTypographyCompositeRawTokens { Self.mockThemeMultipleTypographyCompositeRawTokens }
    override open var typeLabelDefaultLarge: MultipleTypographyCompositeRawTokens { Self.mockThemeMultipleTypographyCompositeRawTokens }
    override open var typeLabelDefaultMedium: MultipleTypographyCompositeRawTokens { Self.mockThemeMultipleTypographyCompositeRawTokens }
    override open var typeLabelDefaultSmall: MultipleTypographyCompositeRawTokens { Self.mockThemeMultipleTypographyCompositeRawTokens }
    override open var typeLabelStrongXLarge: MultipleTypographyCompositeRawTokens { Self.mockThemeMultipleTypographyCompositeRawTokens }
    override open var typeLabelStrongLarge: MultipleTypographyCompositeRawTokens { Self.mockThemeMultipleTypographyCompositeRawTokens }
    override open var typeLabelStrongMedium: MultipleTypographyCompositeRawTokens { Self.mockThemeMultipleTypographyCompositeRawTokens }
    override open var typeLabelStrongSmall: MultipleTypographyCompositeRawTokens { Self.mockThemeMultipleTypographyCompositeRawTokens }

    // MARK: - Semantic tokens - Typography - Composites - Code

    override open var typeCodeMedium: MultipleTypographyCompositeRawTokens { Self.mockThemeMultipleTypographyCompositeRawTokens }
    override open var typeCodeSmall: MultipleTypographyCompositeRawTokens { Self.mockThemeMultipleTypographyCompositeRawTokens }
}
