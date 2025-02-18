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

import SnapshotTesting
import UIKit

private let kPrecision: Float = 0.9

// MARK: - UIViewController

extension Snapshotting where Value == UIViewController, Format == UIImage {
    /// A snapshot strategy for comparing views based on pixel equality.
    public static var impreciseImage: Snapshotting {
      .impreciseImage()
    }

    /// A snapshot strategy for comparing view controller views based on pixel equality.
    ///
    /// - Parameters:
    ///   - config: A set of device configuration settings.
    ///   - size: A view size override.
    ///   - traits: A trait collection override.
    public static func impreciseImage(
        on config: ViewImageConfig,
        size: CGSize? = nil,
        traits: UITraitCollection = .init()
    )
    -> Snapshotting {
        .image(
            on: config,
            precision: precision,
            size: size,
            traits: traits
        )
    }

    /// A snapshot strategy for comparing view controller views based on pixel equality.
    ///
    /// - Parameters:
    ///   - drawHierarchyInKeyWindow: Utilize the simulator's key window in order to render `UIAppearance` and `UIVisualEffect`s.
    ///                               This option requires a host application for your tests and will _not_ work for framework test targets.
    ///   - size: A view size override.
    ///   - traits: A trait collection override.
    public static func impreciseImage(
        drawHierarchyInKeyWindow: Bool = false,
        size: CGSize? = nil,
        traits: UITraitCollection = .init()
    )
    -> Snapshotting {
        .image(
            drawHierarchyInKeyWindow: drawHierarchyInKeyWindow,
            precision: precision,
            size: size,
            traits: traits
        )
    }
}

// MARK: - UIView

extension Snapshotting where Value == UIView, Format == UIImage {
    /// A snapshot strategy for comparing views based on pixel equality.
    public static var impreciseImage: Snapshotting {
      .impreciseImage()
    }

    /// A snapshot strategy for comparing views based on pixel equality.
    ///
    /// - Parameters:
    ///   - drawHierarchyInKeyWindow: Utilize the simulator's key window in order to render `UIAppearance` and `UIVisualEffect`s.
    ///                               This option requires a host application for your tests and will _not_ work for framework test targets.
    ///   - size: A view size override.
    ///   - traits: A trait collection override.
    public static func impreciseImage(
        drawHierarchyInKeyWindow: Bool = false,
        size: CGSize? = nil,
        traits: UITraitCollection = .init()
    )
    -> Snapshotting {
        .image(
            drawHierarchyInKeyWindow: drawHierarchyInKeyWindow,
            precision: precision,
            size: size,
            traits: traits
        )
    }
}
