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

/// A type alias only for ``BorderSemanticTokens`` so as to keep consistency with other type aliases
/// merging several protocols
public typealias AllBorderSemanticTokens = BorderSemanticTokens

/// A type alias only for ``OpacitySemanticTokens`` so as to keep consistency with other type aliases
/// merging several protocols
public typealias AllOpacitySemanticTokens = OpacitySemanticTokens

/// A type alias which merges  ``ColorSemanticTokens`` and ``ColorMultipleSemanticTokens``.
/// It helps in the end to define a wrapper for all the semantic tokens of colors, multiple or not, generated or not.
/// For example ``OUDSColorSemanticTokensWrapper`` uses this type alias.
public typealias AllColorSemanticTokens = ColorSemanticTokens & ColorMultipleSemanticTokens

/// A type alias which merges  ``ElevationSemanticTokens``, ``ElevationCompositeSemanticTokens`` and ``ElevationMultipleSemanticTokens``.
/// It helps in the end to define a wrapper for all the semantic tokens of elevations, multiple or not, generated or not.
/// For example ``OUDSElevationSemanticTokensWrapper`` uses this type alias.
public typealias AllElevationSemanticTokens = ElevationSemanticTokens & ElevationCompositeSemanticTokens & ElevationMultipleSemanticTokens

/// A type alias which merges  ``FontSemanticTokens``, ``FontCompositeSemanticTokens`` and ``FontMultipleSemanticTokens``.
/// It helps in the end to define a wrapper for all the semantic tokens of fonts, multiple, composite, or not, generated or not.
/// For example ``OUDSFontSemanticTokensWrapper`` uses this type alias.
public typealias AllFontSemanticTokens = FontSemanticTokens & FontCompositeSemanticTokens & FontMultipleSemanticTokens
