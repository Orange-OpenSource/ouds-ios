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

import SwiftUI

/// ``OUDSAsyncImage`` is an async image component with built-in caching support.
/// It loads images from URLs and caches them in memory and on disk for optimal performance.
///
/// This component mirrors the API of `AsyncImage` but adds caching functionality.
///
/// ## Features
///
/// - **Automatic caching**: Images are cached in memory (`NSCache`) and on disk
/// - **Same API as SwiftUI.AsyncImage**: Use it as a drop-in replacement
/// - **Flexible content customization**: Transform the loaded image with custom views
///
/// ## Code samples
///
/// ```swift
///     // Basic usage (like SwiftUI.AsyncImage)
///     OUDSAsyncImage(url: URL(string: "https://example.com/photo.png"))
///
///     // With content transformation and placeholder
///     OUDSAsyncImage(url: url) { image in
///         image.resizable()
///     } placeholder: {
///         ProgressView()
///     }
///
///     // With phases for full control
///     OUDSAsyncImage(url: url) { phase in
///         switch phase {
///         case .empty: ProgressView()
///         case .success(let image): image.resizable()
///         case .failure: Image(systemName: "photo")
///         }
///     }
/// ```
///
/// - Since: 3.0.0
@available(iOS 15, macOS 13, visionOS 1, watchOS 11, tvOS 16, *)
public struct OUDSAsyncImage<Content>: View where Content: View {

    // MARK: - Properties

    private let url: URL?
    private let content: (ImageLoadPhase) -> AnyView

    // MARK: Initializer

    /// Creates an async image with caching support.
    ///
    /// ```swift
    ///     OUDSAsyncImage(url: URL(string: "https://example.com/photo.png"))
    /// ```
    ///
    /// - Parameter url: The URL to load the image from
    public init(url: URL?) {
        self.url = url
        content = { phase in
            switch phase {
            case .empty, .failure:
                AnyView(Color.clear)
            case let .success(image):
                AnyView(image)
            }
        }
    }

    /// Creates an async image with caching support using custom content and placeholder.
    ///
    /// ```swift
    ///     OUDSAsyncImage(url: url) { image in
    ///         image.resizable()
    ///     } placeholder: {
    ///         ProgressView()
    ///     }
    /// ```
    ///
    /// - Parameters:
    ///   - url: The URL to load the image from
    ///   - content: A closure that transforms the loaded image into a view
    ///   - placeholder: A closure that returns the placeholder view
    public init(
        url: URL?,
        @ViewBuilder content: @escaping (Image) -> Content,
        @ViewBuilder placeholder: @escaping () -> some View)
    {
        self.url = url
        self.content = { phase in
            switch phase {
            case .empty, .failure:
                AnyView(placeholder())
            case let .success(image):
                AnyView(content(image))
            }
        }
    }

    /// Creates an async image with caching support using phase-based content.
    ///
    /// ```swift
    ///     OUDSAsyncImage(url: url) { phase in
    ///         switch phase {
    ///         case .empty: ProgressView()
    ///         case .success(let image): image.resizable()
    ///         case .failure: Image(systemName: "photo")
    ///         }
    ///     }
    /// ```
    ///
    /// - Parameters:
    ///   - url: The URL to load the image from
    ///   - content: A closure that receives the loading phase and returns a view
    public init(
        url: URL?,
        @ViewBuilder content: @escaping (ImageLoadPhase) -> Content)
    {
        self.url = url
        self.content = { phase in AnyView(content(phase)) }
    }

    // MARK: Body

    public var body: some View {
        CachedAsyncImageView(url: url, content: content)
    }
}

// MARK: - Image Load Phase

/// Represents the loading phase of an async image.
///
/// - Since: 3.0.0
public enum ImageLoadPhase {

    /// The image is currently loading.
    case empty

    /// The image loaded successfully.
    case success(Image)

    /// The image failed to load.
    case failure(Error)
}

// MARK: - Cached Async Image View

private struct CachedAsyncImageView: View {

    let url: URL?
    let content: (ImageLoadPhase) -> AnyView

    @State private var phase: ImageLoadPhase = .empty

    var body: some View {
        content(phase)
            .task(id: url) {
                await loadImage()
            }
    }

    private func loadImage() async {
        guard let url else {
            phase = .failure(URLError(.badURL))
            return
        }

        phase = .empty

        if let cachedData = OUDSAsyncImageCache.shared.data(for: url),
           let image = makeImage(from: cachedData)
        {
            phase = .success(image)
            return
        }

        do {
            let (data, response) = try await URLSession.shared.data(from: url)

            guard let httpResponse = response as? HTTPURLResponse,
                  (200 ... 299).contains(httpResponse.statusCode)
            else {
                phase = .failure(URLError(.badServerResponse))
                return
            }

            OUDSAsyncImageCache.shared.setData(data, for: url)

            if let image = makeImage(from: data) {
                phase = .success(image)
            } else {
                phase = .failure(URLError(.cannotDecodeContentData))
            }
        } catch {
            phase = .failure(error)
        }
    }

    #if canImport(UIKit)
    private func makeImage(from data: Data) -> Image? {
        guard let uiImage = UIImage(data: data) else { return nil }
        // swiftlint:disable:next accessibility_label_for_image
        return Image(uiImage: uiImage)
    }

    #elseif canImport(AppKit)
    private func makeImage(from data: Data) -> Image? {
        guard let nsImage = NSImage(data: data) else { return nil }
        // swiftlint:disable:next accessibility_label_for_image
        return Image(nsImage: nsImage)
    }
    #else
    private func makeImage(from data: Data) -> Image? {
        nil
    }
    #endif
}
