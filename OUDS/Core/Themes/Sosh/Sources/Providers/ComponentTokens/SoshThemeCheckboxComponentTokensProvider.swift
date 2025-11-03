//
// Software Name: OUDSThemesContract iOS
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

/// A class which wraps all **component  tokens of checkbox** for  *checkboxes* objects
/// like `OUDSCheckbox` and `OUDSCheckboxItem`.
/// Contains also references to semantic tokens providers so as to be able to use them to define the component tokens.
/// This provider should be integrated as a `AllCheckboxComponentTokensProvider` implementation inside `OUDSTheme` so as to provide all tokens to the users.
/// It helps users to override some of the tokens and assign them to an `OUDSTheme` implementation to use.
/// It implements also the protocol `CheckboxComponentTokens` so as to expose the component tokens for *checkboxes* through any `OUDSTheme`.
/// *Checkboxes* components tokens are defined with raw and semantic tokens of sizes (from `SizeSemanticToken`) and
/// borders (`BorderRadiusSemanticToken`, `BorderWidthSemanticToken`).
/// These components share the same type of tokens which are all gathered here.
///
/// - Since: 0.17.0
final class SoshThemeCheckboxComponentTokensProvider: AllCheckboxComponentTokensProvider {

    /// Provider of size semantic tokens to use for checkbox sizes
    let sizes: AllSizeSemanticTokensProvider

    /// Provider of border semantic tokens to use for checkbox borders
    let borders: AllBorderSemanticTokensProvider

    #if DEBUG
    nonisolated(unsafe) private static var instanceCount: Int = 0
    #endif

    /// Defines a provider of component tokens dedicated to `OUDSCheckbox` and `OUDSCheckboxItem`
    /// - Parameters:
    ///    - sizes: Provider for size semantic tokens. If nil, a default one will be used (``SoshThemeSizeSemanticTokensProvider``)
    ///    - borders: Provider for border semantic tokens. If nil, a default one will be used (``SoshThemeBorderSemanticTokensProvider``)
    init(sizes: AllSizeSemanticTokensProvider? = nil,
         borders: AllBorderSemanticTokensProvider? = nil)
    {
        OL.debug("Init of SoshThemeCheckboxComponentTokensProvider")
        self.sizes = (sizes ?? SoshThemeSizeSemanticTokensProvider())
        self.borders = (borders ?? SoshThemeBorderSemanticTokensProvider())
        #if DEBUG
        Self.instanceCount++
        checkInstances(count: Self.instanceCount, for: "SoshThemeCheckboxComponentTokensProvider")
        #endif
    }

    deinit {
        #if DEBUG
        Self.instanceCount--
        #endif
    }

    // ଘ( ･ω･)_/ﾟ･:*:･｡☆
    // Note: So as to help the integration of generated code produced by the tokenator
    // the implemention of CheckboxComponentTokens is not here but in Core/Themes/Sosh/Values/ComponentTokens/SoshTheme+CheckboxComponentTokens.swift
    // This declaration of SoshThemeCheckboxComponentTokensProvider is here also to allow to write documentation.
}
