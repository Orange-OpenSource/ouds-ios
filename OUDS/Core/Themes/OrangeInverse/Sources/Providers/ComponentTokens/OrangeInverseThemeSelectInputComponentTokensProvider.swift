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

/// A class which wraps all **component  tokens of select input** for objects like `OUDSSelectInput`.
/// Contains also references to semantic tokens providers so as to be able to use them to define the component tokens.
/// This provider should be integrated as a `AllSelectInputComponentTokensProvider` implementation inside `OUDSTheme` so as to provide
/// all tokens to the users. It helps users to override some of the tokens and assign them to an `OUDSTheme` implementation to use.
/// It implements also the protocol `SelectInputComponentTokens` so as to expose the component tokens for *select* through any `OUDSTheme`.
/// *Select input* components tokens are defined with semantic tokens of sizes (from `AllSizeSemanticTokensProvider`).
///
/// - Since: 0.17.0
final class OrangeInverseThemeSelectInputComponentTokensProvider: AllSelectInputComponentTokensProvider {

    /// Provider of size semantic tokens to use for link sizes
    public let sizes: AllSizeSemanticTokensProvider

    #if DEBUG
    private nonisolated(unsafe) static var instanceCount: Int = 0
    #endif

    /// Defines a provider of component tokens dedicated to `OUDSSelect`
    /// - Parameter sizes: Provider for size semantic tokens. If nil, a default one will be used (``OrangeInverseThemeSizeSemanticTokensProvider``)

    public init(sizes: AllSizeSemanticTokensProvider? = nil) {
        OL.debug("Init of OrangeInverseThemeSelectInputComponentTokensProvider")
        self.sizes = (sizes ?? OrangeInverseThemeSizeSemanticTokensProvider())
        #if DEBUG
        Self.instanceCount++
        checkInstances(count: Self.instanceCount, for: "OrangeInverseThemeSelectInputComponentTokensProvider")
        #endif
    }

    deinit {
        #if DEBUG
        Self.instanceCount--
        #endif
    }

    // ଘ( ･ω･)_/ﾟ･:*:･｡☆
    // Note: So as to help the integration of generated code produced by the tokenator
    // the implemention of SelectComponentTokens is not here but in Core/Themes/OrangeInverse/Values/ComponentTokens/OrangeInverseTheme+SelectInputComponentTokens.swift
    // This declaration of OrangeInverseThemeSelectInputComponentTokensProvider is here also to allow to write documentation.
}

// swiftlint:enable type_name
