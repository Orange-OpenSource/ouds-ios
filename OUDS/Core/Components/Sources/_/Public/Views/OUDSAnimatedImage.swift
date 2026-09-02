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

import OUDSFoundations
import SwiftUI

/// ``OUDSAnimatedImage`` is a SwiftUI view able to play animated **GIF** and **WebP** images.
///
/// Remote animated images are downloaded and cached (memory + disk) using ``OUDSAsyncImageCache``.
///
/// ## Providing a local GIF or WebP file
///
/// Animated images **must not** be added to an `.xcassets` catalog: Asset Catalogs only keep the first
/// frame of an animated GIF or WebP, discarding the animation. Instead, add the `.gif`/`.webp` file to
/// the app (or module) target as a plain bundle resource:
/// 1. Drag & drop the file into the Xcode project navigator.
/// 2. In the dialog, check **"Copy items if needed"**.
/// 3. Make sure the file's **Target Membership** includes your app/module target.
/// 4. Load it with ``init(named:withExtension:bundle:)``, see below.
///
/// ## Accessibility and ecodesign
///
/// To respect the user's preferences and save battery, the animation automatically pauses on its first
/// frame when:
/// - "Reduce Motion" accessibility setting is enabled, or
/// - Low Power Mode is enabled.
///
/// > Note: Low Power Mode detection relies on ``OUDSLowPowerModeObserver``, injected as an environment
/// > object by ``OUDSThemeableView``. Make sure ``OUDSAnimatedImage`` is used inside a view hierarchy
/// > rooted by ``OUDSThemeableView`` for this behavior to work.
///
/// ## Code samples
///
/// ```swift
///     // From a remote URL (downloaded once, then cached)
///     OUDSAnimatedImage(url: URL(string: "https://example.com/animation.gif"))
///
///     // From a local file bundled with the app ("loading_spinner.gif" in the main bundle)
///     OUDSAnimatedImage(named: "loading_spinner", withExtension: "gif")
///
///     // From a local file bundled with a Swift Package module ("product_teaser.webp" in .module)
///     OUDSAnimatedImage(named: "product_teaser", withExtension: "webp", bundle: .module)
///
///     // From local data already loaded by the caller (e.g. downloaded and cached elsewhere)
///     OUDSAnimatedImage(data: myWebPData)
/// ```
///
/// - Since: 3.0.0
@available(iOS 15, macOS 13, visionOS 1, watchOS 11, tvOS 16, *)
public struct OUDSAnimatedImage: View {

    // MARK: - Properties

    private let source: Source

    private enum Source {
        case url(URL?)
        case data(Data)
        case bundleResource(name: String, extension: String?, bundle: Bundle)
    }

    // MARK: - Initializers

    /// Creates an animated image loaded and cached from the given `url`.
    ///
    /// - Parameter url: The URL of the animated (GIF or WebP) image to load
    public init(url: URL?) {
        source = .url(url)
    }

    /// Creates an animated image from local `data` (e.g. bytes already downloaded and cached by the caller).
    ///
    /// - Parameter data: The raw bytes of the animated (GIF or WebP) image
    public init(data: Data) {
        source = .data(data)
    }

    /// Creates an animated image loaded from a local **GIF** or **WebP** file bundled with the application
    /// (or a Swift Package module).
    ///
    /// The file **must not** be added inside an `.xcassets` catalog: Asset Catalogs only keep the first
    /// frame of an animated image, discarding the animation. Instead, add it to the target as a plain
    /// bundle resource (drag & drop into the Xcode target, checking "Copy items if needed" and the
    /// target membership).
    ///
    /// ```swift
    ///     // "loading_spinner.gif" added as a bundle resource of the main target
    ///     OUDSAnimatedImage(named: "loading_spinner", withExtension: "gif")
    ///
    ///     // "product_teaser.webp" bundled in a Swift Package module resource
    ///     OUDSAnimatedImage(named: "product_teaser", withExtension: "webp", bundle: .module)
    ///
    ///     // Extension omitted: the first resource matching the name, whatever its extension, is used
    ///     OUDSAnimatedImage(named: "loading_spinner")
    /// ```
    ///
    /// - Parameters:
    ///   - name: The file name of the animated image, without its extension (e.g. `"loading_spinner"`)
    ///   - extension: The file extension, e.g. `"gif"` or `"webp"`. Pass `nil` to let the system pick
    ///     the first resource matching `name` regardless of its extension. Defaults to `nil`.
    ///   - bundle: The bundle containing the resource. Defaults to `.main`.
    public init(named name: String, withExtension extension: String? = nil, bundle: Bundle = .main) {
        source = .bundleResource(name: name, extension: `extension`, bundle: bundle)
    }

    // MARK: Body

    public var body: some View {
        switch source {
        case let .url(url):
            RemoteAnimatedImageView(url: url)
        case let .data(data):
            DecodedAnimatedImageView(data: data)
        case let .bundleResource(name, fileExtension, bundle):
            BundleResourceAnimatedImageView(name: name, extension: fileExtension, bundle: bundle)
        }
    }
}

// MARK: - Bundle Resource Animated Image View

@available(iOS 15, macOS 13, visionOS 1, watchOS 11, tvOS 16, *)
private struct BundleResourceAnimatedImageView: View {

    let name: String
    let `extension`: String?
    let bundle: Bundle

    @State private var data: Data?

    var body: some View {
        Group {
            if let data {
                DecodedAnimatedImageView(data: data)
            } else {
                Color.clear
            }
        }
        .task(id: name) {
            data = await Self.loadData(name: name, extension: `extension`, bundle: bundle)
        }
    }

    /// Reads the bytes of the bundle resource matching `name`/`extension`, off the main actor to avoid
    /// blocking the UI while reading a potentially large file.
    private static func loadData(name: String, extension: String?, bundle: Bundle) async -> Data? {
        await Task.detached(priority: .utility) {
            AnimatedImageBundleResourceLoader.data(name: name, extension: `extension`, bundle: bundle)
        }.value
    }
}

// MARK: - Remote Animated Image View

private struct RemoteAnimatedImageView: View {

    let url: URL?

    @State private var data: Data?

    var body: some View {
        Group {
            if let data {
                DecodedAnimatedImageView(data: data)
            } else {
                Color.clear
            }
        }
        .task(id: url) {
            guard let url else { return }
            data = await OUDSAsyncImageCache.shared.loadData(from: url)
        }
    }
}

// MARK: - Decoded Animated Image View

private struct DecodedAnimatedImageView: View {

    let data: Data

    @State private var content: AnimatedImageContent?

    @Environment(\.accessibilityReduceMotion) private var reduceMotion
    @EnvironmentObject private var lowPowerModeObserver: OUDSLowPowerModeObserver

    var body: some View {
        Group {
            if let content, !content.frames.isEmpty {
                if shouldAnimate, content.frames.count > 1 {
                    TimelineView(.animation) { timeline in
                        frame(for: timeline.date, content: content)
                    }
                } else {
                    Image(decorative: content.frames[0].image, scale: 1)
                        .resizable()
                }
            } else {
                Color.clear
            }
        }
        .task(id: data) {
            content = AnimatedImageDecoder.decode(data: data)
        }
    }

    /// The animation must be paused (first frame only) when the user asked for reduced motion,
    /// or when the device is in Low Power Mode, to save battery.
    private var shouldAnimate: Bool {
        !reduceMotion && !lowPowerModeObserver.isLowPowerModeEnabled
    }

    @ViewBuilder
    private func frame(for date: Date, content: AnimatedImageContent) -> some View {
        let index = frameIndex(at: date, content: content)
        Image(decorative: content.frames[index].image, scale: 1)
            .resizable()
    }

    /// Computes the index of the frame that must be displayed at the given `date`, looping over the
    /// whole animation duration.
    private func frameIndex(at date: Date, content: AnimatedImageContent) -> Int {
        let totalDuration = content.totalDuration
        guard totalDuration > 0 else { return 0 }

        let elapsed = date.timeIntervalSinceReferenceDate.truncatingRemainder(dividingBy: totalDuration)

        var cumulated: TimeInterval = 0
        for (index, frame) in content.frames.enumerated() {
            cumulated += frame.duration
            if elapsed < cumulated {
                return index
            }
        }

        return content.frames.count - 1
    }
}
