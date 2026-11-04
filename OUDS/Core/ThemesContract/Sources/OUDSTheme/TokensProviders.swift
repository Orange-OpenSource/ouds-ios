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

// swiftlint:disable type_name

// MARK: - Root

/// Protocol to add to any semantic or component tokens provider so as to be gather with all providers and given to the theme for initialization
@available(iOS 15, macOS 13, visionOS 1, watchOS 11, tvOS 16, *)
public protocol TokensProvider {

    #if DEBUG
    // swiftlint:disable missing_docs
    func checkInstances(count: Int, for providerName: String)
    // swiftlint:enable missing_docs
    #endif
}

// MARK: - Semantic tokens providers

/// Something which provides all semantic tokens of border
@available(iOS 15, macOS 13, visionOS 1, watchOS 11, tvOS 16, *)
public protocol AllBorderSemanticTokensProvider: TokensProvider, BorderSemanticTokens {}

/// Something which provides all semantic tokens of colors
@available(iOS 15, macOS 13, visionOS 1, watchOS 11, tvOS 16, *)
public protocol AllColorSemanticTokensProvider: TokensProvider, ColorSemanticTokens, ColorMultipleSemanticTokens {}

/// Something which provides all semantic tokens of colors modes
@available(iOS 15, macOS 13, visionOS 1, watchOS 11, tvOS 16, *)
public protocol AllColorModeSemanticTokensProvider: TokensProvider, ColorModeSemanticTokens, ColorModeMultipleSemanticTokens {}

/// Something which provides all semantic tokens of colors charts
@available(iOS 15, macOS 13, visionOS 1, watchOS 11, tvOS 16, *)
public protocol AllColorChartSemanticTokensProvider: TokensProvider, ColorChartSemanticTokens, ColorChartMultipleSemanticTokens {}

/// Something which provides all semantic tokens of colors charts
@available(iOS 15, macOS 13, visionOS 1, watchOS 11, tvOS 16, *)
public protocol AllColorDecorativeSemanticTokensProvider: TokensProvider, ColorDecorativeSemanticTokens {}

/// Something which provides all semantic tokens of effects
@available(iOS 15, macOS 13, visionOS 1, watchOS 11, tvOS 16, *)
public protocol AllEffectSemanticTokensProvider: TokensProvider, EffectSemanticTokens {}

/// Something which provides all semantic tokens of elevation
@available(iOS 15, macOS 13, visionOS 1, watchOS 11, tvOS 16, *)
public protocol AllElevationSemanticTokensProvider: TokensProvider, ElevationSemanticTokens, ElevationMultipleSemanticTokens, ElevationCompositeSemanticTokens {}

/// Something which provides all semantic tokens of font
@available(iOS 15, macOS 13, visionOS 1, watchOS 11, tvOS 16, *)
public protocol AllFontSemanticTokensProvider: TokensProvider, FontSemanticTokens, FontCompositeSemanticTokens, FontMultipleSemanticTokens {}

/// Something which provides all semantic tokens of grid
@available(iOS 15, macOS 13, visionOS 1, watchOS 11, tvOS 16, *)
public protocol AllGridSemanticTokensProvider: TokensProvider, GridSemanticTokens {}

/// Something which provides all semantic tokens of opacity
@available(iOS 15, macOS 13, visionOS 1, watchOS 11, tvOS 16, *)
public protocol AllOpacitySemanticTokensProvider: TokensProvider, OpacitySemanticTokens {}

/// Something which provides all semantic tokens of _
@available(iOS 15, macOS 13, visionOS 1, watchOS 11, tvOS 16, *)
public protocol AllDimensionSemanticTokensProvider: TokensProvider, DimensionSemanticTokens {}

/// Something which provides all semantic tokens of size
@available(iOS 15, macOS 13, visionOS 1, watchOS 11, tvOS 16, *)
public protocol AllSizeSemanticTokensProvider: TokensProvider, SizeSemanticTokens, SizeMultipleSemanticTokens {}

/// Something which provides all semantic tokens of space
@available(iOS 15, macOS 13, visionOS 1, watchOS 11, tvOS 16, *)
public protocol AllSpaceSemanticTokensProvider: TokensProvider, SpaceSemanticTokens, SpaceMultipleSemanticTokens {}

// MARK: - Component tokens providers

// NOTE: Keep things alphabetically sorted

/// Something which provides all component tokens of accions
@available(iOS 15, macOS 13, visionOS 1, watchOS 11, tvOS 16, *)
public protocol AllAccordionComponentTokensProvider: TokensProvider, AccordionComponentTokens, AccordionFaqComponentTokens {}

/// Something which provides all component tokens of alert
@available(iOS 15, macOS 13, visionOS 1, watchOS 11, tvOS 16, *)
public protocol AllAlertComponentTokensProvider: TokensProvider, AlertComponentTokens {}

/// Something which provides all component tokens of alert messages
@available(iOS 15, macOS 13, visionOS 1, watchOS 11, tvOS 16, *)
public protocol AllAlertMessageComponentTokensProvider: TokensProvider, AlertMessageComponentTokens {}

/// Something which provides all component tokens of bars
@available(iOS 15, macOS 13, visionOS 1, watchOS 11, tvOS 16, *)
public protocol AllBarComponentTokensProvider: TokensProvider, BarComponentTokens {}

/// Something which provides all component tokens of badge
@available(iOS 15, macOS 13, visionOS 1, watchOS 11, tvOS 16, *)
public protocol AllBadgeComponentTokensProvider: TokensProvider, BadgeComponentTokens {}

/// Something which provides all component tokens of bullet list
@available(iOS 15, macOS 13, visionOS 1, watchOS 11, tvOS 16, *)
public protocol AllBulletListComponentTokensProvider: TokensProvider, BulletListComponentTokens {}

/// Something which provides all component tokens of button
@available(iOS 15, macOS 13, visionOS 1, watchOS 11, tvOS 16, *)
public protocol AllButtonComponentTokensProvider: TokensProvider, ButtonComponentTokens, ButtonMonoComponentTokens {}

/// Something which provides all component tokens of card
@available(iOS 15, macOS 13, visionOS 1, watchOS 11, tvOS 16, *)
public protocol AllCardComponentTokensProvider: TokensProvider, CardComponentTokens {}

/// Something which provides all component tokens for categorical tag
@available(iOS 15, macOS 13, visionOS 1, watchOS 11, tvOS 16, *)
public protocol AllCategoricalTagComponentTokensProvider: TokensProvider, CategoricalTagComponentTokens {}

/// Something which provides all component tokens of checkboxes
@available(iOS 15, macOS 13, visionOS 1, watchOS 11, tvOS 16, *)
public protocol AllCheckboxComponentTokensProvider: TokensProvider, CheckboxComponentTokens {}

/// Something which provides all component tokens of chip
@available(iOS 15, macOS 13, visionOS 1, watchOS 11, tvOS 16, *)
public protocol AllChipComponentTokensProvider: TokensProvider, ChipComponentTokens {}

/// Something which provides all component tokens of contained tabs
@available(iOS 15, macOS 13, visionOS 1, watchOS 11, tvOS 16, *)
public protocol AllContainedTabsComponentTokensProvider: TokensProvider, ContainedTabsComponentTokens {}

/// Something which provides all component tokens of divider
@available(iOS 15, macOS 13, visionOS 1, watchOS 11, tvOS 16, *)
public protocol AllDividerComponentTokensProvider: TokensProvider, DividerComponentTokens {}

/// Something which provides all component tokens of pin code input
@available(iOS 15, macOS 13, visionOS 1, watchOS 11, tvOS 16, *)
public protocol AllPinCodeInputComponentTokensProvider: TokensProvider, PinCodeInputComponentTokens {}

/// Something which provides all component tokens of progress indicator
@available(iOS 15, macOS 13, visionOS 1, watchOS 11, tvOS 16, *)
public protocol AllProgressIndicatorComponentTokensProvider: TokensProvider, ProgressIndicatorComponentTokens {}

/// Something which provides all components tokens for icons
@available(iOS 15, macOS 13, visionOS 1, watchOS 11, tvOS 16, *)
public protocol AllIconComponentTokensProvider: TokensProvider, IconComponentTokens {}

/// Something which provides all component tokens of line tabs
@available(iOS 15, macOS 13, visionOS 1, watchOS 11, tvOS 16, *)
public protocol AllLineTabsComponentTokensProvider: TokensProvider, LineTabsComponentTokens {}

/// Something which provides all component tokens of link
@available(iOS 15, macOS 13, visionOS 1, watchOS 11, tvOS 16, *)
public protocol AllLinkComponentTokensProvider: TokensProvider, LinkComponentTokens, LinkMonoComponentTokens {}

/// Something which provides all component tokens of list item
@available(iOS 15, macOS 13, visionOS 1, watchOS 11, tvOS 16, *)
public protocol AllListItemComponentTokensProvider: TokensProvider, ListItemComponentTokens {}

/// Something which provides all component tokens of quantity input
@available(iOS 15, macOS 13, visionOS 1, watchOS 11, tvOS 16, *)
public protocol AllQuantityInputComponentTokensProvider: TokensProvider, QuantityInputComponentTokens {}

/// Something which provides all component tokens of radio buttons
@available(iOS 15, macOS 13, visionOS 1, watchOS 11, tvOS 16, *)
public protocol AllRadioButtonComponentTokensProvider: TokensProvider, RadioButtonComponentTokens {}

/// Something which provides all component tokens of select input
@available(iOS 15, macOS 13, visionOS 1, watchOS 11, tvOS 16, *)
public protocol AllSelectInputComponentTokensProvider: TokensProvider, SelectInputComponentTokens {}

/// Something which provides all component tokens of skeleton
@available(iOS 15, macOS 13, visionOS 1, watchOS 11, tvOS 16, *)
public protocol AllSkeletonComponentTokensProvider: TokensProvider, SkeletonComponentTokens {}

/// Something which provides all component tokens of switch / toggle
@available(iOS 15, macOS 13, visionOS 1, watchOS 11, tvOS 16, *)
public protocol AllSwitchComponentTokensProvider: TokensProvider, SwitchComponentTokens {}

/// Something which provides all component tokens of tag
@available(iOS 15, macOS 13, visionOS 1, watchOS 11, tvOS 16, *)
public protocol AllTagComponentTokensProvider: TokensProvider, TagComponentTokens {}

/// Something which provides all component tokens of input tag
@available(iOS 15, macOS 13, visionOS 1, watchOS 11, tvOS 16, *)
public protocol AllInputTagComponentTokensProvider: TokensProvider, InputTagComponentTokens {}

/// Something which provides all component tokens of text area
@available(iOS 15, macOS 13, visionOS 1, watchOS 11, tvOS 16, *)
public protocol AllTextAreaComponentTokensProvider: TokensProvider, TextAreaComponentTokens {}

/// Something which provides all component tokens of text input
@available(iOS 15, macOS 13, visionOS 1, watchOS 11, tvOS 16, *)
public protocol AllTextInputComponentTokensProvider: TokensProvider, TextInputComponentTokens {}

/// Something which provides all component tokens of toast
@available(iOS 15, macOS 13, visionOS 1, watchOS 11, tvOS 16, *)
public protocol AllToastComponentTokensProvider: TokensProvider, ToastComponentTokens {}

/// Something which provides all component tokens of typography
@available(iOS 15, macOS 13, visionOS 1, watchOS 11, tvOS 16, *)
public protocol AllTypographyComponentTokensProvider: TokensProvider, TypographyComponentTokens {}

// swiftlint:enable type_name
