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

import OUDSThemesContract
import OUDSTokensSemantic
import SwiftUI

/// An icon element that can be used at the leading or trailing position of a list item
/// such as ``OUDSStaticListItem`` or ``OUDSNavigationListItem``.
///
/// ``OUDSListItemImage`` displays an image (square or wide).
///
/// ## Sizes
///
/// The ``Size`` enum defines the available sizes:
/// - **`.medium`**: The default size, suited for standard list items.
/// - **`.large`**: A larger variant for increased visual prominence.
/// - **`.extraLarge`**: The largest variant, typically used for profile-like displays.
///
/// **Note:** When the image is embedded in a list item with small size
/// (via `SwiftUI/View/oudsListItemSize(_:)`), the icon is always rendered at its smallest size.
///
/// ## Code samples
///
/// ```swift
///     // Decorative image
///     OUDSListItemImage(asset: Image(decorative: "il_placeholder"))
///
///     // Not decorative image
///     OUDSListItemImage(asset: Image("meaningful_image"), description: "A nice landscape")
///
///     // Not decorative image with large size
///     OUDSListItemImage(asset: Image("meaningful_image"), description: "A nice landscape", size: .large)
///
///     // Adjust with square ratio
///     OUDSListItemImage(asset: Image("meaningful_image"), description: "A nice landscape", ratio: .square)
///
///     // Async image from URL
///     OUDSListItemImage(asyncImage: OUDSAsyncImage(url: URL(string: "https://example.com/image.png")), description: "A remote image")
///
///     // Usage as leading element in a list item
///     OUDSStaticListItem(
///         data: OUDSListItemData(label: "Information"),
///         leading: .image(.init(asset: Image(decorative: "il_placeholder", size: .medium))
///     )
///
///     // Usage as trailing element in a list item
///     OUDSStaticListItem(
///         data: OUDSListItemData(label: "Warning"),
///         trailing: .image(.init(asset: Image(decorative: "il_placeholder", size: .medium))
///     )
/// ```
///
/// - Since: 3.0.0
@available(iOS 15, macOS 13, visionOS 1, watchOS 11, tvOS 16, *)
public struct OUDSListItemImage: View {

    // MARK: Size

    /// Defines the available sizes (i.e. height) for the image.
    /// When the image is embedded in a list item with `.small` size, this parameter is ignored
    /// and a smallest size is always used.
    ///
    /// - Since: 3.0.0
    @frozen public enum Size {
        /// The medium size, used as the default in standard list items.
        case medium

        /// The large size, providing increased visual prominence.
        case large

        /// The extra-large size, typically used for profile-like displays.
        case extraLarge
    }

    /// Defines the aspect ratio of the image container.
    ///
    /// - Since: 3.0.0
    @frozen public enum Ratio {
        /// Use for square visual content such as products, logos, album covers or profile-related imagery.
        case square

        /// Use for landscape content such as editorial images or wide media thumbnails.
        case widescreen
    }

    // MARK: Properties

    let imageType: ImageType
    let size: Size
    let ratio: Ratio
    let contentMode: ContentMode
    let description: String?

    @Environment(\.theme) private var theme
    @Environment(\.isEnabled) private var isEnabled
    @Environment(\.oudsListItemSize) private var itemSize
    @Environment(\.dynamicTypeSize) private var dynamicTypeSize
    @Environment(\.oudsListItemRoundedMedia) private var roundedMedia

    // MARK: Initializers

    /// Creates an icon element for use in a list item at the leading or trailing position.
    ///
    /// ```swift
    ///     // Decorative image
    ///     OUDSListItemImage(asset: Image(decorative: "il_placeholder"))
    ///
    ///     // Not decorative image
    ///     OUDSListItemImage(asset: Image("meaningful_image"), description: "A nice landscape")
    /// ```
    ///
    /// - Parameters:
    ///   - asset: The asset contains the image
    ///   - description: The description of the image if not decorative
    ///   - size: The size of the icon. Defaults to `.medium`.
    ///     **Note:** Ignored when the icon is embedded in a list item with small size
    ///     (via ``SwiftUICore/View/oudsListItemSize(_:)``), where the smallest size is always applied.
    ///   - ratio: Ratio of the image. By default a `square` image.
    ///   - contentMode:A flag indicating whether this view should fit or fill the parent context. Default set to `.fit`.
    public init(asset: Image, description: String? = nil, size: Size = .medium, ratio: Ratio = .square, contentMode: ContentMode = .fit) {
        imageType = .asset(asset)
        self.size = size
        self.ratio = ratio
        self.contentMode = contentMode
        self.description = description
    }

    /// Creates an icon element for use in a list item at the leading or trailing position with an async image.
    ///
    /// ```swift
    ///     // Async image from URL
    ///     OUDSListItemImage(asyncImage: OUDSAsyncImage(url: URL(string: "https://example.com/image.png")), description: "A remote image")
    ///
    ///     // Async image with large size
    ///     OUDSListItemImage(asyncImage: OUDSAsyncImage(url: URL(string: "https://example.com/image.png")), description: "A remote image", size: .large)
    ///
    ///     // Async image with custom content and placeholder
    ///     OUDSListItemImage(
    ///         asyncImage: OUDSAsyncImage(url: URL(string: "https://example.com/image.png")) { image in
    ///             image.resizable()
    ///         } placeholder: {
    ///             ProgressView()
    ///         },
    ///         description: "A remote image",
    ///         size: .medium
    ///     )
    /// ```
    ///
    /// - Parameters:
    ///   - asyncImage: The async image to load (created with ``OUDSAsyncImage``)
    ///   - description: The description of the image for accessibility
    ///   - size: The size of the icon. Defaults to `.medium`.
    ///     **Note:** Ignored when the icon is embedded in a list item with small size
    ///     (via ``SwiftUICore/View/oudsListItemSize(_:)``), where the smallest size is always applied.
    ///   - ratio: Ratio of the image. By default a `square` image.
    ///   - contentMode: A flag indicating whether this view should fit or fill the parent context. Default set to `.fit`.
    public init(asyncImage: OUDSAsyncImage<some View>, description: String? = nil, size: Size = .medium, ratio: Ratio = .square, contentMode: ContentMode = .fit) {
        imageType = .asyncImage(AnyView(asyncImage))
        self.size = size
        self.ratio = ratio
        self.contentMode = contentMode
        self.description = description
    }

    // MARK: Image Type

    /// Defines the type of image displayed in the list item.
    ///
    /// - Since: 3.0.0
    @frozen public enum ImageType {
        /// A static image asset.
        case asset(Image)

        /// An async image loaded from a URL.
        case asyncImage(AnyView)
    }

    // MARK: Body

    @ViewBuilder
    public var body: some View {
        resizableImage
            .opacity(opacity)
            .frame(width: assetSize * ratioValue, height: assetSize, alignment: .center)
            .clipShape(RoundedRectangle(cornerRadius: radius))
            .accessibilityElement(children: .ignore)
            .accessibilityLabel(description ?? "")
            .accessibilityHidden(isDecorative)
    }

    @ViewBuilder
    private var resizableImage: some View {
        switch imageType {
        case let .asset(image):
            image
                .resizable()
                .aspectRatio(contentMode: contentMode)
        case let .asyncImage(anyView):
            anyView
                .aspectRatio(contentMode: contentMode)
        }
    }

    // MARK: Helpers

    private var isDecorative: Bool {
        description == nil || description?.isEmpty == true
    }

    private var radius: BorderRadiusSemanticToken {
        roundedMedia ? theme.listItem.borderRadiusMediaRounded : theme.listItem.borderRadiusMedia
    }

    private var ratioValue: CGFloat {
        switch ratio {
        case .square:
            1
        case .widescreen:
            16 / 9
        }
    }

    private var opacity: Double {
        isEnabled ? theme.opacities.opaque : theme.opacities.disabled
    }

    private var assetSize: CGFloat {
        let rawSize = if itemSize == .small {
            theme.listItem.sizeAssetSmall
        } else {
            switch size {
            case .medium:
                theme.listItem.sizeAssetMedium
            case .large:
                theme.listItem.sizeAssetLarge
            case .extraLarge:
                theme.listItem.sizeAssetXlarge
            }
        }

        return rawSize * dynamicTypeSize.percentageRate / 100
    }
}
