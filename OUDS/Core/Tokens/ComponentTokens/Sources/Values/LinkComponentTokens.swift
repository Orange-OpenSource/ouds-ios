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

/// Declares all component tokens for links components like `OUDSLink`
/// Use for tokens providers like `OrangeThemeLinkComponentTokensProvider`.
///
/// - Since: 0.10.0
public protocol LinkComponentTokens {

    // MARK: - Sizes

    var linkSizeMinHeightMedium: SizeSemanticToken { get }
    var linkSizeMinWidthMedium: SizeSemanticToken { get }
    var linkSizeMinHeightSmall: SizeSemanticToken { get }
    var linkSizeMinWidthSmall: SizeSemanticToken { get }
    var linkSizeIconMedium: SizeSemanticToken { get }
    var linkSizeIconSmall: SizeSemanticToken { get }

    // MARK: - Colors

    var linkColorContentEnabledMono: MultipleColorSemanticTokens { get }
    var linkColorContentHoverMono: MultipleColorSemanticTokens { get }
    var linkColorContentPressedMono: MultipleColorSemanticTokens { get }
    var linkColorContentFocusMono: MultipleColorSemanticTokens { get }
    var linkColorContentDisabledMono: MultipleColorSemanticTokens { get }
    var linkColorContentEnabled: MultipleColorSemanticTokens { get }
    var linkColorContentHover: MultipleColorSemanticTokens { get }
    var linkColorContentPressed: MultipleColorSemanticTokens { get }
    var linkColorContentFocus: MultipleColorSemanticTokens { get }
    var linkColorArrowEnabled: MultipleColorSemanticTokens { get }
    var linkColorArrowHover: MultipleColorSemanticTokens { get }
    var linkColorArrowPressed: MultipleColorSemanticTokens { get }
    var linkColorArrowFocus: MultipleColorSemanticTokens { get }

    // MARK: - Spaces

    var linkSpacePaddingInline: SpaceSemanticToken { get }
    var linkSpacePaddingBlock: SpaceSemanticToken { get }
    var linkSpaceColumnGapIconMedium: SpaceSemanticToken { get }
    var linkSpaceColumnGapIconSmall: SpaceSemanticToken { get }
    var linkSpaceColumnGapArrowMedium: SpaceSemanticToken { get }
    var linkSpaceColumnGapArrowSmall: SpaceSemanticToken { get }
}

// swiftlint:enable missing_docs
