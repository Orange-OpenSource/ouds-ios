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

#if os(iOS) && canImport(UIKit)
import AVFoundation
import OUDSThemesContract
import OUDSTokensSemantic
import SwiftUI

// MARK: - Video Player UIViewRepresentable

/// `AVPlayer` in SwiftUI lifecycle can be buggy ; use of UIKit API is prefered
/// to let the video be played at the best moment when view appears.
struct VideoPlayerView: UIViewRepresentable {

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
final class PlayerUIView: UIView {

    // MARK: - Layer

    override class var layerClass: AnyClass {
        AVPlayerLayer.self
    }

    // swiftlint:disable:next force_cast
    private var playerLayer: AVPlayerLayer {
        layer as! AVPlayerLayer
    }

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

    required init?(coder: NSCoder) {
        nil
    }

    deinit {}

    // MARK: - Layout

    override func layoutSubviews() {
        super.layoutSubviews()
        playerLayer.frame = bounds
    }
}
// swiftlint:enable static_over_final_class
#endif
