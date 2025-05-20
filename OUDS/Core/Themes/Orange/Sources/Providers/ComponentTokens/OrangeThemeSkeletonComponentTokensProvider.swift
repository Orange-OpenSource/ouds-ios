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

/// A class which wraps all **component  tokens of skeleton** for *skeleton* objects like `OUDSSkeleton`.
/// Contains also references to semantic tokens providers so as to be able to use them to define the component tokens.
/// This provider should be integrated as a `AllSkeletonComponentTokensProvider` implementation inside `OUDSTheme` so as to provide
/// all tokens to the users. It helps users to override some of the tokens and assign them to an `OUDSTheme` implementation to use.
/// Custom themes can use subclass of ``OrangeThemeSkeletonComponentTokensProvider`` and apply the provider they need.
/// It implements also the protocol `SkeletonComponentTokens` so as to expose the component tokens for *skeleton* through any `OUDSTheme`.
/// *Skeleton* components tokens are defined with semantic tokens of colors (from `AllColorSemanticTokensProvider`).
///
/// ```swift
///     // Define your own provider for skeleton component tokens
///     // by inheriting from existing provider
///     class CustomSkeletonComponentTokensProvider: OrangeThemeSkeletonComponentTokensProvider {
///
///         // Then override the skeleton component tokens you want.
///
///         override var skeletonColorGradientMiddle:  MultipleColorSemanticTokens { colors.colorRepositoryOpacityBlackHigher }
///
///         // ...
///     }
///
///     // Or define your own provider from scratch
///     class CustomSkeletonComponentTokensProvider: SkeletonComponentTokens {
///
///         // And implement maybe hundreds of tokens.
///         // You are allowed to use semantic tokens providers if you want to define values.
///     }
/// ```
///
/// Then, you can give this `CustomSkeletonComponentTokensProvider` to your own theme implementation:
///
/// ```swift
/// class LocalTheme: OrangeTheme {
///
///     override init() {
///         super.init(skeleton: CustomSkeletonComponentTokensProvider())
///     }
/// }
/// ```
///
/// or to an already existing theme for example:
///
/// ```swift
///     OrangeTheme(skeleton: CustomSkeletonComponentTokensProvider())
/// ```
///
/// It is also possible to use your own semantic tokens providers for this component tokens providers:
///
/// ```swift
///     // Uses by default here:
///     // - OrangeThemeColorSemanticTokensProvider for colors
///     let skeletonComponentTokensProvider = OrangeThemeSkeletonComponentTokensProvider()
///
///     // Or use your own color semantic tokens providers (or only some)
///     let skeletonComponentTokensProvider = OrangeThemeSkeletonComponentTokensProvider(
///                                                 colors: CustomColorSemanticTokensProvider())
/// ```
///
/// - Since: 0.9.0
open class OrangeThemeSkeletonComponentTokensProvider: AllSkeletonComponentTokensProvider {

    /// Provider of color semantic tokens to use for link colors
    public let colors: AllColorSemanticTokensProvider

    /// Defines a provider of component tokens dedicated to `OUDSSkeleton`
    /// - Parameter colors: Provider for color semantic tokens. If nil, a default one will be used (``OrangeThemeColorSemanticTokensProvider``)
    public init(colors: AllColorSemanticTokensProvider? = nil) {
        OL.debug("Init of OrangeThemeSkeletonComponentTokensProvider")
        self.colors = (colors ?? OrangeThemeColorSemanticTokensProvider())
    }

    deinit {}

    // ଘ( ･ω･)_/ﾟ･:*:･｡☆
    // Note: So as to help the integration of generated code produced by the tokenator
    // the implemention of SkeletonComponentTokens is not here but in Core/Themes/Orange/Values/ComponentTokens/OrangeTheme+SkeletonComponentTokens.swift
    // This declaration of OrangeThemeSkeletonComponentTokensProvider is here also to allow to write documentation.
}

// swiftlint:enable type_name
