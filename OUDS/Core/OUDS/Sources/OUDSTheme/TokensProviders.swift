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

import OUDSTokensComponent
import OUDSTokensSemantic

// MARK: - Root

/// Protocol to add to any semantic or component tokens provider so as to be gather with all providers and given to the theme for initialization
public protocol TokensProvider {

    #if DEBUG
    // swiftlint:disable missing_docs
    func checkInstances(count: Int, for providerName: String)
    // swiftlint:enable missing_docs
    #endif
}

// MARK: - Semantic tokens providers

/// Something which provides all semantic tokens of border
public protocol AllBorderSemanticTokensProvider: TokensProvider, BorderSemanticTokens {}

/// Something which provides all semantic tokens of colors
public protocol AllColorSemanticTokensProvider: TokensProvider, ColorSemanticTokens, ColorMultipleSemanticTokens {}

/// Something which provides all semantic tokens of colors modes
public protocol AllColorModeSemanticTokensProvider: TokensProvider, ColorModeSemanticTokens, ColorModeMultipleSemanticTokens {}

/// Something which provides all semantic tokens of colors charts
public protocol AllColorChartSemanticTokensProvider: TokensProvider, ColorChartSemanticTokens, ColorChartMultipleSemanticTokens {}

/// Something which provides all semantic tokens of elevation
public protocol AllElevationSemanticTokensProvider: TokensProvider, ElevationSemanticTokens, ElevationCompositeSemanticTokens {}

/// Something which provides all semantic tokens of font
public protocol AllFontSemanticTokensProvider: TokensProvider, FontSemanticTokens, FontCompositeSemanticTokens, FontMultipleSemanticTokens {}

/// Something which provides all semantic tokens of grid
public protocol AllGridSemanticTokensProvider: TokensProvider, GridSemanticTokens {}

/// Something which provides all semantic tokens of opacity
public protocol AllOpacitySemanticTokensProvider: TokensProvider, OpacitySemanticTokens {}

/// Something which provides all semantic tokens of dimension
public protocol AllDimensionSemanticTokensProvider: TokensProvider, DimensionSemanticTokens {}

/// Something which provides all semantic tokens of size
public protocol AllSizeSemanticTokensProvider: TokensProvider, SizeSemanticTokens, SizeMultipleSemanticTokens {}

/// Something which provides all semantic tokens of space
public protocol AllSpaceSemanticTokensProvider: TokensProvider, SpaceSemanticTokens, SpaceMultipleSemanticTokens {}

// MARK: - Component tokens providers

// Keep things alphabetically sorted

/// Something which provides all component tokens of badge
public protocol AllBadgeComponentTokensProvider: TokensProvider, BadgeComponentTokens {}

/// Something which provides all component tokens of bullet list
public protocol AllBulletListComponentTokensProvider: TokensProvider, BulletListComponentTokens {}

/// Something which provides all component tokens of button
public protocol AllButtonComponentTokensProvider: TokensProvider, ButtonComponentTokens, ButtonMonoComponentTokens {}

/// Something which provides all component tokens of checkboxes
public protocol AllCheckboxComponentTokensProvider: TokensProvider, CheckboxComponentTokens {}

/// Something which provides all component tokens of chip
public protocol AllChipComponentTokensProvider: TokensProvider, ChipComponentTokens {}

/// Something which provides all component tokens for control-item-layout-based components
public protocol AllControlItemComponentTokensProvider: TokensProvider, ControlItemComponentTokens {}

/// Something which provides all component tokens of divider
public protocol AllDividerComponentTokensProvider: TokensProvider, DividerComponentTokens {}

/// Something which provides all component tokens of pin code input
public protocol AllPinCodeInputComponentTokensProvider: TokensProvider, PinCodeInputComponentTokens {}

/// Something which provides all component tokens of link
public protocol AllLinkComponentTokensProvider: TokensProvider, LinkComponentTokens, LinkMonoComponentTokens {}

/// Something which provides all component tokens of quantity input
public protocol AllQuantityInputComponentTokensProvider: TokensProvider, QuantityInputComponentTokens {}

/// Something which provides all component tokens of radio buttons
public protocol AllRadioButtonComponentTokensProvider: TokensProvider, RadioButtonComponentTokens {}

/// Something which provides all component tokens of select input
public protocol AllSelectInputComponentTokensProvider: TokensProvider, SelectInputComponentTokens {}

/// Something which provides all component tokens of skeleton
public protocol AllSkeletonComponentTokensProvider: TokensProvider, SkeletonComponentTokens {}

/// Something which provides all component tokens of switch / toggle
public protocol AllSwitchComponentTokensProvider: TokensProvider, SwitchComponentTokens {}

/// Something which provides all component tokens of tag
public protocol AllTagComponentTokensProvider: TokensProvider, TagComponentTokens {}

/// Something which provides all component tokens of tag input
public protocol AllTagInputComponentTokensProvider: TokensProvider, TagInputComponentTokens {}

/// Something which provides all component tokens of text area
public protocol AllTextAreaComponentTokensProvider: TokensProvider, TextAreaComponentTokens {}

/// Something which provides all component tokens of text input
public protocol AllTextInputComponentTokensProvider: TokensProvider, TextInputComponentTokens {}
