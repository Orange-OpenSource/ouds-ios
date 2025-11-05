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

import OUDSFoundations
import OUDSThemesContract

/// A class which wraps all **component  tokens of badge** for *badge* objects like `OUDSBadge`.
/// Contains also references to semantic tokens providers so as to be able to use them to define the component tokens.
/// This provider should be integrated as a `AllBadgeComponentTokensProvider` implementation inside `OUDSTheme` so as to provide
/// all tokens to the users. It helps users to override some of the tokens and assign them to an `OUDSTheme` implementation to use.
/// Custom themes can use subclass of ``OrangeThemeBadgeComponentTokensProvider`` and apply the provider they need.
/// It implements also the protocol `BadgeComponentTokens` so as to expose the component tokens for *badge* through any `OUDSTheme`.
/// *Badge* components tokens are defined with semantic tokens of dimensions (`AllDimensionSemanticTokensProviders`),
/// and spaces (from `AllSpaceSemanticTokensProvider`).
///
/// ```swift
///     // Define your own provider for badge component tokens
///     // by inheriting from existing provider
///     class CustomBadgeComponentTokensProvider: OrangeThemeBadgeComponentTokensProvider {
///
///         // Then override the badge component tokens you want.
///
///         override var sizeXsmall: SizeSemanticToken { DimensionRawTokens._100 }
///
///         override var spaceInset: SpaceSemanticToken { DimensionRawTokens.outOfSystem75 }
///
///         // ...
///     }
///
///     // Or define your own provider from scratch
///     class CustomBadgeComponentTokensProvider: BadgeComponentTokens {
///
///         // And implement hundreds of tokens.
///         // You are allowed to give semantic tokens providers if you want to define values.
///     }
/// ```
///
/// Then, you can give this `CustomBadgeComponentTokensProvider` to your own theme implementation:
///
/// ```swift
/// class LocalTheme: OrangeTheme {
///
///     override init() {
///         super.init(badge: CustomBadgeComponentTokensProvider())
///     }
/// }
/// ```
///
/// or to an already existing theme for example:
///
/// ```swift
///     OrangeTheme(badge: CustomBadgeComponentTokensProvider())
/// ```
///
/// It is also possible to use your own semantic tokens providers for this component tokens providers:
///
/// ```swift
///     // Uses by default here:
///     // - OrangeThemeSizeSemanticTokensProvider for sizes
///     let badgeComponentTokensProvider = OrangeThemeBadgeComponentTokensProvider()
///
///     // Or use your own _ and space semantic tokens provider
///     let badgeComponentTokensProvider = OrangeThemeBadgeComponentTokensProvider(
///                     spaces: CustomSpaceSemanticTokensProvider(),
///                     dimensions: CustomDimensionSemanticTokensProvider())
/// ```
///
/// - Since: 0.10.0
open class OrangeThemeBadgeComponentTokensProvider: AllBadgeComponentTokensProvider {

    /// Provider of spaces semantic tokens to use for badge spaces
    public let spaces: AllSpaceSemanticTokensProvider

    /// Provider of _ semantic tokens to use for spaces as the Swift package exposes "closed" tokens of Figma
    public let dimensions: AllDimensionSemanticTokensProvider

    #if DEBUG
    nonisolated(unsafe) private static var instanceCount: Int = 0
    #endif
    /// Defines a provider of component tokens dedicated to `OUDSBadge`
    /// - Parameters:
    ///    - spaces: Provider for space semantic tokens, if nil, a default one will be used (``OrangeThemeSpaceSemanticTokensProvider``)
    ///    - dimensions: Provider for _ semantic tokens, if nil, default one will be used ( ``OrangeThemeDimensionSemanticTokensProvider``)
    public init(spaces: AllSpaceSemanticTokensProvider? = nil,
                dimensions: AllDimensionSemanticTokensProvider? = nil)
    {
        OL.debug("Init of OrangeThemeBadgeComponentTokensProvider")
        self.spaces = (spaces ?? OrangeThemeSpaceSemanticTokensProvider())
        self.dimensions = (dimensions ?? OrangeThemeDimensionSemanticTokensProvider())
        #if DEBUG
        Self.instanceCount++
        checkInstances(count: Self.instanceCount, for: "OrangeThemeBadgeComponentTokensProvider")
        #endif
    }

    deinit {
        #if DEBUG
        Self.instanceCount--
        #endif
    }

    // ଘ( ･ω･)_/ﾟ･:*:･｡☆
    // Note: So as to help the integration of generated code produced by the tokenator
    // the implemention of BadgeComponentTokens is not here but in Core/Themes/Orange/Values/ComponentTokens/OrangeTheme+BadgeComponentTokens.swift
    // This declaration of OrangeThemeBadgeComponentTokensProvider is here also to allow to write documentation.
}
