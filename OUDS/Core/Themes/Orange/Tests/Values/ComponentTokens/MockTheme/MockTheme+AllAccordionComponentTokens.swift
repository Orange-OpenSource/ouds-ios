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
import OUDSThemesOrange
import OUDSTokensComponent
import OUDSTokensSemantic

// swiftlint:disable required_deinit

final class MockThemeAccordionComponentTokenProvider: OrangeThemeAccordionComponentTokensProvider {

    // MARK: - Mocks and setup

    static let mockThemeAccordionSpace: SpaceSemanticToken = 1_312
    static let mockThemeAccordionSize: SizeSemanticToken = 118_218

    override init(sizes: AllSizeSemanticTokensProvider?,
                  spaces: AllSpaceSemanticTokensProvider?)
    {
        super.init(sizes: sizes,
                   spaces: spaces)
    }

    // MARK: - Accordion component tokens

    override var spacePaddingBlockBottomExpandContainerSmall: SpaceSemanticToken { Self.mockThemeAccordionSpace }
    override var spacePaddingBlockBottomExpandContainerDefault: SpaceSemanticToken { Self.mockThemeAccordionSpace }
    override var spacePaddingBlockTopExpandContainer: SpaceSemanticToken { Self.mockThemeAccordionSpace }

    // MARK: - AccordionFaq component tokens

    override var spaceColumnGapMobile: SpaceSemanticToken { Self.mockThemeAccordionSpace }
    override var spaceColumnGapTablet: SpaceSemanticToken { Self.mockThemeAccordionSpace }
    override var spacePaddingBlockMobile: SpaceSemanticToken { Self.mockThemeAccordionSpace }
    override var spacePaddingBlockTablet: SpaceSemanticToken { Self.mockThemeAccordionSpace }
    override var spacePaddingBlockBottomExpandContainerMobile: SpaceSemanticToken { Self.mockThemeAccordionSpace }
    override var spacePaddingBlockBottomExpandContainerTablet: SpaceSemanticToken { Self.mockThemeAccordionSpace }
    override var spacePaddingBlockBottomSlotListItemContainerMobile: SpaceSemanticToken { Self.mockThemeAccordionSpace }
    override var spacePaddingBlockBottomSlotListItemContainerTablet: SpaceSemanticToken { Self.mockThemeAccordionSpace }
    override var sizeIconMobile: SizeSemanticToken { Self.mockThemeAccordionSize }
    override var sizeIconTablet: SizeSemanticToken { Self.mockThemeAccordionSize }
    override var sizeExpandingIndicatorMobile: SizeSemanticToken { Self.mockThemeAccordionSize }
    override var sizeExpandingIndicatorTablet: SizeSemanticToken { Self.mockThemeAccordionSize }
    override var sizeMinHeightMobile: SizeSemanticToken { Self.mockThemeAccordionSize }
    override var sizeMinHeightTablet: SizeSemanticToken { Self.mockThemeAccordionSize }
}

// swiftlint:enable required_deinit
