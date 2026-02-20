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

@testable import OUDSComponents
import SwiftUI
import Testing

/// Tests some values for `OUDSInlineAlert` component.
struct OUDSInlineAlertTests {

    // MARK: - Default status

    @Test("Inline alert default status must be neutral with an icon")
    func defaultStatusIsNeutralWithIcon() {
        let neutralWithIcon = OUDSAlertStatus.neutral(icon: OUDSIcon(assetName: "ic_heart"))
        #expect(neutralWithIcon.hasIcon, "Neutral status with a non-nil icon must report hasIcon as true")
    }

    // MARK: - hasIcon per status (drives failable AlertLeadingIcon rendering)

    @Test("Functional status positive must always have an icon")
    func positiveStatusHasIcon() {
        #expect(OUDSAlertStatus.positive.hasIcon)
    }

    @Test("Functional status info must always have an icon")
    func infoStatusHasIcon() {
        #expect(OUDSAlertStatus.info.hasIcon)
    }

    @Test("Functional status warning must always have an icon")
    func warningStatusHasIcon() {
        #expect(OUDSAlertStatus.warning.hasIcon)
    }

    @Test("Functional status negative must always have an icon")
    func negativeStatusHasIcon() {
        #expect(OUDSAlertStatus.negative.hasIcon)
    }

    // MARK: - Failable icon rendering for neutral and accent

    @Test("Neutral status without icon must not render a leading icon")
    func neutralStatusWithoutIconHasNoIcon() {
        let status = OUDSAlertStatus.neutral(icon: nil)
        #expect(!status.hasIcon, "Neutral status with nil icon must report hasIcon as false, preventing icon rendering")
    }

    @MainActor @Test("Neutral status with icon must render a leading icon")
    func neutralStatusWithIconHasIcon() {
        let status = OUDSAlertStatus.neutral(icon: OUDSIcon(assetName: "ic_heart"))
        #expect(status.hasIcon, "Neutral status with non-nil icon must report hasIcon as true, allowing icon rendering")
    }

    @Test("Accent status without icon must not render a leading icon")
    func accentStatusWithoutIconHasNoIcon() {
        let status = OUDSAlertStatus.accent(icon: nil)
        #expect(!status.hasIcon, "Accent status with nil icon must report hasIcon as false, preventing icon rendering")
    }

    @MainActor @Test("Accent status with icon must render a leading icon")
    func accentStatusWithIconHasIcon() {
        let status = OUDSAlertStatus.accent(icon: OUDSIcon(assetName: "ic_heart"))
        #expect(status.hasIcon, "Accent status with non-nil icon must report hasIcon as true, allowing icon rendering")
    }
}
