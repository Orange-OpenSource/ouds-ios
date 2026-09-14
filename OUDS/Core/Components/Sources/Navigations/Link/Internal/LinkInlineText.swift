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

struct LinkInlineText: View {

    // MARK: Properties

    let text: String
    let interactionState: OUDSButtonInteractionState
    let density: OUDSLink.Density
    let size: OUDSLink.Size
    let indicator: OUDSLink.Indicator
    let isFullWidth: Bool

    @Environment(\.theme) private var theme
    @Environment(\.colorScheme) private var colorScheme
    @Environment(\.horizontalSizeClass) private var horizontalSizeClass
    @Environment(\.verticalSizeClass) private var verticalSizeClass
    @Environment(\.layoutDirection) private var layoutDirection
    @Environment(\.oudsUseMonochrome) private var useMonochrome
    @Environment(\.dynamicTypeSize) private var dynamicTypeSize

    // MARK: Body

    var body: some View {
        HStack{
            let label = Text(text)
                .foregroundColor(contentColor.color(for: colorScheme))
                .underline(interactionState == .hover || interactionState == .pressed)
            let icon = Text(indicatorImage)
                .foregroundColor(indicatorColor.color(for: colorScheme))
                .baselineOffset(indicatorBaselineOffset)

            Text("\(label)\(icon)")
                .font(nativeFont.font)
                .multilineTextAlignment(.leading)
        }
        .padding(.horizontal, theme.link.spacePaddingInline)
        .padding(.vertical, verticalPadding)
        .frame(minWidth: minWidth, minHeight: minHeight)
        .frame(maxWidth: isFullWidth ? .infinity : nil, alignment: .center)
        .contentShape(Rectangle())

    }

    // MARK: Heleprs

    private var indicatorImage: Image {
        let image = LinkInlineIndicatorImage.make(resourceName: resourceName,
                                                  bundle: theme.resourcesBundle,
                                                  metrics: LinkInlineIndicatorMetrics(iconSize: iconSize,
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
        let baselineOffset = (nativeFont.capHeight - indicatorLayoutHeight) / 2
        print("baeselineOffset: \(baselineOffset)")
        return baselineOffset
    }

    private var indicatorLayoutHeight: CGFloat {
        nativeFontLineHeight
    }

    private var nativeFont: NativeFont {
        let token = size == .small ? theme.fonts.labelStrongMedium : theme.fonts.labelStrongLarge
        return Font.makeFont(family: theme.fontFamily,
                             from: token,
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
        if useMonochrome {
            return switch interactionState {
            case .enabled:
                theme.link.monoColorContentEnabled
            case .hover:
                theme.link.monoColorContentHover
            case .pressed:
                theme.link.monoColorContentPressed
            case .disabled, .readOnly:
                theme.link.monoColorContentDisabled
            }
        }
        return switch interactionState {
        case .enabled:
            theme.link.colorContentEnabled
        case .hover:
            theme.link.colorContentHover
        case .pressed:
            theme.link.colorContentPressed
        case .disabled, .readOnly:
            theme.colors.actionDisabled
        }
    }

    private var indicatorColor: MultipleColorSemanticToken {
        if useMonochrome {
            return switch interactionState {
            case .enabled:
                theme.link.monoColorContentEnabled
            case .hover:
                theme.link.monoColorContentHover
            case .pressed:
                theme.link.monoColorContentPressed
            case .disabled, .readOnly:
                theme.link.monoColorContentDisabled
            }
        } else {
            return switch interactionState {
            case .enabled:
                theme.link.colorChevronEnabled
            case .hover:
                theme.link.colorChevronHover
            case .pressed:
                theme.link.colorChevronPressed
            case .disabled, .readOnly:
                theme.colors.actionDisabled
            }
        }
    }

    private var minWidth: Double {
        size == .small ? theme.link.sizeMinWidthSmall : theme.link.sizeMinWidth
    }

    private var minHeight: Double {
        switch density {
        case .default:
            size == .small ? theme.link.sizeMinHeightSmall : theme.link.sizeMinHeightDefault
        case .compact:
            theme.link.sizeMinHeightCompactDensity
        }
    }

    private var verticalPadding: Double {
        switch density {
        case .default:
            size == .small ? theme.link.spacePaddingBlockSmall : theme.link.spacePaddingBlockDefault
        case .compact:
            size == .small ? theme.link.spacePaddingBlockCompactDensitySmall : theme.link.spacePaddingBlockCompactDensityDefault
        }
    }
}

struct LinkInlineIndicatorMetrics {
    let iconSize: CGFloat
    let layoutHeight: CGFloat
    let spacing: CGFloat
}

@MainActor enum LinkInlineIndicatorImage {

    #if os(macOS)
    private static let cache = NSCache<NSString, NSImage>()

    static func make(resourceName: String,
                     bundle: Bundle,
                     metrics: LinkInlineIndicatorMetrics,
                     indicator: OUDSLink.Indicator,
                     layoutDirection: LayoutDirection) -> NSImage
    {
        let cacheKey = cacheKey(resourceName: resourceName,
                                bundle: bundle,
                                metrics: metrics,
                                indicator: indicator,
                                layoutDirection: layoutDirection)
        if let cachedImage = cache.object(forKey: cacheKey) {
            return cachedImage
        }
        guard let source = bundle.image(forResource: resourceName) else {
            return NSImage(size: NSSize(width: metrics.iconSize + metrics.spacing, height: metrics.iconSize))
        }

        let canvasSize = NSSize(width: metrics.iconSize + metrics.spacing, height: metrics.iconSize)
        let destination = NSImage(size: canvasSize)
        destination.lockFocus()
        defer { destination.unlockFocus() }

        let iconRect = NSRect(x: iconOriginX(indicator: indicator, layoutDirection: layoutDirection, spacing: metrics.spacing),
                              y: 0,
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
        destination.isTemplate = true
        destination.alignmentRect = alignmentRect(imageSize: canvasSize, layoutHeight: metrics.layoutHeight)
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
        // Get Image from cache is exist
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

        // Create a canvas withe width equal to iconsize + spacing
        let canvasSize = CGSize(width: metrics.iconSize + metrics.spacing, height: metrics.iconSize)
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
                                  y: 0,
                                  width: metrics.iconSize,
                                  height: metrics.iconSize)
            if layoutDirection == .rightToLeft {
                context.cgContext.translateBy(x: iconRect.minX + iconRect.maxX, y: 0)
                context.cgContext.scaleBy(x: -1, y: 1)
            }
            source.draw(in: iconRect)
        }

        let verticalInset = max(0, (metrics.iconSize - metrics.layoutHeight) / 2)
        print("verticalInset: \(verticalInset)")
        let templateImage = image
            .withAlignmentRectInsets(UIEdgeInsets(top: verticalInset, left: 0, bottom: verticalInset, right: 0))
            .withRenderingMode(.alwaysTemplate)
        
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

    #if os(macOS)
    private static func alignmentRect(imageSize: NSSize, layoutHeight: CGFloat) -> NSRect {
        let verticalInset = max(0, (imageSize.height - layoutHeight) / 2)
        return NSRect(x: 0,
                      y: verticalInset,
                      width: imageSize.width,
                      height: imageSize.height - 2 * verticalInset)
    }
    #endif
}
