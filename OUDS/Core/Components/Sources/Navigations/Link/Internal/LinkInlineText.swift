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

    let text: String
    let interactionState: OUDSButtonInteractionState
    let size: OUDSLink.Size
    let indicator: OUDSLink.Indicator

    @Environment(\.theme) private var theme
    @Environment(\.colorScheme) private var colorScheme
    @Environment(\.horizontalSizeClass) private var horizontalSizeClass
    @Environment(\.verticalSizeClass) private var verticalSizeClass
    @Environment(\.layoutDirection) private var layoutDirection
    @Environment(\.oudsSurfaceColor) private var surfaceColor
    @Environment(\.oudsUseMonochrome) private var useMonochrome

    var body: some View {
        Group {
            switch size {
            case .small:
                composedText.labelStrongMedium(theme)
            case .default:
                composedText.labelStrongLarge(theme)
            }
        }
        .multilineTextAlignment(.leading)
    }

    private var composedText: Text {
        let label = Text(LocalizedStringKey(text))
            .foregroundColor(contentColor.color(for: colorScheme))
            .underline(interactionState == .hover || interactionState == .pressed)
        let icon = Text(indicatorImage)
            .foregroundColor(indicatorColor.color(for: colorScheme))
            .baselineOffset(indicatorBaselineOffset)

        OUDSWCAG21Ratio.debugContrastRatio(contentColor, surfaceColor)
        OUDSWCAG21Ratio.debugContrastRatio(indicatorColor, surfaceColor, .nonTextual)

        if indicator == .previous {
            return Text("\(icon)\(label)")
        }
        return Text("\(label)\(icon)")
    }

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
        (nativeFont.capHeight - indicatorLayoutHeight) / 2
    }

    private var indicatorLayoutHeight: CGFloat {
        min(iconSize, nativeFontLineHeight)
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
        size == .small ? theme.link.sizeIconSmall : theme.link.sizeIconDefault
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
        }
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
        let cacheKey = cacheKey(resourceName: resourceName,
                                bundle: bundle,
                                metrics: metrics,
                                indicator: indicator,
                                layoutDirection: layoutDirection)
        if let cachedImage = cache.object(forKey: cacheKey) {
            return cachedImage
        }
        guard let source = UIImage(named: resourceName, in: bundle, compatibleWith: nil) else {
            return UIImage()
        }

        let canvasSize = CGSize(width: metrics.iconSize + metrics.spacing, height: metrics.iconSize)
        let format = UIGraphicsImageRendererFormat.default()
        format.opaque = false
        let renderer = UIGraphicsImageRenderer(size: canvasSize, format: format)
        let image = renderer.image { context in
            let iconRect = CGRect(x: iconOriginX(indicator: indicator, layoutDirection: layoutDirection, spacing: metrics.spacing),
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
        let templateImage = image
            .withAlignmentRectInsets(UIEdgeInsets(top: verticalInset, left: 0, bottom: verticalInset, right: 0))
            .withRenderingMode(.alwaysTemplate)
        cache.setObject(templateImage, forKey: cacheKey)
        return templateImage
    }
    #endif

    private static func iconOriginX(indicator: OUDSLink.Indicator,
                                    layoutDirection: LayoutDirection,
                                    spacing: CGFloat) -> CGFloat
    {
        let indicatorPrecedesText = indicator == .previous
        let isRightToLeft = layoutDirection == .rightToLeft
        return indicatorPrecedesText == isRightToLeft ? spacing : 0
    }

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
