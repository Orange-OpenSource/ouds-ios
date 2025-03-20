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
import OUDSFoundations
import OUDSTokensComponent
import OUDSTokensSemantic

/// This is a basic theme any theme must be a subclass off, or all themes must have as ancestor.
/// A Swift `class` has been used so as to allow to easily override some attributes and have inheritance, without having for developers
/// to implement all tokens.
/// Any properties of an overridable theme should be defined so as to provide defaults values.
/// We allow this theme to be derivated and be overriden.
/// ``OUDSTheme`` can be seen as a kind of "abstract class" in _object oriented paradigm_, or *theme contract*.
/// Because `OUDSTheme` is not a *final* class, its type cannot be seen as `Sendable`, that is the reason why this conformity is unchecked.
///
/// **Warning: You are not supposed to use this abstract default theme directly. Please prefer `OrangeTheme` instead**
/// Prefer theme like `OrangeTheme`.
///
/// Any theme is handled as ``OUDSTheme``.
/// It contains plenty of *tokens provider* for semantic tokens and component tokens.
/// Theme can have also non-provider properties like *font family* to apply.
///
/// - Since: 0.8.0
open class OUDSTheme: @unchecked Sendable {

    // MARK: - Semantic tokens

    /// All color semantic tokens exposed in one object
    public let colors: AllColorSemanticTokensProvider

    /// All border semantic tokens exposed in one object
    public let borders: AllBorderSemanticTokensProvider

    /// All elevation semantic tokens exposed in one object
    public let elevations: AllElevationSemanticTokensProvider

    /// A theme can have a custom font which is not the system font
    public let fontFamily: FontFamilySemanticToken?

    /// All font semantic tokens exposed in one object
    public let fonts: AllFontSemanticTokensProvider

    /// All grid semantic tokens exposed in one object
    public let grids: AllGridSemanticTokensProvider

    /// All opacity semantic tokens exposed in one object
    public let opacities: AllOpacitySemanticTokensProvider

    /// All size semantic tokens exposed in one object
    public let sizes: AllSizeSemanticTokensProvider

    /// All size semantic tokens exposed in one object
    public let spaces: AllSpaceSemanticTokensProvider

    // MARK: - Component tokens

    /// All components tokens related to button components like `OUDSButton`
    public let button: AllButtonComponentTokensProvider

    /// All components tokens related to link components like `OUDSLink`
    public let link: AllLinkComponentTokensProvider

    /// All components tokens related to select components like `OUDSSelect`
    public let select: AllSelectComponentTokensProvider

    /// All components tokens related to skeleto components like `OUDSSkeleton`
    public let skeleton: AllSkeletonComponentTokensProvider

    /// All components tokens related to tags components like `OUDSTag`
    public let tag: AllTagComponentTokensProvider

    /// All components tokens related to switch / toggle components like `OUDSSwitch`
    public let `switch`: AllSwitchComponentTokensProvider

    /// All components tokens related to list item components like `OUDSListItem`
    public let listItem: AllListItemComponentTokensProvider

    /// All components tokens related to chip components like `OUDSChip`
    public let chip: AllChipComponentTokensProvider

    /// All components tokens related to bullet list components like `OUDSBulletList`
    public let bulletList: AllBulletListComponentTokensProvider

    /// All components tokens related to bullet list components like `OUDSInputText`
    public let inputText: AllInputTextComponentTokensProvider

    /// All components tokens related to badge components like `OUDSBadge`
    public let badge: AllBadgeComponentTokensProvider

    /// All component tokens related to control-item-layout-based components like `OUDSSwitch`, `OUDSRadioButtonItem` and `OUDSCheckboxItem`
    public let controlItem: AllControlItemComponentTokensProvider

    /// All components tokens related to checkboxes components like `OUDSCheckbox` and `OUDSCheckboxItem`
    public let checkbox: AllCheckboxComponentTokensProvider

    /// All components tokens related to checkboxes components like `OUDSRadioButton` and `OUDSRadioButtonItem`
    public let radioButton: AllRadioButtonComponentTokensProvider

    // NOTE: Add new component tokens provider here

    // MARK: - Initializers

    /// Defines the theme to apply everywhere.
    ///
    /// - Parameters:
    ///    - colors: All semantic tokens of colors
    ///    - borders: All semantic tokens of borders
    ///    - elevations: All semantic tokens of elevations
    ///    - fonts: All semantic tokens of fonts
    ///    - grids: All semantic tokens of grids
    ///    - opacities: All semantic tokens of opacity
    ///    - sizes: All semantic tokens of sizes
    ///    - spaces: All semantic tokens of spaces
    ///    - button: All component tokens for button
    ///    - link: All component tokens for link
    ///    - select: All component tokens for select
    ///    - skeleton: All component tokens for skeleton
    ///    - tag: All component tokens for tag
    ///    - switch: All component tokens for switch
    ///    - listItem: All component tokens for list item
    ///    - chip: All component tokens for chip
    ///    - bulletList: All component tokens for bullet list
    ///    - inputText: All component tokens for input text
    ///    - badge: All component tokens for badge
    ///    - controlItem: All component tokens for control item
    ///    - checkbox: All component tokens for checkbox
    ///    - radioButton: All component tokens for radio buttons
    ///    - fontFamily: Set `nil` if system font to use, otherwise use the `FontFamilySemanticToken` you want to apply
    public init(colors: AllColorSemanticTokensProvider,
                borders: AllBorderSemanticTokensProvider,
                elevations: AllElevationSemanticTokensProvider,
                fonts: AllFontSemanticTokensProvider,
                grids: AllGridSemanticTokensProvider,
                opacities: AllOpacitySemanticTokensProvider,
                sizes: AllSizeSemanticTokensProvider,
                spaces: AllSpaceSemanticTokensProvider,
                button: AllButtonComponentTokensProvider,
                link: AllLinkComponentTokensProvider,
                select: AllSelectComponentTokensProvider,
                skeleton: AllSkeletonComponentTokensProvider,
                tag: AllTagComponentTokensProvider,
                switch: AllSwitchComponentTokensProvider,
                listItem: AllListItemComponentTokensProvider,
                chip: AllChipComponentTokensProvider,
                bulletList: AllBulletListComponentTokensProvider,
                inputText: AllInputTextComponentTokensProvider,
                badge: AllBadgeComponentTokensProvider,
                controlItem: AllControlItemComponentTokensProvider,
                checkbox: AllCheckboxComponentTokensProvider,
                radioButton: AllRadioButtonComponentTokensProvider,
                fontFamily: FontFamilySemanticToken? = nil) {

        // Save semantic tokens providers
        self.colors = colors
        self.borders = borders
        self.elevations = elevations
        self.fonts = fonts
        self.grids = grids
        self.opacities = opacities
        self.sizes = sizes
        self.spaces = spaces

        // Save component tokens providers
        self.button = button
        self.link = link
        self.select = select
        self.skeleton = skeleton
        self.tag = tag
        self.`switch` = `switch`
        self.listItem = listItem
        self.chip = chip
        self.bulletList = bulletList
        self.inputText = inputText
        self.badge = badge
        self.controlItem = controlItem
        self.checkbox = checkbox
        self.radioButton = radioButton
        // NOTE: Add new component tokens provider here

        // Load other configuration elements
        self.fontFamily = fontFamily
    }

    deinit { }
}
