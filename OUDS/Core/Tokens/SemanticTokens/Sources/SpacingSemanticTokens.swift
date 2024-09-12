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

import Foundation
import OUDSTokensRaw

// MARK: - Type aliases to keep grammar clear

/// Basically a space semantic token for layout is a dimension raw token, it has the same final type
public typealias SpacingLayoutSemanticToken = DimensionRawToken

/// Basically a space semantic token for padding inline is a dimension raw token, it has the same final type
public typealias SpacingPaddingInlineSemanticToken = DimensionRawToken

/// Basically a space semantic token for padding block is a dimension raw token, it has the same final type
public typealias SpacingPaddingBlockSemanticToken = DimensionRawToken

/// Basically a space semantic token for padding inset is a dimension raw token, it has the same final type
public typealias SpacingPaddingInsetSemanticToken = DimensionRawToken

/// Basically a space semantic token for gap inline is a dimension raw token, it has the same final type
public typealias SpacingGapInlineSemanticToken = DimensionRawToken

/// Basically a space semantic token for gap stack is a dimension raw token, it has the same final type
public typealias SpacingGapStackSemanticToken = DimensionRawToken

// MARK: Semantic tokens

// MARK: - Composite Semantic Token

/// Composite semantic tokens which will wrap a combination of `DimensionRawToken` depending to viewports.
public final class SpacingCompositeSemanticToken: NSObject {

    /// For **extra-compact** and **compact** viewports
    public let compact: DimensionRawToken
    /// For **regular** and **medium** viewports
    public let regular: DimensionRawToken

    public init(compact: DimensionRawToken, regular: DimensionRawToken) {
        self.compact = compact
        self.regular = regular
    }

    public override func isEqual(_ object: Any?) -> Bool {
        guard let other = object as? SpacingCompositeSemanticToken else { return false }
        return self.compact == other.compact && self.regular == other.regular
    }
}

// MARK: - Spacing Semantic Tokens

/// This is a group of semantic tokens for **spacing**.
/// It defines all `SpacingSemanticToken` a theme must have.
public protocol SpacingSemanticTokens {

    // MARK: Semantic token - Spacing - Layout fix

    var spaceLayoutFixNone: SpacingLayoutSemanticToken { get }
    var spaceLayoutFixSmash: SpacingLayoutSemanticToken { get }
    var spaceLayoutFixShortest: SpacingLayoutSemanticToken { get }
    var spaceLayoutFixShorter: SpacingLayoutSemanticToken { get }
    var spaceLayoutFixShort: SpacingLayoutSemanticToken { get }
    var spaceLayoutFixMedium: SpacingLayoutSemanticToken { get }
    var spaceLayoutFixTall: SpacingLayoutSemanticToken { get }
    var spaceLayoutFixTaller: SpacingLayoutSemanticToken { get }
    var spaceLayoutFixTallest: SpacingLayoutSemanticToken { get }
    var spaceLayoutFixSpacious: SpacingLayoutSemanticToken { get }

    // MARK: Semantic token - Spacing - Layout fluid

    var spaceLayoutFluidNone: SpacingCompositeSemanticToken { get }
    var spaceLayoutFluidSmash: SpacingCompositeSemanticToken { get }
    var spaceLayoutFluidShortest: SpacingCompositeSemanticToken { get }
    var spaceLayoutFluidShorter: SpacingCompositeSemanticToken { get }
    var spaceLayoutFluidShort: SpacingCompositeSemanticToken { get }
    var spaceLayoutFluidMedium: SpacingCompositeSemanticToken { get }
    var spaceLayoutFluidTall: SpacingCompositeSemanticToken { get }
    var spaceLayoutFluidTaller: SpacingCompositeSemanticToken { get }
    var spaceLayoutFluidTallest: SpacingCompositeSemanticToken { get }
    var spaceLayoutFluidSpacious: SpacingCompositeSemanticToken { get }

    // MARK: Semantic token - Spacing - Padding - Padding inline

    var spacePaddingInlineComponentNone: SpacingPaddingInlineSemanticToken { get }
    var spacePaddingInlineComponentShorter: SpacingPaddingInlineSemanticToken { get }
    var spacePaddingInlineComponentShort: SpacingPaddingInlineSemanticToken { get }
    var spacePaddingInlineComponentMedium: SpacingPaddingInlineSemanticToken { get }
    var spacePaddingInlineComponentTall: SpacingPaddingInlineSemanticToken { get }
    var spacePaddingInlineComponentTaller: SpacingPaddingInlineSemanticToken { get }
    var spacePaddingInlineComponentIsIconNone: SpacingPaddingInlineSemanticToken { get }
    var spacePaddingInlineComponentIsIconShorter: SpacingPaddingInlineSemanticToken { get }
    var spacePaddingInlineComponentIsIconShort: SpacingPaddingInlineSemanticToken { get }
    var spacePaddingInlineComponentIsIconMedium: SpacingPaddingInlineSemanticToken { get }
    var spacePaddingInlineComponentIsIconTall: SpacingPaddingInlineSemanticToken { get }
    var spacePaddingInlineComponentIsIconTaller: SpacingPaddingInlineSemanticToken { get }
    var spacePaddingInlineComponentIsArrowNone: SpacingPaddingInlineSemanticToken { get }
    var spacePaddingInlineComponentIsArrowShorter: SpacingPaddingInlineSemanticToken { get }
    var spacePaddingInlineComponentIsArrowShort: SpacingPaddingInlineSemanticToken { get }
    var spacePaddingInlineComponentIsArrowMedium: SpacingPaddingInlineSemanticToken { get }
    var spacePaddingInlineComponentIsArrowTall: SpacingPaddingInlineSemanticToken { get }
    var spacePaddingInlineComponentIsArrowTaller: SpacingPaddingInlineSemanticToken { get }

    // MARK: Semantic token - Spacing - Padding - Padding stack

    var spacePaddingBlockComponentNone: SpacingPaddingInlineSemanticToken { get }
    var spacePaddingBlockComponentShorter: SpacingPaddingInlineSemanticToken { get }
    var spacePaddingBlockComponentShort: SpacingPaddingInlineSemanticToken { get }
    var spacePaddingBlockComponentMedium: SpacingPaddingInlineSemanticToken { get }
    var spacePaddingBlockComponentTall: SpacingPaddingInlineSemanticToken { get }
    var spacePaddingBlockComponentTaller: SpacingPaddingInlineSemanticToken { get }
    var spacePaddingBlockComponentIsIconNone: SpacingPaddingInlineSemanticToken { get }
    var spacePaddingBlockComponentIsIconShorter: SpacingPaddingInlineSemanticToken { get }
    var spacePaddingBlockComponentIsIconShort: SpacingPaddingInlineSemanticToken { get }
    var spacePaddingBlockComponentIsIconMedium: SpacingPaddingInlineSemanticToken { get }
    var spacePaddingBlockComponentIsIconTall: SpacingPaddingInlineSemanticToken { get }
    var spacePaddingBlockComponentIsIconTaller: SpacingPaddingInlineSemanticToken { get }

    // MARK: Semantic token - Spacing - Padding - Padding inset

    var spaceInsetComponentNone: SpacingPaddingInlineSemanticToken { get }
    var spaceInsetComponentSmash: SpacingPaddingInlineSemanticToken { get }
    var spaceInsetComponentShortest: SpacingPaddingInlineSemanticToken { get }
    var spaceInsetComponentShorter: SpacingPaddingInlineSemanticToken { get }
    var spaceInsetComponentShort: SpacingPaddingInlineSemanticToken { get }
    var spaceInsetComponentMedium: SpacingPaddingInlineSemanticToken { get }
    var spaceInsetComponentTall: SpacingPaddingInlineSemanticToken { get }
    var spaceInsetComponentTaller: SpacingPaddingInlineSemanticToken { get }
    var spaceInsetComponentTallest: SpacingPaddingInlineSemanticToken { get }
    var spaceInsetComponentSpacious: SpacingPaddingInlineSemanticToken { get }

    // MARK: Semantic token - Spacing - Padding - Gap inline

    var spaceColumnGapComponentNone: SpacingPaddingInlineSemanticToken { get }
    var spaceColumnGapComponentShorter: SpacingPaddingInlineSemanticToken { get }
    var spaceColumnGapComponentShort: SpacingPaddingInlineSemanticToken { get }
    var spaceColumnGapComponentMedium: SpacingPaddingInlineSemanticToken { get }
    var spaceColumnGapComponentTall: SpacingPaddingInlineSemanticToken { get }
    var spaceColumnGapComponentTaller: SpacingPaddingInlineSemanticToken { get }
    var spaceColumnGapComponentIsIconNone: SpacingPaddingInlineSemanticToken { get }
    var spaceColumnGapComponentIsIconShorter: SpacingPaddingInlineSemanticToken { get }
    var spaceColumnGapComponentIsIconShort: SpacingPaddingInlineSemanticToken { get }
    var spaceColumnGapComponentIsIconMedium: SpacingPaddingInlineSemanticToken { get }
    var spaceColumnGapComponentIsIconTall: SpacingPaddingInlineSemanticToken { get }
    var spaceColumnGapComponentIsIconTaller: SpacingPaddingInlineSemanticToken { get }
    var spaceColumnGapComponentIsArrowNone: SpacingPaddingInlineSemanticToken { get }
    var spaceColumnGapComponentIsArrowShorter: SpacingPaddingInlineSemanticToken { get }
    var spaceColumnGapComponentIsArrowShort: SpacingPaddingInlineSemanticToken { get }
    var spaceColumnGapComponentIsArrowMedium: SpacingPaddingInlineSemanticToken { get }
    var spaceColumnGapComponentIsArrowTall: SpacingPaddingInlineSemanticToken { get }
    var spaceColumnGapComponentIsArrowTaller: SpacingPaddingInlineSemanticToken { get }

    // MARK: Semantic token - Spacing - Padding - Gap stack

    var spaceRowGapComponentNone: SpacingGapStackSemanticToken { get }
    var spaceRowGapComponentShorter: SpacingGapStackSemanticToken { get }
    var spaceRowGapComponentShort: SpacingGapStackSemanticToken { get }
    var spaceRowGapComponentMedium: SpacingGapStackSemanticToken { get }
    var spaceRowGapComponentTall: SpacingGapStackSemanticToken { get }
    var spaceRowGapComponentTaller: SpacingGapStackSemanticToken { get }
    var spaceRowGapComponentIsIconNone: SpacingGapStackSemanticToken { get }
    var spaceRowGapComponentIsIconShorter: SpacingGapStackSemanticToken { get }
    var spaceRowGapComponentIsIconShort: SpacingGapStackSemanticToken { get }
    var spaceRowGapComponentIsIconMedium: SpacingGapStackSemanticToken { get }
    var spaceRowGapComponentIsIconTall: SpacingGapStackSemanticToken { get }
    var spaceRowGapComponentIsIconTaller: SpacingGapStackSemanticToken { get }
}
