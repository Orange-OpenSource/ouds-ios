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

// MARK: - List Item Image

struct ListItemImage: View {

    // MARK: Properties

    let asset: Image

    @Environment(\.theme) private var theme
    @Environment(\.oudsListItemRoundedMedia) private var roundedMedia
    @Environment(\.oudsListItemSize) private var itemSize
    @Environment(\.isEnabled) private var isEnabled

    // MARK: Body

    var body: some View {
        asset
            .resizable()
            .aspectRatio(contentMode: .fit)
            .opacity(opacity)
            .frame(height: assetSize, alignment: .center)
            .clipShape(RoundedRectangle(cornerRadius: radius))
    }

    // MARK: Helpers

    private var radius: BorderRadiusSemanticToken {
        roundedMedia ? theme.controlItem.borderRadiusMediaRoundedCorner : theme.controlItem.borderRadiusMedia
    }

    private var opacity: Double {
        isEnabled ? theme.opacities.opaque : theme.opacities.disabled
    }

    private var assetSize: CGFloat {
        switch itemSize {
        case .standard:
            theme.controlItem.sizeAssetMedium
        case .small:
            theme.controlItem.sizeAssetSmall
        }
    }
}

// MARK: - List Item Flag

struct ListItemFlag: View {

    // MARK: Properties

    let asset: Image

    @Environment(\.theme) private var theme
    @Environment(\.isEnabled) private var isEnabled
    @Environment(\.oudsListItemSize) private var itemSize

    // MARK: Body

    var body: some View {
        HStack {
            asset
                .resizable()
                .aspectRatio(contentMode: .fit)
                .opacity(opacity)
                .frame(height: theme.controlItem.sizeFlagHeight, alignment: .center)
        }
        .frame(minWidth: assetSize, alignment: .center)
    }

    // MARK: Helpers

    private var opacity: Double {
        isEnabled ? theme.opacities.opaque : theme.opacities.disabled
    }

    private var assetSize: CGFloat {
        switch itemSize {
        case .standard:
            theme.controlItem.sizeAssetMedium
        case .small:
            theme.controlItem.sizeAssetSmall
        }
    }
}

#if os(iOS) && canImport(UIKit)
// Control UIKit import to let macOS build the documentation

// MARK: - List Item Video

/// The video element for list item component is tailored for iOS.
/// The result is not acceptable today (v2.2.0) with watchOS, tvOS, macOS and visionOS.
/// Thus this API is only available and compilable for iOS.
struct ListItemVideo: View {

    // MARK: Properties

    let url: URL
    let autoplay: Bool
    let muted: Bool
    let tapToTogglePlay: Bool
    let tapToToggleMute: Bool

    @Environment(\.theme) private var theme
    @Environment(\.isEnabled) private var isEnabled
    @Environment(\.oudsListItemSize) private var itemSize
    @Environment(\.oudsListItemRoundedMedia) private var roundedMedia

    @State private var player: AVPlayer
    @State private var isPlaying: Bool
    @State private var isMuted: Bool
    @State private var loopObserver: (any NSObjectProtocol)?

    // MARK: Init

    init(url: URL, autoplay: Bool, muted: Bool, tapToTogglePlay: Bool, tapToToggleMute: Bool) {
        self.url = url
        self.autoplay = autoplay
        self.muted = muted
        self.tapToTogglePlay = tapToTogglePlay
        self.tapToToggleMute = tapToToggleMute
        _player = State(initialValue: AVPlayer(url: url))
        _isPlaying = State(initialValue: false)
        _isMuted = State(initialValue: muted)
    }

    // MARK: Body

    var body: some View {
        // NOTE: #265 - Does the video must be disabled or muted if Voice Over enabled?
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
    }

    // MARK: Helpers

    private var radius: BorderRadiusSemanticToken {
        roundedMedia ? theme.controlItem.borderRadiusMediaRoundedCorner : theme.controlItem.borderRadiusMedia
    }

    private var opacity: Double {
        isEnabled ? theme.opacities.opaque : theme.opacities.disabled
    }

    private var assetSize: CGFloat {
        switch itemSize {
        case .standard:
            theme.controlItem.sizeAssetMedium
        case .small:
            theme.controlItem.sizeAssetSmall
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

// MARK: - Video Player UIViewRepresentable

/// `AVPlayer` in SwiftUI lifecycle can be buggy ; use of UIKit API is prefered
/// to let the video be played at the best moment when view appears.
private struct VideoPlayerView: UIViewRepresentable {

    let player: AVPlayer

    func makeUIView(context: Context) -> PlayerUIView {
        PlayerUIView(player: player)
    }

    func updateUIView(_ uiView: PlayerUIView, context: Context) {
        uiView.player = player
    }
}

// swiftlint:disable static_over_final_class

/// `AVPlayer` in SwiftUI lifecycle can be buggy ; use of UIKit API is prefered
/// to let the video be played at the best moment when view appears.
private final class PlayerUIView: UIView {

    // MARK: - Layer

    override class var layerClass: AnyClass { AVPlayerLayer.self }

    // swiftlint:disable:next force_cast
    private var playerLayer: AVPlayerLayer { layer as! AVPlayerLayer }

    // MARK: - Player

    var player: AVPlayer? {
        get { playerLayer.player }
        set {
            playerLayer.player = newValue
            playerLayer.videoGravity = .resizeAspectFill
        }
    }

    // MARK: - Init

    init(player: AVPlayer) {
        super.init(frame: .zero)
        self.player = player
        backgroundColor = .clear
    }

    required init?(coder: NSCoder) { nil }

    deinit {}

    // MARK: - Layout

    override func layoutSubviews() {
        super.layoutSubviews()
        playerLayer.frame = bounds
    }
}
// swiftlint:enable static_over_final_class
#endif
