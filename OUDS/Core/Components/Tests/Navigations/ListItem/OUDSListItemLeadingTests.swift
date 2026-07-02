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

#if os(iOS)
import Foundation
import OUDSComponents
import Testing

/// Tests the default and explicit parameter values of `OUDSListItemLeading` cases.
struct OUDSListItemLeadingTests {

    private let url = URL(string: "https://example.com/video.mp4")

    // MARK: - .video default values

    @Test func videoDefaultAutoplayIsFalse() {
        guard let url, case let .video(_, autoplay, _, _, _) = OUDSListItemLeading.video(url) else {
            Issue.record("Expected .video case")
            return
        }
        #expect(autoplay == false)
    }

    @Test func videoDefaultMutedIsTrue() {
        guard let url, case let .video(_, _, muted, _, _) = OUDSListItemLeading.video(url) else {
            Issue.record("Expected .video case")
            return
        }
        #expect(muted == true)
    }

    @Test func videoDefaultTapToTogglePlayIsFalse() {
        guard let url, case let .video(_, _, _, tapToTogglePlay, _) = OUDSListItemLeading.video(url) else {
            Issue.record("Expected .video case")
            return
        }
        #expect(tapToTogglePlay == false)
    }

    @Test func videoDefaultTapToToggleMuteIsFalse() {
        guard let url, case let .video(_, _, _, _, tapToToggleMute) = OUDSListItemLeading.video(url) else {
            Issue.record("Expected .video case")
            return
        }
        #expect(tapToToggleMute == false)
    }

    @Test func videoStoresProvidedURL() {
        guard let url, case let .video(storedURL, _, _, _, _) = OUDSListItemLeading.video(url) else {
            Issue.record("Expected .video case")
            return
        }
        #expect(storedURL == url)
    }

    // MARK: - .video explicit values are preserved

    @Test func videoExplicitAutoplayTrueIsPreserved() {
        guard let url, case let .video(_, autoplay, _, _, _) = OUDSListItemLeading.video(url, autoplay: true) else {
            Issue.record("Expected .video case")
            return
        }
        #expect(autoplay == true)
    }

    @Test func videoExplicitMutedFalseIsPreserved() {
        guard let url, case let .video(_, _, muted, _, _) = OUDSListItemLeading.video(url, muted: false) else {
            Issue.record("Expected .video case")
            return
        }
        #expect(muted == false)
    }

    @Test func videoExplicitTapToTogglePlayTrueIsPreserved() {
        guard let url, case let .video(_, _, _, tapToTogglePlay, _) = OUDSListItemLeading.video(url, tapToTogglePlay: true) else {
            Issue.record("Expected .video case")
            return
        }
        #expect(tapToTogglePlay == true)
    }

    @Test func videoExplicitTapToToggleMuteTrueIsPreserved() {
        guard let url, case let .video(_, _, _, _, tapToToggleMute) = OUDSListItemLeading.video(url, tapToToggleMute: true) else {
            Issue.record("Expected .video case")
            return
        }
        #expect(tapToToggleMute == true)
    }
}
#endif
