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

/// Tests some values for `OUDSAlertBanner` component.
struct OUDSAlertBannerTests {

    // MARK: - ActionLink Tests

    @Test
    func `alert banner action link position by default must be bottom`() {
        let actionLink = OUDSAlertBanner.ActionLink(text: "Action") {}
        #expect(actionLink.position == .bottom)
    }

    // MARK: - Alignment Tests

    @Test
    func `alert banner alignment default value is top`() {
        let layout = OUDSAlertBanner.Layout.start(label: "Label", status: .info)
        // Testing that the Layout.start has a default alignment parameter
        switch layout {
        case let .start(_, _, _, _, alignment, _):
            #expect(alignment == .top)
        default:
            Issue.record("Layout should be .start")
        }
    }

    @Test
    func `alert banner alignment can be set to center`() {
        let layout = OUDSAlertBanner.Layout.start(label: "Label", status: .info, alignment: .center)
        switch layout {
        case let .start(_, _, _, _, alignment, _):
            #expect(alignment == .center)
        default:
            Issue.record("Layout should be .start")
        }
    }

    // MARK: - Status Tests

    @Test
    func `alert banner neutral status does not have icon by default`() {
        let neutralStatus = OUDSAlertStatus.neutral()
        if case let .neutral(icon) = neutralStatus {
            #expect(icon == nil, "Icon must be nil for neutral status")
        } else {
            Issue.record("Status should be neutral")
        }
    }

    @Test
    func `alert banner accent status does not have icon by default`() {
        let accentStatus = OUDSAlertStatus.accent()
        if case let .accent(icon) = accentStatus {
            #expect(icon == nil, "Icon must be nil for accent status")
        } else {
            Issue.record("Status should be accent")
        }
    }

    // MARK: - Accessibility Priority Tests

    @MainActor
    @Test
    func `alert banner components priority must be text then action link then close button`() {
        #expect(OUDSAlertBanner.textsAccessibilityPriority > OUDSAlertBanner.actionLinkAccessibilityPriority)
        #expect(OUDSAlertBanner.actionLinkAccessibilityPriority > OUDSAlertBanner.closeButtonAccessibilityPriority)
    }
}
