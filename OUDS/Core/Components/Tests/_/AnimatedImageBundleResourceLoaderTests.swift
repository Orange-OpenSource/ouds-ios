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

import Foundation
@testable import OUDSComponents
import Testing

/// Tests on ``AnimatedImageBundleResourceLoader``, used by ``OUDSAnimatedImage/init(named:withExtension:bundle:)``
/// to read a local GIF/WebP file bundled as a plain resource (not an `.xcassets` entry).
struct AnimatedImageBundleResourceLoaderTests {

    // MARK: - Existing resource

    @Test
    func `data returns the bytes of an existing resource with matching extension`() {
        let (bundle, name, fileExtension) = Self.makeTemporaryBundle(fileName: "sample", fileExtension: "gif", content: Data([0x01, 0x02, 0x03]))

        let data = AnimatedImageBundleResourceLoader.data(name: name, extension: fileExtension, bundle: bundle)

        #expect(data == Data([0x01, 0x02, 0x03]))
    }

    @Test
    func `data returns the bytes of an existing WebP resource`() {
        let (bundle, name, fileExtension) = Self.makeTemporaryBundle(fileName: "sample", fileExtension: "webp", content: Data([0x04, 0x05]))

        let data = AnimatedImageBundleResourceLoader.data(name: name, extension: fileExtension, bundle: bundle)

        #expect(data == Data([0x04, 0x05]))
    }

    // MARK: - Missing resource

    @Test
    func `data returns nil when the resource does not exist`() {
        let bundle = Bundle.main

        let data = AnimatedImageBundleResourceLoader.data(name: "does_not_exist", extension: "gif", bundle: bundle)

        #expect(data == nil)
    }

    // MARK: - Helpers

    /// Creates a temporary directory containing a single file, and wraps it in a `Bundle` so
    /// `Bundle.url(forResource:withExtension:)` can resolve it, mimicking a plain bundle resource.
    private static func makeTemporaryBundle(fileName: String, fileExtension: String, content: Data) -> (bundle: Bundle, name: String, extension: String) {
        let directory = FileManager.default.temporaryDirectory.appendingPathComponent(UUID().uuidString)
        try? FileManager.default.createDirectory(at: directory, withIntermediateDirectories: true)

        let fileURL = directory.appendingPathComponent(fileName).appendingPathExtension(fileExtension)
        try? content.write(to: fileURL)

        // swiftlint:disable:next force_unwrapping
        let bundle = Bundle(url: directory)!
        return (bundle, fileName, fileExtension)
    }
}
