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

/// A class which wraps all **component  tokens of skeleton** for *skeleton* objects like `OUDSSkeleton`.
/// Contains also references to semantic tokens providers so as to be able to use them to define the component tokens.
/// This provider should be integrated as a `AllSkeletonComponentTokensProvider` implementation inside `OUDSTheme` so as to provide
/// all tokens to the users. It helps users to override some of the tokens and assign them to an `OUDSTheme` implementation to use.
/// It implements also the protocol `SkeletonComponentTokens` so as to expose the component tokens for *skeleton* through any `OUDSTheme`.
/// *Skeleton* components tokens are defined with semantic tokens of colors (from `AllColorSemanticTokensProvider`).
///
/// - Since: 0.17.0
final class SoshThemeSkeletonComponentTokensProvider: AllSkeletonComponentTokensProvider {

    /// Provider of color semantic tokens to use for link colors
    let colors: AllColorSemanticTokensProvider

    #if DEBUG
    nonisolated(unsafe) private static var instanceCount: Int = 0
    #endif

    /// Defines a provider of component tokens dedicated to `OUDSSkeleton`
    /// - Parameter colors: Provider for color semantic tokens. If nil, a default one will be used (``SoshThemeColorSemanticTokensProvider``)
    init(colors: AllColorSemanticTokensProvider? = nil) {
        OL.debug("Init of SoshThemeSkeletonComponentTokensProvider")
        self.colors = (colors ?? SoshThemeColorSemanticTokensProvider())
        #if DEBUG
        Self.instanceCount++
        checkInstances(count: Self.instanceCount, for: "SoshThemeSkeletonComponentTokensProvider")
        #endif
    }

    deinit {
        #if DEBUG
        Self.instanceCount--
        #endif
    }

    // ଘ( ･ω･)_/ﾟ･:*:･｡☆
    // Note: So as to help the integration of generated code produced by the tokenator
    // the implemention of SkeletonComponentTokens is not here but in Core/Themes/Sosh/Values/ComponentTokens/SoshTheme+SkeletonComponentTokens.swift
    // This declaration of SoshThemeSkeletonComponentTokensProvider is here also to allow to write documentation.
}
