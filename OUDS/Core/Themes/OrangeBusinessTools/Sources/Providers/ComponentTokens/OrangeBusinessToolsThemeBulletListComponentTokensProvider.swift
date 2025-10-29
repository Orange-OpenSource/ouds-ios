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
// swiftlint:disable line_length

/// A class which wraps all **component  tokens of bullet list** for *bullet list* objects like `OUDSBulletList`.
/// Contains also references to semantic tokens providers so as to be able to use them to define the component tokens.
/// This provider should be integrated as a `AllBulletListComponentTokensProvider` implementation inside `OUDSTheme` so as to provide
/// all tokens to the users. It helps users to override some of the tokens and assign them to an `OUDSTheme` implementation to use.
/// It implements also the protocol `BulletListComponentTokens` so as to expose the component tokens for *bullet list* through any `OUDSTheme`.
/// *Bullet list* components tokens are defined with raw and semantic tokens of spaces (from `AllSpaceSemanticTokensProvider`).
///
/// - Since: 0.17.0
final class OrangeBusinessToolsThemeBulletListComponentTokensProvider: AllBulletListComponentTokensProvider {

    /// Provider of spaces semantic tokens to use for link spaces
    let spaces: AllSpaceSemanticTokensProvider

    #if DEBUG
    nonisolated(unsafe) private static var instanceCount: Int = 0
    #endif

    /// Defines a provider of component tokens dedicated to `OUDSLink`
    /// - Parameter spaces: Provider for space semantic tokens. If nil, a default one will be used (``OrangeBusinessToolsThemeSpaceSemanticTokensProvider``)
    init(spaces: AllSpaceSemanticTokensProvider? = nil) {
        OL.debug("Init of OrangeBusinessToolsThemeBulletListComponentTokensProvider")
        self.spaces = (spaces ?? OrangeBusinessToolsThemeSpaceSemanticTokensProvider())
        #if DEBUG
        Self.instanceCount++
        checkInstances(count: Self.instanceCount, for: "OrangeBusinessToolsThemeBulletListComponentTokensProvider")
        #endif
    }

    deinit {
        #if DEBUG
        Self.instanceCount--
        #endif
    }

    // ଘ( ･ω･)_/ﾟ･:*:･｡☆
    // Note: So as to help the integration of generated code produced by the tokenator
    // the implemention of BulletListComponentTokens is not here but in Core/Themes/OrangeBusinessTools/Values/ComponentTokens/OrangeBusinessToolsTheme+BulletListComponentTokens.swift
    // This declaration of OrangeBusinessToolsThemeBulletListComponentTokensProvider is here also to allow to write documentation.
}

// swiftlint:enable type_name
// swiftlint:enable line_length
