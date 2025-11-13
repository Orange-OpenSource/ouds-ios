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

import OUDSComponents
import SwiftUI
import Testing

/// Tests some API for `OUDSBadge`
struct OUDSBadgeStatusWithIconTests {

    @Test("A neutral status with icon for badge must be a neutral standard status")
    func neutralStatusIconIsNeutralStandardStatus() {
        let status = OUDSBadge.StatusWithIcon.neutral(icon: Image(decorative: "")).status
        #expect(status == OUDSBadge.Status.neutral)
    }

    @Test("An accent status with icon for badge must be a accent standard status")
    func accentStatusIconIsAccentStandardStatus() {
        let status = OUDSBadge.StatusWithIcon.accent(icon: Image(decorative: "")).status
        #expect(status == OUDSBadge.Status.accent)
    }

    @Test("A positive status with icon for badge must be a positive standard status")
    func positiveStatusIconIsPositiveStandardStatus() {
        #expect(OUDSBadge.StatusWithIcon.positive.status == .positive)
    }

    @Test("An info status with icon for badge must be a info standard status")
    func infoStatusIconIsInfoStandardStatus() {
        #expect(OUDSBadge.StatusWithIcon.info.status == .info)
    }

    @Test("A warning status with icon for badge must be a warning standard status")
    func warningStatusIconIsWarningStandardStatus() {
        #expect(OUDSBadge.StatusWithIcon.warning.status == .warning)
    }

    @Test("A negative status with icon for badge must be a negative standard status")
    func negativeStatusIconIsNegativeStandardStatus() {
        #expect(OUDSBadge.StatusWithIcon.negative.status == .negative)
    }
}
