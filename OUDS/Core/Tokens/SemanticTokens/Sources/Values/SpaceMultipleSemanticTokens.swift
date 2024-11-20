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

// [File not generated with the tokenator]
// WARNING: Not synchronized with the Figjam / Figma by developers team
// Create an issue for update https://github.com/Orange-OpenSource/ouds-ios/issues/new?template=token_update.yml

// swiftlint:disable missing_docs
// swiftlint:disable line_length

/// This is a group of semantic tokens for **spacings** but using `MultipleSpaceTokens`.
///
/// In fact the `MultipleSpaceTokens` class will help users (i.e. developers) to handle one semantic token for spacing containing values for compact (mobile) or regular (tablet) size classes.
/// Because *Figma* is not able to manage pair of values for one token, and its produced JSON does not reflect this mecanism, the *tokenator* cannot provide such `MultipleSpaceTokens`.
/// Thus the "real" color semantic tokens are declared in `SpaceSemanticTokens` protocol and defined inside `OUDSTheme`(to be overridable then by subthemes).
/// These tokens are updated by the *tokenator*. Then they are gathered and wrapped so as to be used easily thanks to this `SpaceMultipleSemanticTokens` which must be updated manually.
///
/// In few words:
///
///         // Some spacing raw tokens, defined by the tokenator (in DimensionRawTokens+Values.swift)
///         public static let dimension0: DimensionRawToken = 0
///         public static let dimension25: DimensionRawToken = 2
///
///         // The spacing semantic tokens using them,
///         // declared (in SpaceSemanticTokens.swift) and defined (in OUDSTheme+SpaceSemanticTokens.swift) by the tokenator
///         var spaceScaledNoneMobile: SpaceSemanticToken { DimensionRawTokens.dimension0 }
///         var spaceScaledNoneTablet: SpaceSemanticToken { DimensionRawTokens.dimension25 }
///
///         // The 'higher level' spacing semantic tokens wrapping them and exposed to users,
///         // declared (in SpaceMultipleSemanticTokens.swift) and defined (in OUDSTheme+SpaceMultipleSemanticTokens.swift) manualy
///         var spaceScaledNone: MultipleSpaceTokens { MultipleSpaceTokens(compact: spaceScaledNoneMobile, regular: spaceScaledNoneTablet) }
///
///         // Thus users can in their components use spaceScaledNone as defined in their design system
///         // (even if they are still able to use 'lower level' semantic tokens but it is more error-prone)
///
public protocol SpaceMultipleSemanticTokens {

    // MARK: Semantic token - Spacing - Scaled

    var spaceScaledNone: MultipleSpaceTokens { get }
    var spaceScaledSmash: MultipleSpaceTokens { get }
    var spaceScaledShortest: MultipleSpaceTokens { get }
    var spaceScaledShorter: MultipleSpaceTokens { get }
    var spaceScaledShort: MultipleSpaceTokens { get }
    var spaceScaledMedium: MultipleSpaceTokens { get }
    var spaceScaledTall: MultipleSpaceTokens { get }
    var spaceScaledTaller: MultipleSpaceTokens { get }
    var spaceScaledTallest: MultipleSpaceTokens { get }
    var spaceScaledSpacious: MultipleSpaceTokens { get }
}

// swiftlint:enable missing_docs
// swiftlint:enable line_length
