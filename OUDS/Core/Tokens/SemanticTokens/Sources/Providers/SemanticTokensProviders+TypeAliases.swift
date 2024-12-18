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
/// For example ``OUDSBorderSemanticTokensProvider`` matches this type alias.
public typealias AllBorderSemanticTokensProvider = BorderSemanticTokens

/// A type alias only for ``OpacitySemanticTokens`` so as to keep consistency with other type aliases
/// merging several protocols.
/// For example ``OUDSOpacitySemanticTokensProvider`` matches this type alias.
public typealias AllOpacitySemanticTokensProvider = OpacitySemanticTokens

/// A type alias only for ``GridSemanticTokens`` so as to keep consistency with other type aliases
/// merging several protocols.
/// For example ``OUDSGridSemanticTokensProvider`` matches this type alias.
public typealias AllGridSemanticTokensProvider = GridSemanticTokens

/// A type alias which merges  ``ColorSemanticTokens`` and ``ColorMultipleSemanticTokens``.
/// It helps in the end to define a provider for all the semantic tokens of colors, multiple or not, generated or not.
/// For example ``OUDSColorSemanticTokensProvider`` matches this type alias.
public typealias AllColorSemanticTokensProvider = ColorSemanticTokens & ColorMultipleSemanticTokens

/// A type alias which merges  ``ElevationSemanticTokens``, ``ElevationCompositeSemanticTokens`` and ``ElevationMultipleSemanticTokens``.
/// It helps in the end to define a provider for all the semantic tokens of elevations, multiple or not, generated or not.
/// For example ``OUDSElevationSemanticTokensProvider`` matches this type alias.
public typealias AllElevationSemanticTokensProvider = ElevationSemanticTokens & ElevationCompositeSemanticTokens & ElevationMultipleSemanticTokens

/// A type alias which merges  ``FontSemanticTokens``, ``FontCompositeSemanticTokens`` and ``FontMultipleSemanticTokens``.
/// It helps in the end to define a provider for all the semantic tokens of fonts, multiple, composite, or not, generated or not.
/// For example ``OUDSFontSemanticTokensProvider`` matches this type alias.
public typealias AllFontSemanticTokensProvider = FontSemanticTokens & FontCompositeSemanticTokens & FontMultipleSemanticTokens

/// A type alias which merges  ``SizeSemanticTokens`` and ``SizeMultipleSemanticTokens``.
/// It helps in the end to define a provider for all the semantic tokens of size, multiple or not, generated or not.
/// For example ``OUDSSizeSemanticTokensProvider`` matches this type alias.
public typealias AllSizeSemanticTokensProvider = SizeSemanticTokens & SizeMultipleSemanticTokens

/// A type alias which merges  ``SpaceSemanticTokens`` and ``SpaceMultipleSemanticTokens``.
/// It helps in the end to define a provider for all the semantic tokens of space, multiple or not, generated or not.
/// For example ``OUDSSpaceSemanticTokensProvider`` matches this type alias.
public typealias AllSpaceSemanticTokensProvider = SpaceSemanticTokens & SpaceMultipleSemanticTokens
