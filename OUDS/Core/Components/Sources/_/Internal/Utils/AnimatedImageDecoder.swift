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

import ImageIO
import UniformTypeIdentifiers

// MARK: - Animated Image Frame

/// A single decoded frame of an animated image.
struct AnimatedImageFrame: Sendable {

    /// The decoded frame image.
    let image: CGImage

    /// The duration, in seconds, this frame must be displayed before moving to the next one.
    let duration: TimeInterval
}

// MARK: - Animated Image Content

/// The result of decoding an animated image (GIF or WebP).
struct AnimatedImageContent: Sendable {

    /// The ordered list of decoded frames.
    let frames: [AnimatedImageFrame]

    /// The number of times the animation must loop, `0` meaning infinite.
    let loopCount: Int

    /// The total duration, in seconds, of one animation loop.
    var totalDuration: TimeInterval {
        frames.reduce(0) { $0 + $1.duration }
    }
}

// MARK: - Animated Image Decoder

/// ``AnimatedImageDecoder`` decodes animated GIF and WebP images using only Apple's native
/// `ImageIO` framework: no third-party library (such as `libwebp` or `SDWebImage`) nor external dependency is used.
enum AnimatedImageDecoder {

    // MARK: Duration

    /// Fallback duration applied to a frame if `ImageIO` does not report any (some encoders omit it).
    private static let defaultFrameDuration: TimeInterval = 0.1

    /// Minimal accepted duration for a frame, protects against a too fast (near 0) advertised delay.
    private static let minimalFrameDuration: TimeInterval = 0.02

    // MARK: Decoding

    /// Decodes the given `data` as an animated image (GIF or WebP).
    ///
    /// - Parameter data: The raw bytes of the image to decode
    /// - Returns: The decoded ``AnimatedImageContent`` if `data` contains at least one frame,
    ///   or `nil` if the data cannot be decoded at all.
    static func decode(data: Data) -> AnimatedImageContent? {
        guard let source = CGImageSourceCreateWithData(data as CFData, nil) else { return nil }

        let frameCount = CGImageSourceGetCount(source)
        guard frameCount > 0 else { return nil }

        var frames: [AnimatedImageFrame] = []
        frames.reserveCapacity(frameCount)

        for index in 0 ..< frameCount {
            guard let cgImage = CGImageSourceCreateImageAtIndex(source, index, nil) else { continue }
            let duration = frameDuration(source: source, index: index)
            frames.append(AnimatedImageFrame(image: cgImage, duration: duration))
        }

        guard !frames.isEmpty else { return nil }

        return AnimatedImageContent(frames: frames, loopCount: loopCount(source: source))
    }

    // MARK: Helpers

    /// Reads the display duration of the frame at `index`, looking successively at the GIF and WebP
    /// `ImageIO` dictionaries (unanimated / single-frame images fall back to a default duration).
    private static func frameDuration(source: CGImageSource, index: Int) -> TimeInterval {
        guard let properties = CGImageSourceCopyPropertiesAtIndex(source, index, nil) as? [CFString: Any] else {
            return defaultFrameDuration
        }

        if let gifProperties = properties[kCGImagePropertyGIFDictionary] as? [CFString: Any] {
            if let unclamped = gifProperties[kCGImagePropertyGIFUnclampedDelayTime] as? Double {
                return max(unclamped, minimalFrameDuration)
            }
            if let delay = gifProperties[kCGImagePropertyGIFDelayTime] as? Double {
                return max(delay, minimalFrameDuration)
            }
        }

        if let webpProperties = properties[kCGImagePropertyWebPDictionary] as? [CFString: Any],
           let delay = webpProperties[kCGImagePropertyWebPDelayTime] as? Double
        {
            return max(delay, minimalFrameDuration)
        }

        return defaultFrameDuration
    }

    /// Reads the loop count of the animation from the first frame's properties (`0` means infinite).
    private static func loopCount(source: CGImageSource) -> Int {
        guard let properties = CGImageSourceCopyPropertiesAtIndex(source, 0, nil) as? [CFString: Any] else {
            return 0
        }

        if let gifProperties = properties[kCGImagePropertyGIFDictionary] as? [CFString: Any],
           let loopCount = gifProperties[kCGImagePropertyGIFLoopCount] as? Int
        {
            return loopCount
        }

        if let webpProperties = properties[kCGImagePropertyWebPDictionary] as? [CFString: Any],
           let loopCount = webpProperties[kCGImagePropertyWebPLoopCount] as? Int
        {
            return loopCount
        }

        return 0
    }
}

// MARK: - Animated Image Bundle Resource Loader

/// Resolves and reads the raw bytes of a `.gif`/`.webp` file added to a `Bundle` as a plain resource
/// (not inside an `.xcassets` catalog).
enum AnimatedImageBundleResourceLoader {

    /// Reads the bytes of the resource `name` (with optional `extension`) in `bundle`.
    ///
    /// - Parameters:
    ///   - name: The file name of the resource, without its extension
    ///   - extension: The file extension, or `nil` to match the first resource found for `name`
    ///   - bundle: The bundle to look the resource up into
    /// - Returns: The content of the file, or `nil` if the resource cannot be found or read
    static func data(name: String, extension: String?, bundle: Bundle) -> Data? {
        guard let url = bundle.url(forResource: name, withExtension: `extension`) else { return nil }
        return try? Data(contentsOf: url)
    }
}
