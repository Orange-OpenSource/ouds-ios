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

// MARK: - Skeleton

/// A skeleton is a UI element that indicates when content is loading. The skeleton enhances user experience by
/// temporarily replacing content with gray areas or animations that simulate the visual structure of the forthcoming
/// content.
///
/// The animation is automatically disabled if the low power mode or the accessibility reduce motion are activated.
///
/// The `security margin` includes or not transparent vertical padding (with 0% opacity) at the top and bottom of the skeleton component.
/// This padding prevents the creation of excessively large uniform surfaces, maintaining a visually balanced and structured layout.
///
/// ## Code samples
///
/// Use plain object ``OUDSSkeleton`` to draw a skeleton:
///
/// ```swift
///     HStack {
///         OUDSSkeleton(securityMargin: true).frame(width: 180, height: 48)
///
///         OUDSSkeleton(securityMargin: true).frame(width: 300, height: 150)
///     }
/// ```
///
/// Apply a skeleton effect to enable on a `View`:
///
/// ```swift
///     Button {
///
///     } label: {
///         VStack {
///             Text("Title")
///             Label("Subtitle", systemImage: "phone")
///         }
///     }
///     .skeleton()
/// ```
///
/// Enable the skeleton mode on a view hierarchy:
///
/// ```swift
///     SomeView()
///         .oudsSkeleton(isVisible: true)
///
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
/// - Since: 3.2.0
@available(iOS 15, macOS 13, visionOS 1, watchOS 11, tvOS 16, *)
public struct OUDSSkeleton<Shape: SwiftUI.Shape>: View {

    // MARK: - Properties

    private let securityMargin: Bool
    private var shape: Shape

    @Environment(\.theme) private var theme
    @Environment(\.colorScheme) private var colorScheme
    @Environment(\.skeletonState) private var skeletonState

    // MARK: - Initializers

    /// Create a skeleton  with the default `Rectangle` shape.
    ///
    /// - Parameters:
    ///    - securityMargin: Whether to apply vertical padding to the skeleton. Defaults to `false`.
    ///    - shape: The shape to apply on the skeleton, `Rectangle()` by default.
    public init(securityMargin: Bool = false, shape: Shape = Rectangle()) {
        self.securityMargin = securityMargin
        self.shape = shape
    }

    // swiftlint:disable function_default_parameter_at_end
    /// Create a skeleton  with the default `RoundedRectangle` shape according to the `cornerRadius`
    ///
    /// - Parameters:
    ///    - securityMargin: Whether to apply vertical padding to the skeleton. Defaults to `false`.
    ///    - cornerRadius: The radius used by `RoundedRectagle` shape to apply the skeleton.
    public init(securityMargin: Bool = false, cornerRadius: CGFloat) where Shape == RoundedRectangle {
        self.init(securityMargin: securityMargin, shape: RoundedRectangle(cornerRadius: cornerRadius))
    }

    // swiftlint:enable function_default_parameter_at_end

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

// MARK: - View helpers

extension View {

    /// Apply a skeleton on the current component with the default `Rectangle` shape.
    ///
    /// The skeleton is displayed only if  the skeleton state is set into the environment using
    /// `oudsSkeleton(isVisible:isAnimated:)
    ///
    /// - Parameter securityMargin: Whether to apply vertical padding to the skeleton. Defaults to `false`.
    /// - Since: 3.2.0
    @available(iOS 15, macOS 13, visionOS 1, watchOS 11, tvOS 16, *)
    public func skeleton(securityMargin: Bool = false) -> some View {
        modifier(SkeletonModifier(securityMargin: securityMargin, shape: Rectangle()))
    }

    /// Apply a skeleton on the current component with a dedicated shape.
    ///
    /// The skeleton is displyed only if  the skeleton state is set into the environment using
    /// `oudsSkeleton(isVisible:isAnimated:)
    ///
    /// - Parameters:
    ///    - shape: The shape applied on the skeleton.
    ///    - securityMargin: Whether to apply vertical padding to the skeleton. Defaults to `false`.
    /// - Since: 3.2.0
    @available(iOS 15, macOS 13, visionOS 1, watchOS 11, tvOS 16, *)
    public func skeleton(shape: some SwiftUI.Shape, securityMargin: Bool = false) -> some View {
        modifier(SkeletonModifier(securityMargin: securityMargin, shape: shape))
    }

    /// Used to activate and animate the skeleton on components.
    /// The animation is automatically disabled if the low power mode or the accessibility reduce motion are activated.
    ///
    /// - Parameters:
    ///    - isVisible: Flag to present the skeleton for components managing this layout.
    ///    - isAnimated: Flag to animate the shimer effect on the skeleton. `true` by default.
    /// - Since: 3.2.0
    @available(iOS 15, macOS 13, visionOS 1, watchOS 11, tvOS 16, *)
    public func oudsSkeleton(isVisible: Bool, isAnimated: Bool = true) -> some View {
        modifier(SkeletonStateModifier(isVisible: isVisible, isAnimated: isAnimated))
    }
}
