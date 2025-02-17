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
// swiftlint:disable identifier_name

/// Declares all component tokens for links components like `OUDSBulletList`
/// Use for tokens providers like `OrangeThemeBulletListComponentTokensProvider`.
///
/// - Since: 0.10.0
public protocol BulletListComponentTokens {

    // MARK: - Sizes

    var bulletListSizeMinHeightMedium: SizeSemanticToken { get }
    var bulletListSizeMinHeightSmall: SizeSemanticToken { get }
    var bulletListSizeMinWidthMedium: SizeSemanticToken { get }
    var bulletListSizeMinWidthSmall: SizeSemanticToken { get }
    var bulletListSizeIconMedium: SizeSemanticToken { get }
    var bulletListSizeIconSmall: SizeSemanticToken { get }

    // MARK: - Colors

    var bulletListColorContentEnabled: MultipleColorSemanticTokens { get }

    // MARK: - Spaces

    var bulletListSpaceColumnGapIconMedium: SpaceSemanticToken { get }
    var bulletListSpaceColumnGapIconSmall: SpaceSemanticToken { get }
    var bulletListSpacePaddingBlock: SpaceSemanticToken { get }
    var bulletListSpacePaddingInlineEndNone: SpaceSemanticToken { get }
    var bulletListSpacePaddingInlineStartIconMedium: SpaceSemanticToken { get }
    var bulletListSpacePaddingInlineStartIconSmall: SpaceSemanticToken { get }
}

// swiftlint:enable missing_docs
// swiftlint:enable identifier_name
