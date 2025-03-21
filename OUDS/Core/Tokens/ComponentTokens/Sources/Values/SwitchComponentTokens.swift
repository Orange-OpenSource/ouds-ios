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

import OUDSTokensSemantic

// [File not generated by the tokenator]
// WARNING: Not synchronized anymore with the Figjam / Figma by developers team
// Create an issue for update https://github.com/Orange-OpenSource/ouds-ios/issues/new?template=token_update.yml

// swiftlint:disable missing_docs

/// Declares all component tokens for switch components like `OUDSSwitch`
/// Use for tokens providers like `OrangeThemeSwitchComponentTokensProvider`.
///
/// - Since: 0.10.0
public protocol SwitchComponentTokens {

    // MARK: - Colors

    var switchColorCheck: MultipleColorSemanticTokens { get }
    var switchColorCursor: MultipleColorSemanticTokens { get }
    var switchColorTrackFalse: MultipleColorSemanticTokens { get }
    var switchColorTrackFalseInteraction: MultipleColorSemanticTokens { get }
    var switchColorTrackTrue: MultipleColorSemanticTokens { get }
    var switchColorTrackTrueInteraction: MultipleColorSemanticTokens { get }

    // MARK: - Spaces

    var switchSpacePaddingInlineUnselected: SpaceSemanticToken { get }
    var switchSpacePaddingInlineSelected: SpaceSemanticToken { get }

    // MARK: - Sizes

    var switchSize: SizeSemanticToken { get }
}

// swiftlint:enable missing_docs
