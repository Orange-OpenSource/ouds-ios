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

/// A class which wraps all **component  tokens of input text** for *input text* objects like `OUDSTextInput`.
/// Contains also references to semantic tokens providers so as to be able to use them to define the component tokens.
/// This provider should be integrated as a `AllTextInputComponentTokensProvider` implementation inside `OUDSTheme` so as to provide
/// all tokens to the users. It helps users to override some of the tokens and assign them to an `OUDSTheme` implementation to use.
/// It implements also the protocol `InouttextComponentTokens` so as to expose the component tokens for *input text* through any `OUDSTheme`.
/// *Inout text* components tokens are defined with raw and semantic tokens of sizes (from `AllSizeSemanticTokensProvider`), colors (`AllColorSemanticTokensProvider`)
/// and spaces (from `AllSpaceSemanticTokensProvider`).
///
/// - Since: 0.17.0
final class OrangeInverseThemeTextInputComponentTokensProvider: AllTextInputComponentTokensProvider {

    /// Provider of size semantic tokens to use for text input sizes
    public let sizes: AllSizeSemanticTokensProvider

    /// Provider of border semantic tokens to use for text input sborders
    public let borders: AllBorderSemanticTokensProvider

    /// Provider of color semantic tokens to use for  text input colors
    public let colors: AllColorSemanticTokensProvider

    /// Provider of spaces semantic tokens to use for  text input spaces
    public let spaces: AllSpaceSemanticTokensProvider

    /// Provider of dimensions semantic tokens to use for  text input dimensions
    public let dimensions: AllDimensionSemanticTokensProvider

    #if DEBUG
    private nonisolated(unsafe) static var instanceCount: Int = 0
    #endif

    /// Defines a provider of component tokens dedicated to `OUDSButton`
    /// - Parameters:
    ///    - sizes: Provider for size semantic tokens. If nil, a default one will be used (`OrangeInverseThemeSizeSemanticTokensProvider`)
    ///    - borders: Provider for borders semantic tokens. If nil, a default one will be used (`OrangeInverseThemeBorderSemanticTokensProvider`)
    ///    - colors: Provider for color semantic tokens. If nil, a default one will be used (`OrangeInverseThemeColorSemanticTokensProvider`)
    ///    - spaces: Provider for space semantic tokens. If nil, a default one will be used (`OrangeInverseThemeSpaceSemanticTokensProvider`)
    ///    - dimensions: Provider for dimension semantic tokens. If nil, a default one will be used (`OrangeInverseThemeDimensionSemanticTokensProvider`)
    public init(sizes: AllSizeSemanticTokensProvider? = nil,
                borders: AllBorderSemanticTokensProvider? = nil,
                colors: AllColorSemanticTokensProvider? = nil,
                spaces: AllSpaceSemanticTokensProvider? = nil,
                dimensions: AllDimensionSemanticTokensProvider? = nil)
    {
        OL.debug("Init of OrangeInverseThemeTextInputComponentTokensProvider")
        self.sizes = (sizes ?? OrangeInverseThemeSizeSemanticTokensProvider())
        self.borders = (borders ?? OrangeInverseThemeBorderSemanticTokensProvider())
        self.colors = (colors ?? OrangeInverseThemeColorSemanticTokensProvider())
        self.spaces = (spaces ?? OrangeInverseThemeSpaceSemanticTokensProvider())
        self.dimensions = (dimensions ?? OrangeInverseThemeDimensionSemanticTokensProvider())
        #if DEBUG
        Self.instanceCount++
        checkInstances(count: Self.instanceCount, for: "OrangeInverseThemeTextInputComponentTokensProvider")
        #endif
    }

    deinit {
        #if DEBUG
        Self.instanceCount--
        #endif
    }

    // ଘ( ･ω･)_/ﾟ･:*:･｡☆
    // Note: So as to help the integration of generated code produced by the tokenator
    // the implemention of TextInputComponentTokens is not here but in Core/Themes/OrangeInverse/Values/ComponentTokens/OrangeInverseTheme+TextInputComponentTokens.swift
    // This declaration of OrangeInverseThemeTextInputComponentTokensProvider is here also to allow to write documentation.
}

// swiftlint:enable type_name
