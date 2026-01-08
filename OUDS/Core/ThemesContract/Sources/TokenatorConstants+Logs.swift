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

import OUDSFoundations

extension OUDSVersions {

    /// Displays in standard output an information message about the tokens librairies versions in use
    static func logTokensLibrairiesVersions() {
        var versionsLog = "OUDS iOS Libraries Versions:\n"
        versionsLog += "- Core OUDS: \(Self.themeCoreVersion)\n"
        versionsLog += "- Core Orange: \(Self.themeOrangeCoreVersion)\n"
        versionsLog += "- Brand Orange: \(Self.themeOrangeBrandVersion)\n"
        versionsLog += "- Brand Orange Business Tools: \(Self.themeOrangeBusinessToolsBrandVersion)\n"
        versionsLog += "- Core Sosh: \(Self.themeSoshCoreVersion)\n"
        versionsLog += "- Brand Sosh: \(Self.themeSoshBrandVersion)\n"
        versionsLog += "- Core Wireframe: \(Self.themeWireframeCoreVersion)\n"
        versionsLog += "- Brand Wireframe: \(Self.themeWireframeBrandVersion)\n"

        OL.info(versionsLog)
    }

    /// Displays in standard output an informationmemssage about the versions of the components
    static func logComponentsVersions() {
        // NOTE: Keep components sorted
        var versionsLog = "OUDS iOS Components Versions:\n"
        versionsLog += "- Badge: \(Self.componentBadgeVersion)\n"
        versionsLog += "- Bullet List: \(Self.componentBulletListVersion)\n"
        versionsLog += "- Button: \(Self.componentButtonVersion)\n"
        versionsLog += "- Checkbox: \(Self.componentCheckboxVersion)\n"
        versionsLog += "- Chip: \(Self.componentChipVersion)\n"
        versionsLog += "- Divider: \(Self.componentDividerVersion)\n"
        versionsLog += "- Expand Link: \(Self.componentExpandLinkVersion)\n"
        versionsLog += "- Link: \(Self.componentLinkVersion)\n"
        versionsLog += "- Navigation bar: \(Self.componentNavigationBarVersion)\n"
        versionsLog += "- Password Input: \(Self.componentPasswordInputVersion)\n"
        versionsLog += "- Phone Number Input: \(Self.componentPhoneNumberInputVersion)\n"
        versionsLog += "- Pin Code Input: \(Self.componentPinCodeInputVersion)\n"
        versionsLog += "- Quantity Input: \(Self.componentQuantityInputVersion)\n"
        versionsLog += "- Radio button: \(Self.componentRadioButtonVersion)\n"
        versionsLog += "- Select Input: \(Self.componentSelectInputVersion)\n"
        versionsLog += "- Skeleton: \(Self.componentSkeletonVersion)\n"
        versionsLog += "- Switch: \(Self.componentSwitchVersion)\n"
        versionsLog += "- Tag: \(Self.componentTagVersion)\n"
        versionsLog += "- Text Area: \(Self.componentTextAreaVersion)\n"
        versionsLog += "- Text Input: \(Self.componentTextInputVersion)\n"

        OL.info(versionsLog)
    }
}
