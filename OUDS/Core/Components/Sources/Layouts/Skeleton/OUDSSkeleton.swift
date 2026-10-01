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

import Combine
import OUDSFoundations
import OUDSThemesContract
import OUDSTokensSemantic
import SwiftUI

// 800 ms : déplacement
let animationDuration: Double = 1.25
let shimmerDuration: Double = 0.8

// MARK: - Skeleton

/// A skeleton is a UI element that indicates when content is loading. The skeleton enhances user experience by
/// temporarily replacing content with gray areas or animations that simulate the visual structure of the forthcoming
/// content.
///
/// ## Code samples
///
/// ```swift
///     HStack {
///          // Heding skeleton
///         OUDSSkeleton(securityMargin: true).frmae(wifth: 180, height: 48)
///
///         // Body skeleton
///         OUDSSkeleton(securityMargin: true).frmae(wifth: 300, height: 150)
///     }
/// ```
///
/// ## Design documentation
///
/// [unified-design-system.orange.com](https://r.orange.fr/r/S-ouds-doc-skeleton)
///
/// ## Themes rendering
///
/// ### Orange
///
/// ![A skeleton component in light and dark modes with Orange theme](component_skeleton_Orange)
///
/// ### Orange Compact
///
/// ![A skeleton component in light and dark modes with Orange Compact theme](component_skeleton_OrangeCompact)
///
/// ### Sosh
///
/// ![A skeleton component in light and dark modes with Sosh theme](component_skeleton_Sosh)
///
/// ### Wireframe
///
/// ![A skeleton component in light and dark modes with Wireframe theme](component_skeleton_Wireframe)
///
/// - Version: 1.0.0 (Figma component design version)
/// - Since: 3.1.0
@available(iOS 15, macOS 13, visionOS 1, watchOS 11, tvOS 16, *)

public struct OUDSSkeleton<Shape: SwiftUI.Shape>: View {

    // MARK: - Properties

    @Binding var isAnimated: Bool
    private let securityMargin: Bool
    private var shape: Shape

    @Environment(\.theme) private var theme
    @Environment(\.colorScheme) private var colorScheme
    @Environment(\.accessibilityReduceMotion) private var reduceMotion
    @EnvironmentObject private var lowPowerModeObserver: OUDSLowPowerModeObserver

    // MARK: - Initializer

    /// Cretae a skeleton
    /// - Parameters:
    ///     -  isAnimated: Flag that controls the skeleton's animation behavior.
    ///     - securityMargin: Whether to apply vertical padding to the skeleton. Defaults to true.
    ///     - shape: The shape to apply on the skeleton, `Rectangle()` by default.
    public init(isAnimated: Binding<Bool> = .constant(true),
                securityMargin: Bool = true,
                shape: Shape = Rectangle()) {
        _isAnimated = isAnimated
        self.securityMargin = securityMargin
        self.shape = shape
    }

    // MARK: - Body

    public var body: some View {
        GeometryReader { geometry in
            ZStack {
                theme.skeleton.colorBg.color(for: colorScheme)

                if isAnimated && !lowPowerModeObserver.isLowPowerModeEnabled && !reduceMotion {
                    ShimmerView(width: geometry.size.width)
                }
            }
            .clipShape(shape)
            .padding(.vertical, securityMargin ? theme.spaces.paddingBlock3xsmall : 0)
        }
    }
}

// MARK: - Shimmer

private struct ShimmerView: View {

    //  MARK: Properties

    let width: CGFloat
    @State private var progress: CGFloat = 0
    @Environment(\.theme) private var theme
    @Environment(\.colorScheme) private var colorScheme

    //  MARK: Body

    var body: some View {
        LinearGradient(
            stops: [ .init(color: colorStart, location: 0.0),
                     .init(color: colorMiddle, location: 0.5),
                     .init(color: colorEnd, location: 1.0)],
            startPoint: .leading,
            endPoint: .trailing
        )
        .frame(width: width)
        .offset(x: lerp(from: -width, to: width, progress: progress))
        .onAppear {
            startAnimation()
        }
    }

    //  MARK: Helpers

    private var colorStart: Color {
        theme.skeleton.colorGradientStartEnd.color(for: colorScheme)
    }

    private var colorEnd: Color {
        theme.skeleton.colorGradientStartEnd.color(for: colorScheme)
    }

    private var colorMiddle: Color {
        theme.skeleton.colorGradientMiddle.color(for: colorScheme)
    }

    private func startAnimation() {
        progress = 0

        withAnimation(.timingCurve(0.42, 0.0, 0.58, 1.0, duration: shimmerDuration)) {
            progress = 1
        }

        // 450 ms : pause à la position finale
        DispatchQueue.main.asyncAfter(deadline: .now() + animationDuration) {
            guard !Task.isCancelled else { return }
            progress = 0
            startAnimation()
        }
    }

    private func lerp(from: CGFloat, to: CGFloat, progress: CGFloat) -> CGFloat {
        from + (to - from) * progress
    }
}

// MARK: - Convenience Initializers

extension OUDSSkeleton where Shape == Rectangle {

    init(isAnimated: Binding<Bool> = .constant(true), securityMargin: Bool = true) {
        self.init(isAnimated: isAnimated,
            securityMargin: securityMargin,
            shape: Rectangle()
        )
    }
}

extension OUDSSkeleton where Shape == RoundedRectangle {

    init(isAnimated: Binding<Bool> = .constant(true),
        securityMargin: Bool = true,
        cornerRadius: CGFloat) {
        self.init(
            isAnimated: isAnimated,
            securityMargin: securityMargin,
            shape: RoundedRectangle(
                cornerRadius: cornerRadius
            )
        )
    }
}

// MARK: - Skeleton Wrapper

struct OUDSSkeletonContainer<Content: View, SkeletonShape: SwiftUI.Shape>: View {

    let visible: Bool
    let isAnimated: Binding<Bool>
    let securityMargin: Bool
    let shape: SkeletonShape
    let content: () -> Content

    init(
        visible: Bool,
        isAnimated: Binding<Bool> = .constant(true),
        securityMargin: Bool = true,
        shape: SkeletonShape = Rectangle(),
        @ViewBuilder content: @escaping () -> Content
    ) {
        self.visible = visible
        self.isAnimated = isAnimated
        self.securityMargin = securityMargin
        self.shape = shape
        self.content = content
    }

    var body: some View {
        if visible {
            content()
                .hidden()
                .overlay {
                    GeometryReader { geometry in
                        OUDSSkeleton(
                            isAnimated: isAnimated,
                            securityMargin: securityMargin,
                            shape: shape
                        )
                        .frame(
                            width: geometry.size.width,
                            height: geometry.size.height
                        )
                    }
                }
                .clipShape(shape)
        } else {
            content()
        }
    }
}

// MARK: - Skeleton Modifier

struct SkeletonModifier<S: SwiftUI.Shape>: ViewModifier {

    let visible: Bool
    let isAnimated: Binding<Bool>
    let securityMargin: Bool
    let shape: S

    func body(content: Content) -> some View {
        OUDSSkeletonContainer(
            visible: visible,
            isAnimated: isAnimated,
            securityMargin: securityMargin,
            shape: shape
        ) {
            content
        }
    }
}

extension View {

    func skeleton(visible: Bool, isAnimated: Binding<Bool>, securityMargin: Bool = true) -> some View {
        modifier(
            SkeletonModifier(visible: visible, isAnimated: isAnimated, securityMargin: securityMargin, shape: Rectangle())
        )
    }

    func skeleton<S: SwiftUI.Shape>(
        visible: Bool,
        isAnimated: Binding<Bool>,
        securityMargin: Bool = true,
        shape: S
    ) -> some View {
        modifier(
            SkeletonModifier(
                visible: visible,
                isAnimated: isAnimated,
                securityMargin: securityMargin,
                shape: shape
            )
        )
    }
}

// MARK: - Preview

#Preview("Skeleton") {
    VStack(spacing: 20) {

        OUDSSkeleton(isAnimated: .constant(true))
        .frame(width: 200, height: 62)

        OUDSSkeleton()
        .frame(width: 200, height: 62)

        OUDSSkeleton(securityMargin: false)
        .frame(width: 200, height: 62)

        OUDSSkeleton(cornerRadius: 12)
        .frame(width: 200, height: 62)
    }
    .padding()
}
