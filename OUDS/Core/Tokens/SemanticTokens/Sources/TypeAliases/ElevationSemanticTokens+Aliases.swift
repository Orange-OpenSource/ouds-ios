//
// Software Name: OUDSThemesContract iOS
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

/// Basically an elevation semantic token for X offset is a raw token for elevation, with the same final type, to keep grammar clean and clear with design system grammar.
public typealias ElevationXSemanticToken = ElevationRawToken

/// Basically an elevation semantic token for Y Index is a raw token for elevation, with the same final type, to keep grammar clean and clear with design system grammar.
public typealias ElevationYSemanticToken = ElevationRawToken

/// Basically an elevation semantic token for blur effect is a raw token for elevation, with the same final type, to keep grammar clean and clear with design system grammar.
public typealias ElevationBlurSemanticToken = ElevationRawToken

/// Basically an elevation color semantic token, used mainly for shadow colors, is a color semantic token.
public typealias ElevationColorSemanticToken = ColorSemanticToken

/// Basically a multiple elevation color semantic token, used mainly for shadow colors, is a multiple color semantic token.
public typealias ElevationMultipleColorSemanticToken = MultipleColorSemanticTokens

/// Basically an elevationcomposite  semantic token, used mainly for box shadow, is a pair of elevation composite raw tokens used depending to the color scheme.
/// A ``MultipleElevationCompositeRawTokens`` contains `ElevationCompositeRawToken` objects for light and dark modes, which contains `ElevationRawToken` and `ColorRawToken` values.
public typealias ElevationCompositeSemanticToken = MultipleElevationCompositeRawTokens
