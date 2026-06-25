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

import AVFoundation
import OUDSTokensSemantic
import SwiftUI

// Control UIKit import to let macOS build the documentation

// MARK: - List Item Video

// The video element for list item component is tailored for iOS.
// The result is not acceptable today (v2.2.0) with watchOS, tvOS, macOS and visionOS.
// Thus this API is only available and compilable for iOS.
//

// A video element that can be used at the leading or trailing position of a list item
// such as ``OUDSStaticListItem`` or ``OUDSNavigationListItem``.
//
// ``OUDSListItemVideo`` displays a video from url (muted, autoplay)
//
// ## Sizes
//
// The ``Size`` enum defines the available sizes:
// - **`.medium`**: The default size, suited for standard list items.
// - **`.large`**: A larger variant for increased visual prominence.
// - **`.extraLarge`**: The largest variant, typically used for profile-like displays.
//
// **Note:** When the video is embedded in a list item with small size
// (via `SwiftUI/View/oudsListItemSize(_:)`), the icon is always rendered at its smallest size.
//
// ## Code samples
//
// ```swift
//     // A video in pause mode and default(i.e. medium) size
//     OUDSListItemVideo(url: URL(string: "<your_url_path>")
//
//     // A video in pause mode and large size
//     OUDSListItemVideo(url: URL(string: "<your_url_path>", size: .large)
//
//     // A muted, autoplayed video in extra lage size
//     OUDSListItemVideo(url: URL(string: "<your_url_path>", muted: true, autoplay: true, size: .large)
//
//     // Usage as leading element in a list item
//     let video = OUDSListItemVideo(url: URL(string: "<your_url_path>", autoplay: true)
//     OUDSStaticListItem(
//         data: OUDSListItemData(label: "Information"),
//         leading: .video(video)
//     )
//
//     // Usage as trailing element in a list item
//     let video = OUDSListItemVideo(url: URL(string: "<your_url_path>", autoplay: true)
//     OUDSStaticListItem(
//         data: OUDSListItemData(label: "Warning"),
//         trailing: .video(video)
//     )
// ```
//
// - Since: 2.2.0

@available(macOS, unavailable)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
@available(visionOS, unavailable)
public struct OUDSListItemVideo: View {

    /// Defines the available sizes (i.e. height) for the video.
    /// When the video is embedded in a list item with `.small` size, this parameter is ignored
    /// and a smallest size is always used.
    ///
    /// - Since: 2.2.0
    @frozen public enum Size {
        /// The medium size, used as the default in standard list items.
        case medium

        /// The large size, providing increased visual prominence.
        case large

        /// The extra-large size, typically used for profile-like displays.
        case extraLarge
    }

    // MARK: Properties

    let url: URL
    let autoplay: Bool
    let muted: Bool
    let tapToTogglePlay: Bool
    let tapToToggleMute: Bool
    let size: Size

    @Environment(\.theme) private var theme
    @Environment(\.isEnabled) private var isEnabled
    @Environment(\.oudsListItemSize) private var itemSize
    @Environment(\.oudsListItemRoundedMedia) private var roundedMedia

    @State private var player: AVPlayer
    @State private var isPlaying: Bool
    @State private var isMuted: Bool
    @State private var loopObserver: (any NSObjectProtocol)?

    // MARK: Init

    /// Use ``SwiftUICore/View/oudsListItemRoundedMedia(_:)`` to apply rounded corners.
    ///
    /// - Parameters:
    ///   - url: The URL of the video (local `file://` or remote `https://` HLS / MP4).
    ///   - autoplay: Whether the video starts playing automatically when the item appears. Defaults to `false`.
    ///   - muted: Whether the video is muted. Defaults to `true`.
    ///   - tapToTogglePlay: Whether a tap on the video toggles play / pause. Defaults to `true`.
    ///   - tapToToggleMute: Whether a tap on the video toggles mute / unmute. Defaults to `false`.
    ///   - size: The size of the video. Defaults to `.medium`.
    ///     **Note:** Ignored when the video is embedded in a list item with small size
    ///     (via ``SwiftUICore/View/oudsListItemSize(_:)``), where the smallest size is always applied.
    ///
    /// When both `tapToTogglePlay` and `tapToToggleMute` are `true`, a single tap performs both actions.
    /// When `autoplay` is `false` and `tapToTogglePlay` is `false`, the first frame is shown as a static thumbnail.
    ///
    /// For accessibility reasons, `autoplay` should be disabled, and the Voice Over status must be considered to avoid to have videos
    /// disturbing the users.
    public init(url: URL, autoplay: Bool = false, muted: Bool = true, tapToTogglePlay: Bool = true, tapToToggleMute: Bool = false, size: Self.Size = .medium) {
        self.url = url
        self.autoplay = autoplay
        self.muted = muted
        self.tapToTogglePlay = tapToTogglePlay
        self.tapToToggleMute = tapToToggleMute
        self.size = size
        _player = State(initialValue: AVPlayer(url: url))
        _isPlaying = State(initialValue: false)
        _isMuted = State(initialValue: muted)
    }

    // MARK: Body

    public var body: some View {
        #if os(iOS) && canImport(UIKit)
        // NOTE: #265 - Does the video must be disabled or muted if Voice Over enabled?
        // NOTE: #265 - What should we do when network communication is missing or is retrieved?
        // Today player is not displayed in that cases.
        VideoPlayerView(player: player)
            .opacity(opacity)
            .frame(width: assetSize, height: assetSize)
            .clipShape(RoundedRectangle(cornerRadius: radius))
            .accessibilityHidden(true)
            .onTapGesture {
                if isEnabled {
                    if tapToTogglePlay {
                        if isPlaying {
                            player.pause()
                        } else {
                            player.play()
                        }
                        isPlaying.toggle()
                    }
                    if tapToToggleMute {
                        isMuted.toggle()
                        player.isMuted = isMuted
                    }
                }
            }
            .onAppear {
                if isEnabled {
                    player.isMuted = muted
                    isMuted = muted
                    if autoplay {
                        startPlayback()
                    } else {
                        // Seek to zero to force first-frame decode and display thumbnail
                        player.seek(to: .zero)
                    }
                } else {
                    player.seek(to: .zero)
                }
            }
            .onDisappear {
                if isEnabled {
                    player.pause()
                    isPlaying = false
                    removeLoopObserver()
                }
            }
        #if os(visionOS)
            .onChange(of: url) { _, newURL in
                refreshPlayer(with: newURL)
        }
        #else
        .onChange(of: url) { newURL in
            refreshPlayer(with: newURL)
        }
        #endif
        #else
        EmptyView()
        #endif
    }

    // MARK: Helpers

    private var radius: BorderRadiusSemanticToken {
        roundedMedia ? theme.controlItem.borderRadiusMediaRoundedCorner : theme.controlItem.borderRadiusMedia
    }

    private var opacity: Double {
        isEnabled ? theme.opacities.opaque : theme.opacities.disabled
    }

    private var assetSize: CGFloat {
        if itemSize == .small {
            theme.controlItem.sizeAssetSmall
        } else {
            switch size {
            case .medium:
                theme.controlItem.sizeAssetMedium
            case .large:
                theme.controlItem.sizeAssetLarge
            case .extraLarge:
                theme.controlItem.sizeAssetXlarge
            }
        }
    }

    // MARK: Playback

    private func refreshPlayer(with url: URL) {
        if isEnabled {
            removeLoopObserver()
            let item = AVPlayerItem(url: url)
            player.replaceCurrentItem(with: item)
            player.isMuted = isMuted
            if autoplay {
                player.play()
                isPlaying = true
                addLoopObserver(for: item)
            } else {
                player.seek(to: .zero)
                isPlaying = false
            }
        }
    }

    private func startPlayback() {
        player.play()
        isPlaying = true
        if let currentItem = player.currentItem {
            addLoopObserver(for: currentItem)
        }
    }

    private func addLoopObserver(for item: AVPlayerItem) {
        loopObserver = NotificationCenter.default.addObserver(
            forName: .AVPlayerItemDidPlayToEndTime,
            object: item,
            queue: .main)
        { [player] _ in
            DispatchQueue.main.async {
                player.seek(to: .zero)
                player.play()
            }
        }
    }

    private func removeLoopObserver() {
        if let observer = loopObserver {
            NotificationCenter.default.removeObserver(observer)
            loopObserver = nil
        }
    }
}
