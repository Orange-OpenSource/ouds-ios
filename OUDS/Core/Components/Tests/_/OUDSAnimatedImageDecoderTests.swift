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

import CoreGraphics
import Foundation
import ImageIO
@testable import OUDSComponents
import Testing
import UniformTypeIdentifiers

/// Tests on ``AnimatedImageDecoder``, decoding animated GIF images with pure `ImageIO`
/// (no third-party dependency).
struct OUDSAnimatedImageDecoderTests {

    // MARK: - Decoding a valid animated GIF

    @Test
    func `decode returns one frame per image in an animated GIF`() {
        let data = Self.makeAnimatedGIFData(frameCount: 3, delay: 0.2, loopCount: 0)

        let content = AnimatedImageDecoder.decode(data: data)

        #expect(content?.frames.count == 3)
    }

    @Test
    func `decode reads the delay time of each frame`() {
        let data = Self.makeAnimatedGIFData(frameCount: 2, delay: 0.25, loopCount: 0)

        let content = AnimatedImageDecoder.decode(data: data)

        #expect(content?.frames.allSatisfy { abs($0.duration - 0.25) < 0.01 } == true)
    }

    @Test
    func `decode computes the total duration of one loop`() {
        let data = Self.makeAnimatedGIFData(frameCount: 4, delay: 0.1, loopCount: 0)

        let content = AnimatedImageDecoder.decode(data: data)

        #expect(content.map { abs($0.totalDuration - 0.4) < 0.01 } == true)
    }

    // MARK: - Decoding invalid data

    @Test
    func `decode returns nil for invalid data`() {
        let data = Data([0x00, 0x01, 0x02, 0x03])

        let content = AnimatedImageDecoder.decode(data: data)

        #expect(content == nil)
    }

    @Test
    func `decode returns a single frame for a static (non-animated) image`() {
        let data = Self.makeAnimatedGIFData(frameCount: 1, delay: 0.1, loopCount: 0)

        let content = AnimatedImageDecoder.decode(data: data)

        #expect(content?.frames.count == 1)
    }

    // MARK: - Helpers

    /// Builds, in memory, the raw bytes of an animated GIF with `frameCount` solid-color frames,
    /// each displayed for `delay` seconds, looping `loopCount` times (`0` meaning infinite).
    private static func makeAnimatedGIFData(frameCount: Int, delay: Double, loopCount: Int) -> Data {
        let data = NSMutableData()

        guard let destination = CGImageDestinationCreateWithData(data, UTType.gif.identifier as CFString, frameCount, nil) else {
            return Data()
        }

        let gifProperties = [kCGImagePropertyGIFDictionary: [kCGImagePropertyGIFLoopCount: loopCount]] as CFDictionary
        CGImageDestinationSetProperties(destination, gifProperties)

        let frameProperties = [kCGImagePropertyGIFDictionary: [kCGImagePropertyGIFDelayTime: delay]] as CFDictionary

        for _ in 0 ..< frameCount {
            let image = Self.makeSolidColorImage()
            CGImageDestinationAddImage(destination, image, frameProperties)
        }

        guard CGImageDestinationFinalize(destination) else { return Data() }

        return data as Data
    }

    /// Builds a tiny 4x4 solid color `CGImage`, sufficient to be encoded/decoded as a GIF frame.
    private static func makeSolidColorImage() -> CGImage {
        let width = 4
        let height = 4
        let colorSpace = CGColorSpaceCreateDeviceRGB()
        let bitmapInfo = CGImageAlphaInfo.noneSkipLast.rawValue
        guard let context = CGContext(data: nil, width: width, height: height, bitsPerComponent: 8, bytesPerRow: 0, space: colorSpace, bitmapInfo: bitmapInfo)
        else {
            Issue.record("Failed to build test CGContext")
            fatalError("Failed to build test CGContext")
        }

        context.setFillColor(red: 1, green: 0, blue: 0, alpha: 1)
        context.fill(CGRect(x: 0, y: 0, width: width, height: height))

        guard let image = context.makeImage() else {
            Issue.record("Failed to build test CGImage")
            fatalError("Failed to build test CGImage")
        }

        return image
    }
}
