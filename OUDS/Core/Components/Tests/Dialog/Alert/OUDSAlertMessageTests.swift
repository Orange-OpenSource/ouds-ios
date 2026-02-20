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

/// Tests some values for `OUDSAlertMessage` component.
struct OUDSAlertMessageTests {

    @Test
    func `alert message component link position by default must be bottom`() {
        let alertMessageLink = OUDSAlertMessage.Link(text: "") {}
        #expect(alertMessageLink.position == .bottom)
    }

    @Test
    func `alert message component neutral status does not have icon by default`() {
        let neutralStatus = OUDSAlertStatus.neutral()
        if case let .neutral(icon) = neutralStatus {
            #expect(icon == nil, "Icon must be nill for neutral status")
        } else {
            Issue.record("Status should be neutral")
        }
    }

    @Test
    func `alert message component accent status does not have icon by default`() {
        let accentStatus = OUDSAlertStatus.accent()
        if case let .accent(icon) = accentStatus {
            #expect(icon == nil, "Icon must be nill for accent status")
        } else {
            Issue.record("Status should be accent")
        }
    }
}
