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
import OUDSThemesContract
import Testing
import TestsUtils

/// Some tests on versions of OUDS parts to be sure they are well defined
struct OUDSVersionsTests {

    // swiftlint:disable force_try
    private static let oudsVersionsFormat = try! NSRegularExpression(pattern: "^\\d+\\.\\d+\\.\\d+$")
    // swiftlint:enable force_try

    // MARK: - Tests - Themes versions - Core

    @Test func themeCoreVersionMustBeConform() throws {
        TestsUtils.assertMatches(OUDSVersions.themeCoreVersion, regexp: Self.oudsVersionsFormat)
    }

    // MARK: - Tests - Themes versions - Orange

    @Test func themeOrangeCoreVersionMustBeConform() throws {
        TestsUtils.assertMatches(OUDSVersions.themeOrangeCoreVersion, regexp: Self.oudsVersionsFormat)
    }

    @Test func themeOrangeBrandVersionMustBeConform() throws {
        TestsUtils.assertMatches(OUDSVersions.themeOrangeBrandVersion, regexp: Self.oudsVersionsFormat)
    }

    // MARK: - Tests - Themes versions - Orange Compact

    @Test func themeOrangeCompactBrandVersionMustBeConform() throws {
        TestsUtils.assertMatches(OUDSVersions.themeOrangeCompactBrandVersion, regexp: Self.oudsVersionsFormat)
    }

    // MARK: - Tests - Themes versions - Sosh

    @Test func themeSoshCoreVersionMustBeConform() throws {
        TestsUtils.assertMatches(OUDSVersions.themeSoshCoreVersion, regexp: Self.oudsVersionsFormat)
    }

    @Test func themeSoshBrandVersionMustBeConform() throws {
        TestsUtils.assertMatches(OUDSVersions.themeSoshBrandVersion, regexp: Self.oudsVersionsFormat)
    }

    // MARK: - Tests - Themes versions - Wireframe

    @Test func themeWireframeCoreVersionMustBeConform() throws {
        TestsUtils.assertMatches(OUDSVersions.themeWireframeCoreVersion, regexp: Self.oudsVersionsFormat)
    }

    @Test func themeWireframeBrandVersionMustBeConform() throws {
        TestsUtils.assertMatches(OUDSVersions.themeWireframeBrandVersion, regexp: Self.oudsVersionsFormat)
    }

    // MARK: - Tests - Component versions - Actions

    @Test func componentButtonVersionMustBeConform() throws {
        TestsUtils.assertMatches(OUDSVersions.componentButtonVersion, regexp: Self.oudsVersionsFormat)
    }

    @Test func componentInteractiveIconVersionMustBeConform() throws {
        TestsUtils.assertMatches(OUDSVersions.componentInteractiveIcon, regexp: Self.oudsVersionsFormat)
    }

    // MARK: - Tests - Component versions - AI assistant

    @Test func componentAssistantButtonVersionMustBeConform() throws {
        TestsUtils.assertMatches(OUDSVersions.componentAssistantButtonVersion, regexp: Self.oudsVersionsFormat)
    }

    @Test func componentAssistantChatInputVersionMustBeConform() throws {
        TestsUtils.assertMatches(OUDSVersions.componentAssistantChatInputVersion, regexp: Self.oudsVersionsFormat)
    }

    @Test func componentAssistantIconVersionMustBeConform() throws {
        TestsUtils.assertMatches(OUDSVersions.componentAssistantIconVersion, regexp: Self.oudsVersionsFormat)
    }

    // MARK: - Tests - Component versions - Navigation

    @Test func componentLinkVersionMustBeConform() throws {
        TestsUtils.assertMatches(OUDSVersions.componentLinkVersion, regexp: Self.oudsVersionsFormat)
    }

    @Test func componentExpandLinkVersionMustBeConform() throws {
        TestsUtils.assertMatches(OUDSVersions.componentExpandLinkVersion, regexp: Self.oudsVersionsFormat)
    }

    @Test func componentTabBarVersionMustBeConform() throws {
        TestsUtils.assertMatches(OUDSVersions.componentTabBarVersion, regexp: Self.oudsVersionsFormat)
    }

    @Test func componentToolBarTopVersionMustBeConform() throws {
        TestsUtils.assertMatches(OUDSVersions.componentToolBarTopVersion, regexp: Self.oudsVersionsFormat)
    }

    @Test func componentToolBarBottomVersionMustBeConform() throws {
        TestsUtils.assertMatches(OUDSVersions.componentToolBarBottomVersion, regexp: Self.oudsVersionsFormat)
    }

    @Test func componentLineTabsVersionMustBeConform() throws {
        TestsUtils.assertMatches(OUDSVersions.componentLineTabsVersion, regexp: Self.oudsVersionsFormat)
    }

    @Test func componentContainedTabsVersionMustBeConform() throws {
        TestsUtils.assertMatches(OUDSVersions.componentContainedTabsVersion, regexp: Self.oudsVersionsFormat)
    }

    // MARK: - Tests - Component versions - Controls

    @Test func componentChatInputVersionMustBeConform() throws {
        TestsUtils.assertMatches(OUDSVersions.componentChatInputVersion, regexp: Self.oudsVersionsFormat)
    }

    @Test func componentCheckboxVersionMustBeConform() throws {
        TestsUtils.assertMatches(OUDSVersions.componentCheckboxVersion, regexp: Self.oudsVersionsFormat)
    }

    @Test func componentSugggestionChipVersionMustBeConform() throws {
        TestsUtils.assertMatches(OUDSVersions.componentSuggestionChipVersion, regexp: Self.oudsVersionsFormat)
    }

    @Test func componentFilterChipVersionMustBeConform() throws {
        TestsUtils.assertMatches(OUDSVersions.componentFilterChipVersion, regexp: Self.oudsVersionsFormat)
    }

    @Test func componentFilterChipExpandVersionMustBeConform() throws {
        TestsUtils.assertMatches(OUDSVersions.componentFilterChipExpandVersion, regexp: Self.oudsVersionsFormat)
    }

    @Test func componentRadioButtonVersionMustBeConform() throws {
        TestsUtils.assertMatches(OUDSVersions.componentRadioButtonVersion, regexp: Self.oudsVersionsFormat)
    }

    @Test func componentStaticListItemVersionMustBeConform() throws {
        TestsUtils.assertMatches(OUDSVersions.componentStaticListItemVersion, regexp: Self.oudsVersionsFormat)
    }

    @Test func componentStaticCardItemVersionMustBeConform() throws {
        TestsUtils.assertMatches(OUDSVersions.componentStaticCardItemVersion, regexp: Self.oudsVersionsFormat)
    }

    @Test func componentNavigationListItemVersionMustBeConform() throws {
        TestsUtils.assertMatches(OUDSVersions.componentNavigationListItemVersion, regexp: Self.oudsVersionsFormat)
    }

    @Test func componentNavigationCardItemVersionMustBeConform() throws {
        TestsUtils.assertMatches(OUDSVersions.componentNavigationCardItemVersion, regexp: Self.oudsVersionsFormat)
    }

    @Test func componentSwitchVersionMustBeConform() throws {
        TestsUtils.assertMatches(OUDSVersions.componentSwitchVersion, regexp: Self.oudsVersionsFormat)
    }

    @Test func componentTextInputVersionMustBeConform() throws {
        TestsUtils.assertMatches(OUDSVersions.componentTextInputVersion, regexp: Self.oudsVersionsFormat)
    }

    @Test func componentPhoneNumberInputVersionMustBeConform() throws {
        TestsUtils.assertMatches(OUDSVersions.componentPhoneNumberInputVersion, regexp: Self.oudsVersionsFormat)
    }

    @Test func componentPasswordInputVersionMustBeConform() throws {
        TestsUtils.assertMatches(OUDSVersions.componentPasswordInputVersion, regexp: Self.oudsVersionsFormat)
    }

    @Test func componentPinCodeInputVersionMustBeConform() throws {
        TestsUtils.assertMatches(OUDSVersions.componentPinCodeInputVersion, regexp: Self.oudsVersionsFormat)
    }

    @Test func componentQuantityInputVersionMustBeConform() throws {
        TestsUtils.assertMatches(OUDSVersions.componentQuantityInputVersion, regexp: Self.oudsVersionsFormat)
    }

    @Test func componentSelectInputVersionMustBeConform() throws {
        TestsUtils.assertMatches(OUDSVersions.componentSelectInputVersion, regexp: Self.oudsVersionsFormat)
    }

    @Test func componentTextAreaVersionMustBeConform() throws {
        TestsUtils.assertMatches(OUDSVersions.componentTextAreaVersion, regexp: Self.oudsVersionsFormat)
    }

    @Test func componentBadgeVersionMustBeConform() throws {
        TestsUtils.assertMatches(OUDSVersions.componentBadgeVersion, regexp: Self.oudsVersionsFormat)
    }

    @Test func componentBadgeCountVersionMustBeConform() throws {
        TestsUtils.assertMatches(OUDSVersions.componentBadgeCountVersion, regexp: Self.oudsVersionsFormat)
    }

    @Test func componentBadgeIconVersionMustBeConform() throws {
        TestsUtils.assertMatches(OUDSVersions.componentBadgeIconVersion, regexp: Self.oudsVersionsFormat)
    }

    // MARK: - Tests - Component versions - Tag

    @Test func componentCategoricalTagVersionMustBeConform() throws {
        TestsUtils.assertMatches(OUDSVersions.componentCategoricalTagVersion, regexp: Self.oudsVersionsFormat)
    }

    @Test func componentSkeletonVersionMustBeConform() throws {
        TestsUtils.assertMatches(OUDSVersions.componentSkeletonVersion, regexp: Self.oudsVersionsFormat)
    }

    @Test func componentTagVersionMustBeConform() throws {
        TestsUtils.assertMatches(OUDSVersions.componentTagVersion, regexp: Self.oudsVersionsFormat)
    }

    @Test func componentInputTagVersionMustBeConform() throws {
        TestsUtils.assertMatches(OUDSVersions.componentInputTagVersion, regexp: Self.oudsVersionsFormat)
    }

    // MARK: - Tests - Component versions - Layout

    @Test func componentDividerVersionMustBeConform() throws {
        TestsUtils.assertMatches(OUDSVersions.componentDividerVersion, regexp: Self.oudsVersionsFormat)
    }

    @Test func componentCardVersionMustBeConform() throws {
        TestsUtils.assertMatches(OUDSVersions.componentCardVersion, regexp: Self.oudsVersionsFormat)
    }

    @Test func componentActionCardVersionMustBeConform() throws {
        TestsUtils.assertMatches(OUDSVersions.componentActionCardVersion, regexp: Self.oudsVersionsFormat)
    }

    // MARK: - Tests - Component versions - Content display

    @Test func componentAccordionListItemVersionMustBeConform() throws {
        TestsUtils.assertMatches(OUDSVersions.componentAccordionListItem, regexp: Self.oudsVersionsFormat)
    }

    @Test func componentAccordionCardItemVersionMustBeConform() throws {
        TestsUtils.assertMatches(OUDSVersions.componentAccordionCardItem, regexp: Self.oudsVersionsFormat)
    }

    @Test func componentAccordionFaqVersionMustBeConform() throws {
        TestsUtils.assertMatches(OUDSVersions.componentAccordionFaq, regexp: Self.oudsVersionsFormat)
    }

    @Test func componentBulletListVersionMustBeConform() throws {
        TestsUtils.assertMatches(OUDSVersions.componentBulletListVersion, regexp: Self.oudsVersionsFormat)
    }

    // MARK: - Tests - Component versions - Dialog

    @Test func componentAlertBannerVersionMustBeConform() throws {
        TestsUtils.assertMatches(OUDSVersions.componentAlertBannerVersion, regexp: Self.oudsVersionsFormat)
    }

    @Test func componentAlertMessageVersionMustBeConform() throws {
        TestsUtils.assertMatches(OUDSVersions.componentAlertMessageVersion, regexp: Self.oudsVersionsFormat)
    }

    @Test func componentInlineAlertVersionMustBeConform() throws {
        TestsUtils.assertMatches(OUDSVersions.componentInlineAlertVersion, regexp: Self.oudsVersionsFormat)
    }

    @Test func componentInlineToastMustBeConform() throws {
        TestsUtils.assertMatches(OUDSVersions.componentToastVersion, regexp: Self.oudsVersionsFormat)
    }

    // MARK: - Tests - Component versions - Foundations

    @Test func componentTypographyBodyVersionMustBeConform() throws {
        TestsUtils.assertMatches(OUDSVersions.componentTypographyBodyVersion, regexp: Self.oudsVersionsFormat)
    }

    @Test func componentTypographyCodeVersionMustBeConform() throws {
        TestsUtils.assertMatches(OUDSVersions.componentTypographyCodeVersion, regexp: Self.oudsVersionsFormat)
    }

    @Test func componentTypographyDisplayVersionMustBeConform() throws {
        TestsUtils.assertMatches(OUDSVersions.componentTypographyDisplayVersion, regexp: Self.oudsVersionsFormat)
    }

    @Test func componentTypographyHeadingVersionMustBeConform() throws {
        TestsUtils.assertMatches(OUDSVersions.componentTypographyHeadingVersion, regexp: Self.oudsVersionsFormat)
    }

    @Test func componentTypographyLabelVersionMustBeConform() throws {
        TestsUtils.assertMatches(OUDSVersions.componentTypographyLabelVersion, regexp: Self.oudsVersionsFormat)
    }

    // MARK: - Tests - Component versions - Indicator

    @Test func componentCircularProgressIndicatorVersionMustBeConform() throws {
        TestsUtils.assertMatches(OUDSVersions.componentCircularProgressIndicatorVersion, regexp: Self.oudsVersionsFormat)
    }

    @Test func componentLinearProgressIndicatorVersionMustBeConform() throws {
        TestsUtils.assertMatches(OUDSVersions.componentLinearProgressIndicatorVersion, regexp: Self.oudsVersionsFormat)
    }

    @Test func componentStatusIconVersionMustBeConform() throws {
        TestsUtils.assertMatches(OUDSVersions.componentStatusIconVersion, regexp: Self.oudsVersionsFormat)
    }
}
