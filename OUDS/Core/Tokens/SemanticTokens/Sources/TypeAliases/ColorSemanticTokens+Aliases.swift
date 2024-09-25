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

/// Basically a semantic color token, which can be either a functional or a decorative token, is a `String`, to keep grammar clean and clear with design system grammar.
<<<<<<< HEAD
public typealias ColorSemanticToken = MultipleColorTokens
=======
public typealias ColorSemanticToken = MultipleColorSemanticToken
>>>>>>> 3e552ea8 (refactor: use of composite colors for elevations)

/// The global design system tool defines aliases of semantic colors token as semantic color tokens, to keep grammar clean and clear with design system grammar.
public typealias ColorAliasSemanticToken = ColorRawToken
