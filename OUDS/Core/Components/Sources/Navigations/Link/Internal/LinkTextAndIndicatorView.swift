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
import OUDSThemesContract
import OUDSTokensSemantic
import SwiftUI

#if os(macOS)
import AppKit
#else
import UIKit
#endif

struct LinkTextAndIndicatorView: View {

    // MARK: Properties

    let text: String
    let interactionState: OUDSButtonInteractionState
    let density: OUDSLink.Density
    let size: OUDSLink.Size
    let indicator: OUDSLink.Indicator

    @Environment(\.theme) private var theme
    @Environment(\.colorScheme) private var colorScheme
    @Environment(\.horizontalSizeClass) private var horizontalSizeClass
    @Environment(\.verticalSizeClass) private var verticalSizeClass
    @Environment(\.layoutDirection) private var layoutDirection
    @Environment(\.oudsUseMonochrome) private var useMonochrome
    @Environment(\.dynamicTypeSize) private var dynamicTypeSize

    // MARK: Body

    var body: some View {
        switch indicator {
        case .previous:
            HStack(alignment: .center, spacing: spacing) {
                Image(resourceName, bundle: theme.resourcesBundle)
                    .resizable()
                    .renderingMode(.template)
                    .foregroundColor(indicatorColor.color(for: colorScheme))
                    .frame(width: iconSize, height: iconSize)
                    .toFlip(layoutDirection == .rightToLeft)
                    .accessibilityHidden(true)

                Text(text)
                    .foregroundColor(contentColor.color(for: colorScheme))
                    .underline(interactionState == .hover || interactionState == .pressed)
                    .font(Font(nativeFont))
            }
        case .external, .next:
            HStack(alignment: .center, spacing: spacing) {
                let label = Text(text)
                    .foregroundColor(contentColor.color(for: colorScheme))
                    .underline(interactionState == .hover || interactionState == .pressed)
                let icon = Text(indicatorImage)
                    .foregroundColor(indicatorColor.color(for: colorScheme))
                    .baselineOffset(indicatorBaselineOffset)

                Text("\(label)\(icon)")
            }
            .multilineTextAlignment(.leading)
        }
    }

    // MARK: Heleprs

    private var indicatorImage: Image {
        let image = LinkInlineIndicatorImage.make(resourceName: resourceName,
                                                  bundle: theme.resourcesBundle,
                                                  metrics: .init(iconSize: iconSize,
                                                                 layoutHeight: indicatorLayoutHeight,
                                                                 spacing: spacing),
                                                  indicator: indicator,
                                                  layoutDirection: layoutDirection)
        #if os(macOS)
        // swiftlint:disable:next accessibility_label_for_image
        return Image(nsImage: image).renderingMode(.template)
        #else
        // swiftlint:disable:next accessibility_label_for_image
        return Image(uiImage: image).renderingMode(.template)
        #endif
    }

    private var indicatorBaselineOffset: CGFloat {
        (nativeFont.capHeight - indicatorLayoutHeight) / 2
    }

    private var indicatorLayoutHeight: CGFloat {
        nativeFontLineHeight
    }

    private var nativeFont: NativeFont {
        Font.makeFont(family: theme.fontFamily,
                      from: size == .small ? theme.fonts.labelStrongMedium : theme.fonts.labelStrongLarge,
                      isCompact: horizontalSizeClass == .compact || verticalSizeClass == .compact)
    }

    private var nativeFontLineHeight: CGFloat {
        #if os(macOS)
        NSLayoutManager().defaultLineHeight(for: nativeFont)
        #else
        nativeFont.lineHeight
        #endif
    }

    private var iconSize: CGFloat {
        (size == .small ? theme.link.sizeIconSmall : theme.link.sizeIconDefault) * dynamicTypeSize.percentageRate / 100
    }

    private var spacing: CGFloat {
        size == .small ? theme.link.spaceColumnGapChevronSmall : theme.link.spaceColumnGapChevronDefault
    }

    private var resourceName: String {
        switch indicator {
        case .previous:
            "Component-link-previous"
        case .next:
            "Component-link-next"
        case .external:
            "Component-link-external-link"
        }
    }

    private var contentColor: MultipleColorSemanticToken {
        LinkColorProvider.colorContent(from: theme, with: interactionState, useMonochrome: useMonochrome)
    }

    private var indicatorColor: MultipleColorSemanticToken {
        switch interactionState {
        case .enabled:
            useMonochrome ? theme.link.monoColorContentEnabled : theme.link.colorChevronEnabled
        case .hover:
            useMonochrome ? theme.link.monoColorContentHover : theme.link.colorChevronHover
        case .pressed:
            useMonochrome ? theme.link.monoColorContentPressed : theme.link.colorChevronPressed
        case .disabled, .readOnly:
            useMonochrome ? theme.link.monoColorContentDisabled : theme.colors.actionDisabled
        }
    }
}

// MARK: Link indicator image

/// Used to display image with additional space before the indicator asset.
/// To reduse cpu usage, the image is store into a cache.
/// It is based on `UIImage` and `UIGraphicsImageRenderer`.
@MainActor enum LinkInlineIndicatorImage {

    struct LinkInlineIndicatorMetrics {
        let iconSize: CGFloat
        let layoutHeight: CGFloat
        let spacing: CGFloat
    }

    #if os(macOS)
    private static let cache = NSCache<NSString, NSImage>()

    static func make(resourceName: String,
                     bundle: Bundle,
                     metrics: LinkInlineIndicatorMetrics,
                     indicator: OUDSLink.Indicator,
                     layoutDirection: LayoutDirection) -> NSImage
    {
        // Get Image from cache if exist
        let cacheKey = cacheKey(resourceName: resourceName,
                                bundle: bundle,
                                metrics: metrics,
                                indicator: indicator,
                                layoutDirection: layoutDirection)
        if let cachedImage = cache.object(forKey: cacheKey) {
            return cachedImage
        }

        // Not in cache, load image asset from ressources
        guard let source = bundle.image(forResource: resourceName) else {
            return NSImage(size: NSSize(width: metrics.iconSize + metrics.spacing, height: metrics.layoutHeight))
        }

        let canvasSize = NSSize(width: metrics.iconSize + metrics.spacing, height: metrics.layoutHeight)
        let destination = NSImage(size: canvasSize)
        destination.lockFocus()
        defer { destination.unlockFocus() }

        // Reender image in canavas, at the right position:
        // - RTL: spacing is on the right, so set image is at position 0
        // - LTR: sacing in on the left, so set the image at the spacing position
        // and set the width, and the height equal to the icon size.
        // **Remark: dont forget to flip the icon for RTL**

        let iconRect = NSRect(x: layoutDirection == .rightToLeft ? 0 : metrics.spacing,
                              y: (metrics.layoutHeight - metrics.iconSize) / 2,
                              width: metrics.iconSize,
                              height: metrics.iconSize)
        if layoutDirection == .rightToLeft, let context = NSGraphicsContext.current?.cgContext {
            context.saveGState()
            context.translateBy(x: iconRect.minX + iconRect.maxX, y: 0)
            context.scaleBy(x: -1, y: 1)
            source.draw(in: iconRect)
            context.restoreGState()
        } else {
            source.draw(in: iconRect)
        }

        // Set image as templete
        destination.isTemplate = true

        // Set image in cache for next use
        cache.setObject(destination, forKey: cacheKey)

        return destination
    }
    #else
    private static let cache = NSCache<NSString, UIImage>()

    static func make(resourceName: String,
                     bundle: Bundle,
                     metrics: LinkInlineIndicatorMetrics,
                     indicator: OUDSLink.Indicator,
                     layoutDirection: LayoutDirection) -> UIImage
    {
        // Get Image from cache if exist
        let cacheKey = cacheKey(resourceName: resourceName,
                                bundle: bundle,
                                metrics: metrics,
                                indicator: indicator,
                                layoutDirection: layoutDirection)
        if let cachedImage = cache.object(forKey: cacheKey) {
            return cachedImage
        }

        // Not in cache, load image asset from ressources
        guard let source = UIImage(named: resourceName, in: bundle, compatibleWith: nil) else {
            return UIImage()
        }

        // Create a canvas with width equal to icon size + spacing and heigh is layout height
        let canvasSize = CGSize(width: metrics.iconSize + metrics.spacing, height: metrics.layoutHeight)
        let format = UIGraphicsImageRendererFormat.default()
        format.opaque = false
        let renderer = UIGraphicsImageRenderer(size: canvasSize, format: format)

        // Reender image in canavas, at the right position:
        // - RTL: spacing is on the right, so set image at position 0
        // - LTR: sacing in on the left, so set the image at the spacing position
        // and set the width, and the height equal to the icon size.
        // **Remark: dont forget to flip the icon for RTL**
        let image = renderer.image { context in
            let iconRect = CGRect(x: layoutDirection == .rightToLeft ? 0 : metrics.spacing,
                                  y: (metrics.layoutHeight - metrics.iconSize) / 2,
                                  width: metrics.iconSize,
                                  height: metrics.iconSize)
            if layoutDirection == .rightToLeft {
                context.cgContext.translateBy(x: iconRect.minX + iconRect.maxX, y: 0)
                context.cgContext.scaleBy(x: -1, y: 1)
            }

            source.draw(in: iconRect)
        }

        // Set image as templete
        let templateImage = image.withRenderingMode(.alwaysTemplate)

        // set image in the cache for next use
        cache.setObject(templateImage, forKey: cacheKey)

        return templateImage
    }
    #endif

    private static func cacheKey(resourceName: String,
                                 bundle: Bundle,
                                 metrics: LinkInlineIndicatorMetrics,
                                 indicator: OUDSLink.Indicator,
                                 layoutDirection: LayoutDirection) -> NSString
    {
        "\(bundle.bundlePath)|\(resourceName)|\(metrics.iconSize)|\(metrics.layoutHeight)|\(metrics.spacing)|\(indicator)|\(layoutDirection)" as NSString
    }
}
