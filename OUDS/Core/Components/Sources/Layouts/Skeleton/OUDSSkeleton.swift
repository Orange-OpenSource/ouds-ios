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

    private let securityMargin: Bool
    private var shape: Shape

    @Environment(\.theme) private var theme
    @Environment(\.colorScheme) private var colorScheme
    @Environment(\.skeletonState) private var skeletonState

    // MARK: - Initializer

    /// Cretate a skeleton  with the default `Rectangle` shape.
    /// - Parameters:
    ///     - securityMargin: Whether to apply vertical padding to the skeleton. Defaults to true.
    ///     - shape: The shape to apply on the skeleton, `Rectangle()` by default.
    public init(securityMargin: Bool = true, shape: Shape = Rectangle()) {
        self.securityMargin = securityMargin
        self.shape = shape
    }

    /// Cretate a skeleton  with the default `RoundedRectangle` shape according to the `cornerRadius`
    ///
    /// - Parameters:
    ///     - securityMargin: Whether to apply vertical padding to the skeleton. Defaults to true.
    ///     - cornerRadius: The radius used by `RoundedRectagle` shape to apply the skeleton.
    init(securityMargin: Bool = true, cornerRadius: CGFloat) where Shape == RoundedRectangle {
        self.init(securityMargin: securityMargin, shape: RoundedRectangle(cornerRadius: cornerRadius))
    }


    // MARK: - Body

    public var body: some View {
        if let skeletonState {
            GeometryReader { geometry in
                ZStack {
                    theme.skeleton.colorBg.color(for: colorScheme)

                    if skeletonState.isAnimated {
                        SkeletonShimmerView(width: geometry.size.width)
                    }
                }
                .clipShape(shape)
                .padding(.vertical, securityMargin ? theme.spaces.paddingBlock3xsmall : 0)
            }
        }
    }
}

// MARK: - View Helpers to apply skeleton

extension View {
    /// Apply a skeleton on the current component with the default `Rectangle` shape
    /// The skeleton is displyed only if  the `OUDSSkeletonState` is set into the environement.
    ///
    /// - Parameter securityMargin: Whether to apply vertical padding to the skeleton. Defaults to true.
    /// - Since: 3.1.0
    @available(iOS 15, macOS 13, visionOS 1, watchOS 11, tvOS 16, *)
    public func skeleton(securityMargin: Bool = true) -> some View {
        modifier(SkeletonModifier(securityMargin: securityMargin, shape: Rectangle()))
    }

    /// Apply a skeleton on the current component with a dedicated shape.
    /// The skeleton is displyed only if  the `OUDSSkeletonState` is set into the environement.
    ///
    /// - Parameters:
    ///     - securityMargin: Whether to apply vertical padding to the skeleton. Defaults to true.
    ///     - shape: The shape applied on the skeleton.
    ///
    /// - Since: 3.1.0
    @available(iOS 15, macOS 13, visionOS 1, watchOS 11, tvOS 16, *)
    public func skeleton<S: SwiftUI.Shape>(securityMargin: Bool = true, shape: S) -> some View {
        modifier(SkeletonModifier(securityMargin: securityMargin, shape: shape))
    }
}

// MARK: - Skeleton Modifier

struct SkeletonModifier<S: SwiftUI.Shape>: ViewModifier {

    let securityMargin: Bool
    let shape: S

    @Environment(\.skeletonState) private var skeletonState

    func body(content: Content) -> some View {
        if let skeletonState {
            content
                .hidden()
                .overlay {
                    GeometryReader { geometry in
                        OUDSSkeleton(securityMargin: securityMargin, shape: shape)
                            .frame(width: geometry.size.width, height: geometry.size.height)
                    }
                }
                .clipShape(shape)
        } else {
            content
        }
    }
}

// MARK: - Preview

#Preview("Skeleton") {
    VStack(spacing: 20) {
        OUDSSkeleton()
            .frame(width: 200, height: 62)

        OUDSSkeleton(securityMargin: false)
            .frame(width: 200, height: 62)

        OUDSSkeleton(cornerRadius: 12)
            .frame(width: 200, height: 62)
    }
    .oudsSkeletonState(isVisible: true, isAnimated: true)
    .padding()
}
