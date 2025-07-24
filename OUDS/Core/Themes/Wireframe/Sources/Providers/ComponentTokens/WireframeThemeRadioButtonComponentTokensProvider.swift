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

/// A class which wraps all **component  tokens of radio button** for  *radios* objects
/// like `OUDSRadioButton` and `OUDSRadioButtonItem`.
/// Contains also references to semantic tokens providers so as to be able to use them to define the component tokens.
/// This provider should be integrated as a `AllRadioButtonComponentTokensProvider` implementation inside `OUDSTheme` so as to provide all tokens to the users.
/// It helps users to override some of the tokens and assign them to an `OUDSTheme` implementation to use.
/// It implements also the protocol `RadioButtonComponentTokens` so as to expose the component tokens for *radio buttons* through any `OUDSTheme`.
/// *Radio buttons* components tokens are defined with raw and semantic tokens of sizes (from `SizeSemanticToken`) and
/// borders (`BorderRadiusSemanticToken`, `BorderWidthSemanticToken`).
/// These components share the same type of tokens which are all gathered here.                                        borders: CustomBorderSemanticTokensProvider()))
///
/// - Since: 0.17.0
final class WireframeThemeRadioButtonComponentTokensProvider: AllRadioButtonComponentTokensProvider {

    /// Provider of size semantic tokens to use for check / radio sizes
    public let sizes: AllSizeSemanticTokensProvider

    /// Provider of border semantic tokens to use for check / radio borders
    public let borders: AllBorderSemanticTokensProvider

    #if DEBUG
    private nonisolated(unsafe) static var instanceCount: Int = 0
    #endif

    /// Defines a provider of component tokens dedicated to `OUDSRadioButton` and `OUDSRadioButtonItem`.
    /// - Parameters:
    ///    - sizes: Provider for size semantic tokens. If nil, a default one will be used (``WireframeThemeSizeSemanticTokensProvider``)
    ///    - borders: Provider for border semantic tokens. If nil, a default one will be used (``WireframeThemeBorderSemanticTokensProvider``)
    public init(sizes: AllSizeSemanticTokensProvider? = nil,
                borders: AllBorderSemanticTokensProvider? = nil)
    {
        OL.debug("Init of WireframeThemeRadioButtonComponentTokensProvider")
        self.sizes = (sizes ?? WireframeThemeSizeSemanticTokensProvider())
        self.borders = (borders ?? WireframeThemeBorderSemanticTokensProvider())
        #if DEBUG
        Self.instanceCount++
        checkInstances(count: Self.instanceCount, for: "WireframeThemeRadioButtonComponentTokensProvider")
        #endif
    }

    deinit {
        #if DEBUG
        Self.instanceCount--
        #endif
    }

    // ଘ( ･ω･)_/ﾟ･:*:･｡☆
    // Note: So as to help the integration of generated code produced by the tokenator
    // the implemention of RadioButtonComponentTokens is not here but in Core/Themes/Wireframe/Values/ComponentTokens/WireframeTheme+RadioButtonComponentTokens.swift
    // This declaration of WireframeThemeRadioButtonComponentTokensProvider is here also to allow to write documentation.
}

// swiftlint:enable type_name
