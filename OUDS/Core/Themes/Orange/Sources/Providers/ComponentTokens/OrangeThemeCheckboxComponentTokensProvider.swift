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

/// A class which wraps all **component  tokens of checkbox and radio button** for *radio button* and *checkboxes* objects
/// like `OUDSRadioButton`, `OUDSCheckbox` and `OUDSCheckboxItem`.
/// Contains also references to semantic tokens providers so as to be able to use them to define the component tokens.
/// This provider should be integrated as a `AllCheckboxComponentTokensProvider` implementation inside `OUDSTheme` so as to provide all tokens to the users.
/// It helps users to override some of the tokens and assign them to an `OUDSTheme` implementation to use.
/// Custom themes can use subclass of ``OrangeThemeCheckboxComponentTokensProvider`` and apply the provider they need.
/// It implements also the protocol `CheckboxComponentTokens` so as to expose the component tokens for *radio button* and *checkboxes* through any `OUDSTheme`.
/// *Radio button* and *checkboxes* components tokens are defined with raw and semantic tokens of sizes (from `SizeSemanticToken`), opacities (`OpacitySemanticToken`),
/// borders (`BorderRadiusSemanticToken`, `BorderWidthSemanticToken`) and colors (`MultipleColorSemanticTokens`).
/// These components share the same type of tokens which are all gather edhere.
///
/// ```swift
///     // Define your own provider for radio / checkbox component tokens
///     // by inheriting from existing provider
///     class CustomCheckboxComponentTokensProvider: OrangeThemeCheckboxComponentTokensProvider {
///
///         // Then override the radio / checkbox component tokens you want.
///
///         override var checkboxSizeMinWidth: SizeSemanticToken { sizes.sizeIconWithLabelLargeSizeXl }
///
///         override var checkboxBorderWidthSelected: BorderWidthSemanticToken { borders.borderWidthThin }
///
///         override var checkboxOpacityBgUnselectedFocus: OpacitySemanticToken { opacities.opacityStrong }
///
///         override var checkboxColorContentErrorPressed: MultipleColorSemanticTokens { colors.colorBgPrimary }
///
///         // ...
///     }
///
///     // Or define your own provider from scratch
///     class CustomCheckboxComponentTokensProvider: CheckboxComponentTokens {
///
///         // And implement hunders of tokens.
///         // You are allowed to give semantic tokens providers if you want to define values.
///     }
/// ```
///
/// Then, you can give this `CustomCheckboxComponentTokensProvider` to your own theme implementation:
///
/// ```swift
/// class LocalTheme: OrangeTheme {
///
///     override init() {
///         super.init(checkbox: CustomCheckboxComponentTokensProvider())
///     }
/// }
/// ```
///
/// or to an already existing theme for example:
///
/// ```swift
///     OrangeTheme(checkbox: CustomCheckboxComponentTokensProvider())
/// ```
///
/// It is also possible to use your own semantic tokens providers for this component tokens providers:
///
/// ```swift
///     // Uses by default here:
///     // - OrangeThemeSizeSemanticTokensProvider for sizes
///     // - OrangeThemeBorderSemanticTokensProvider for borders
///     // - OrangeThemeColorSemanticTokensProvider for colors
///     // - OrangeThemeOpacitySemanticTokensProvider for opacities
///     let checkboxComponentTokensProvider = OrangeThemeCheckboxComponentTokensProvider()
///
///     // Or use your own size, border, color and opacity semantic tokens providers (or only some)
///     let checkboxComponentTokensProvider = OrangeThemeCheckboxComponentTokensProvider(
///                                                 sizes: CustomSizeSemanticTokensProvider(),
///                                                 borders: CustomBorderSemanticTokensProvider(),
///                                                 colors: CustomColorSemanticTokensProvider(),
///                                                 opacities: CustomOpacitySemanticTokensProvider())
/// ```
/// - Since: 0.10.0
open class OrangeThemeCheckboxComponentTokensProvider: AllCheckboxComponentTokensProvider {

    /// Provider of size semantic tokens to use for check / radio sizes
    public let sizes: AllSizeSemanticTokensProvider

    /// Provider of border semantic tokens to use for check / radio borders
    public let borders: AllBorderSemanticTokensProvider

    /// Provider of color semantic tokens to use for check / radio colors
    public let colors: AllColorSemanticTokensProvider

    /// Provider of opacity semantic tokens to use for check / radio opacities
    public let opacities: AllOpacitySemanticTokensProvider

    /// Defines a provider of component tokens dedicated to `OUDSCheckbox` and `OUDSRadioButton`
    /// - Parameters:
    ///    - sizes: Provider for size semantic tokens. If nil, a default one will be used (``OrangeThemeSizeSemanticTokensProvider``)
    ///    - borders: Provider for border semantic tokens. If nil, a default one will be used (``OrangeThemeBorderSemanticTokensProvider``)
    ///    - colors: Provider for color semantic tokens. If nil, a default one will be used (``OrangeThemeColorSemanticTokensProvider``)
    ///    - opacities: Provider for opacitiy semantic tokens. If nil, a default one will be used (``OrangeThemeOpacitySemanticTokensProvider``)
    public init(sizes: AllSizeSemanticTokensProvider? = nil,
                borders: AllBorderSemanticTokensProvider? = nil,
                colors: AllColorSemanticTokensProvider? = nil,
                opacities: AllOpacitySemanticTokensProvider? = nil) {
        OL.debug("Init of OrangeThemeCheckboxComponentTokensProvider")
        self.sizes = (sizes ?? OrangeThemeSizeSemanticTokensProvider())
        self.borders = (borders ?? OrangeThemeBorderSemanticTokensProvider())
        self.colors = (colors ?? OrangeThemeColorSemanticTokensProvider())
        self.opacities = (opacities ?? OrangeThemeOpacitySemanticTokensProvider())
    }

    deinit { }

    // ଘ( ･ω･)_/ﾟ･:*:･｡☆
    // Note: So as to help the integration of generated code produced by the tokenator
    // the implemention of CheckboxComponentTokens is not here but in Core/Themes/Orange/Values/ComponentTokens/OrangeTheme+CheckboxComponentTokens.swift
    // This declaration of OrangeThemeCheckboxComponentTokensProvider is here also to allow to write documentation.
}

// swiftlint:enable type_name
