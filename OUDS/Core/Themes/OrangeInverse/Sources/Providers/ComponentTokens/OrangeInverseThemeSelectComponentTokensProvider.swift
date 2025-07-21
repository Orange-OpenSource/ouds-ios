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

/// A class which wraps all **component  tokens of select** for *select* objects like `OUDSSelect`.
/// Contains also references to semantic tokens providers so as to be able to use them to define the component tokens.
/// This provider should be integrated as a `AllSelectComponentTokensProvider` implementation inside `OUDSTheme` so as to provide
/// all tokens to the users. It helps users to override some of the tokens and assign them to an `OUDSTheme` implementation to use.
/// It implements also the protocol `SelectComponentTokens` so as to expose the component tokens for *select* through any `OUDSTheme`.
/// *Select* components tokens are defined with raw and semantic tokens of sizes (from `AllSizeSemanticTokensProvider`),
/// colors (from `AllColorSemanticTokensProvider`) and spaces (from `AllSpaceSemanticTokensProvider`).
///
/// - Since: 0.17.0
final class OrangeInverseThemeSelectComponentTokensProvider: AllSelectComponentTokensProvider {

    /// Provider of size semantic tokens to use for link sizes
    public let sizes: AllSizeSemanticTokensProvider

    /// Provider of color semantic tokens to use for link colors
    public let colors: AllColorSemanticTokensProvider

    /// Provider of spaces semantic tokens to use for link spaces
    public let spaces: AllSpaceSemanticTokensProvider

    #if DEBUG
    private nonisolated(unsafe) static var instanceCount: Int = 0
    #endif

    /// Defines a provider of component tokens dedicated to `OUDSSelect`
    /// - Parameters:
    ///    - sizes: Provider for size semantic tokens. If nil, a default one will be used (``OrangeInverseThemeSizeSemanticTokensProvider``)
    ///    - colors: Provider for color semantic tokens. If nil, a default one will be used (``OrangeInverseThemeColorSemanticTokensProvider``)
    ///    - spaces: Provider for space semantic tokens. If nil, a default one will be used (``OrangeInverseThemeSpaceSemanticTokensProvider``)
    public init(sizes: AllSizeSemanticTokensProvider? = nil,
                colors: AllColorSemanticTokensProvider? = nil,
                spaces: AllSpaceSemanticTokensProvider? = nil)
    {
        OL.debug("Init of OrangeInverseThemeSelectComponentTokensProvider")
        self.sizes = (sizes ?? OrangeInverseThemeSizeSemanticTokensProvider())
        self.colors = (colors ?? OrangeInverseThemeColorSemanticTokensProvider())
        self.spaces = (spaces ?? OrangeInverseThemeSpaceSemanticTokensProvider())
        #if DEBUG
        Self.instanceCount++
        checkInstances(count: Self.instanceCount, for: "OrangeInverseThemeSelectComponentTokensProvider")
        #endif
    }

    deinit {
        #if DEBUG
        Self.instanceCount--
        #endif
    }

    // ଘ( ･ω･)_/ﾟ･:*:･｡☆
    // Note: So as to help the integration of generated code produced by the tokenator
    // the implemention of SelectComponentTokens is not here but in Core/Themes/OrangeInverse/Values/ComponentTokens/OrangeInverseTheme+SelectComponentTokens.swift
    // This declaration of OrangeInverseThemeSelectComponentTokensProvider is here also to allow to write documentation.
}

// swiftlint:enable type_name
