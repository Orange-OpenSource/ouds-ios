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

/// A class which wraps all **component  tokens of bullet list** for *bullet list* objects like `OUDSBulletList`.
/// Contains also references to semantic tokens providers so as to be able to use them to define the component tokens.
/// This provider should be integrated as a `AllBulletListComponentTokensProvider` implementation inside `OUDSTheme` so as to provide
/// all tokens to the users. It helps users to override some of the tokens and assign them to an `OUDSTheme` implementation to use.
/// Custom themes can use subclass of ``OrangeThemeBulletListComponentTokensProvider`` and apply the provider they need.
/// It implements also the protocol `BulletListComponentTokens` so as to expose the component tokens for *bullet list* through any `OUDSTheme`.
/// *Bullet list* components tokens are defined with raw and semantic tokens of spaces (from `AllSpaceSemanticTokensProvider`).
///
/// ```swift
///     // Define your own provider for bullet list component tokens
///     // by inheriting from existing provider
///     class CustomBulletListComponentTokensProvider: OrangeThemeBulletListComponentTokensProvider {
///
///         // Then override the bullet list component tokens you want.
///
///         override var spacePaddingBlock: SpaceSemanticToken { spaces.paddingInlineSmall }
///
///         // ...
///     }
///
///     // Or define your own provider from scratch
///     class CustomBulletListComponentTokensProvider: BulletListComponentTokens {
///
///         // And implement hunders of tokens.
///         // You are allowed to give semantic tokens providers if you want to define values.
///     }
/// ```
///
/// Then, you can give this `CustomBulletListComponentTokensProvider` to your own theme implementation:
///
/// ```swift
/// class LocalTheme: OrangeTheme {
///
///     override init() {
///         super.init(bulletList: CustomBulletListComponentTokensProvider())
///     }
/// }
/// ```
///
/// or to an already existing theme for example:
///
/// ```swift
///     OrangeTheme(bulletList: CustomBulletListComponentTokensProvider())
/// ```
///
/// It is also possible to use your own semantic tokens providers for this component tokens providers:
///
/// ```swift
///     // Uses by default here:
///     // - OrangeThemeSpaceSemanticTokensProvider for spaces
///     let bulletListComponentTokensProvider = OrangeThemeBulletListComponentTokensProvider()
///
///     // Or use your own size, color and space semantic tokens providers (or only some)
///     let bulletListComponentTokensProvider = OrangeThemeBulletListComponentTokensProvider(
///                                                 spaces: CustomSpaceSemanticTokensProvider())
/// ```
///
/// - Since: 0.10.0
open class OrangeThemeBulletListComponentTokensProvider: AllBulletListComponentTokensProvider {

    /// Provider of spaces semantic tokens to use for link spaces
    public let spaces: AllSpaceSemanticTokensProvider

    #if DEBUG
    nonisolated(unsafe) private static var instanceCount: Int = 0
    #endif

    /// Defines a provider of component tokens dedicated to `OUDSLink`
    /// - Parameter spaces: Provider for space semantic tokens. If nil, a default one will be used (``OrangeThemeSpaceSemanticTokensProvider``)
    public init(spaces: AllSpaceSemanticTokensProvider? = nil) {
        OL.debug("Init of OrangeThemeBulletListComponentTokensProvider")
        self.spaces = (spaces ?? OrangeThemeSpaceSemanticTokensProvider())
        #if DEBUG
        Self.instanceCount++
        checkInstances(count: Self.instanceCount, for: "OrangeThemeBulletListComponentTokensProvider")
        #endif
    }

    deinit {
        #if DEBUG
        Self.instanceCount--
        #endif
    }

    // ଘ( ･ω･)_/ﾟ･:*:･｡☆
    // Note: So as to help the integration of generated code produced by the tokenator
    // the implemention of BulletListComponentTokens is not here but in Core/Themes/Orange/Values/ComponentTokens/OrangeTheme+BulletListComponentTokens.swift
    // This declaration of OrangeThemeBulletListComponentTokensProvider is here also to allow to write documentation.
}

// swiftlint:enable type_name
