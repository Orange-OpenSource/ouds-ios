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
import OUDSTokensSemantic

// swiftlint:disable type_name

/// A class which wraps all **component  tokens of bullet list** for *bullet list* objects like `OUDSBulletList`.
/// Contains also references to semantic tokens providers so as to be able to use them to define the component tokens.
/// This provider should be integrated as a `AllBulletListComponentTokensProvider` implementation inside `OUDSTheme` so as to provide
/// all tokens to the users. It helps users to override some of the tokens and assign them to an `OUDSTheme` implementation to use.
/// Custom themes can use subclass of ``OrangeThemeBulletListComponentTokensProvider`` and apply the provider they need.
/// It implements also the protocol `BulletListComponentTokens` so as to expose the component tokens for *bullet list* through any `OUDSTheme`.
/// *Bullet list* components tokens are defined with raw and semantic tokens of sizes (from `AllSizeSemanticTokensProvider`),
/// colors (from `AllColorSemanticTokensProvider`) and spaces (from `AllSpaceSemanticTokensProvider`).
///
/// ```swift
///     // Define your own provider for bullet list component tokens
///     // by inheriting from existing provider
///     class CustomBulletListComponentTokensProvider: OrangeThemeBulletListComponentTokensProvider {
///
///         // Then override the bullet list component tokens you want.
///
///         override var bulletListSizeMinWidthSmall: SizeSemanticToken { DimensionRawTokens.dimension600 }
///
///         override var bulletListColorContentEnabled: MultipleColorSemanticTokens { colors.colorDecorativeSkinTint200 }
///
///         override var bulletListSpacePaddingBlock: SpaceSemanticToken { spaces.spacePaddingInlineShort }
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
///     // - OrangeThemeSizeSemanticTokensProvider for sizes
///     // - OrangeThemeColorSemanticTokensProvider for colors
///     // - OrangeThemeSpaceSemanticTokensProvider for spaces
///     let bulletListComponentTokensProvider = OrangeThemeBulletListComponentTokensProvider()
///
///     // Or use your own size, color and space semantic tokens providers (or only some)
///     let bulletListComponentTokensProvider = OrangeThemeBulletListComponentTokensProvider(
///                                                 sizes: CustomSizeSemanticTokensProvider(),
///                                                 colors: CustomColorSemanticTokensProvider
///                                                 spaces: CustomSpaceSemanticTokensProvider())
/// ```
///
/// - Since: 0.10.0
open class OrangeThemeBulletListComponentTokensProvider: AllBulletListComponentTokensProvider {

    /// Provider of size semantic tokens to use for link sizes
    public let sizes: AllSizeSemanticTokensProvider

    /// Provider of color semantic tokens to use for link colors
    public let colors: AllColorSemanticTokensProvider

    /// Provider of spaces semantic tokens to use for link spaces
    public let spaces: AllSpaceSemanticTokensProvider

    /// Defines a provider of component tokens dedicated to `OUDSLink`
    /// - Parameters:
    ///    - sizes: Provider for size semantic tokens. If nil, a default one will be used (``OrangeThemeSizeSemanticTokensProvider``)
    ///    - colors: Provider for color semantic tokens. If nil, a default one will be used (``OrangeThemeColorSemanticTokensProvider``)
    ///    - spaces: Provider for space semantic tokens. If nil, a default one will be used (``OrangeThemeSpaceSemanticTokensProvider``)
    public init(sizes: AllSizeSemanticTokensProvider? = nil,
                colors: AllColorSemanticTokensProvider? = nil,
                spaces: AllSpaceSemanticTokensProvider? = nil) {
        OL.debug("Init of OrangeThemeBulletListComponentTokensProvider")
        self.sizes = (sizes ?? OrangeThemeSizeSemanticTokensProvider())
        self.colors = (colors ?? OrangeThemeColorSemanticTokensProvider())
        self.spaces = (spaces ?? OrangeThemeSpaceSemanticTokensProvider())
    }

    deinit { }

    // ଘ( ･ω･)_/ﾟ･:*:･｡☆
    // Note: So as to help the integration of generated code produced by the tokenator
    // the implemention of BulletListComponentTokens is not here but in Core/Themes/Orange/Values/ComponentTokens/OrangeTheme+BulletListComponentTokens.swift
    // This declaration of OrangeThemeBulletListComponentTokensProvider is here also to allow to write documentation.
}

// swiftlint:enable type_name
