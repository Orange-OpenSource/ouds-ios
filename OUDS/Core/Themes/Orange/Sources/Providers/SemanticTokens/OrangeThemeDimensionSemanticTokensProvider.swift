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

import OUDS
import OUDSFoundations

// swiftlint:disable type_name

/// A class which wraps all **dimension semantic tokens**, and expose them.
/// This provider should be integrated as a `AllDimensionSemanticTokensProvider` implementation inside `OUDSTheme` so as to provide
/// all tokens to the users.
///
/// To use it:
/// ```swift
/// class LocalTheme: OrangeTheme {
///
///     override init() {
///         super.init(sizes: OrangeThemeDimensionSemanticTokensProvider())
///     }
/// }
/// ```
///
/// or to an already existing theme for example:
/// ```swift
///     OrangeTheme(dimensions: OrangeThemeDimensionSemanticTokensProvider())
/// ```
///
/// Note that by design the semenatic tokens of dimensions provide dby this provider cannot be overriden, this is forbiden in Figma.
///
/// - Since: 0.16.0
open class OrangeThemeDimensionSemanticTokensProvider: AllDimensionSemanticTokensProvider {

    /// Intializes the provider
    public init() {
        OL.debug("Init of OrangeThemeDimensionSemanticTokensProvider")
    }

    deinit {}

    // ଘ( ･ω･)_/ﾟ･:*:･｡☆
    // Note: So as to help the integration of generated code produced by the tokenator
    // the implemention of DimensionSemanticTokens is not here
    // but in Core/Themes/Orange/Values/DimensionTokens/OrangeTheme+DimensionSemanticTokens.swift
    // This declaration of OrangeThemeDimensionSemanticTokensProvider is here to allow to write documentation.
}

// swiftlint:enable type_name
