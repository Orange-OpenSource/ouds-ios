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
import SwiftUI

// MARK: - Environment values

extension EnvironmentValues {

    /// The `OUDSSkeletonState` to indicate if the skeleton of components should be displayed and animated or not according to the `isAnimated` flag.
    @Entry var skeletonState: OUDSSkeletonState? = nil
}

// MARK: - OUDS Skeleton state

/// Defines if the skeleton is animated or not.
final class OUDSSkeletonState {
    let isAnimated: Bool

    init(isAnimated: Bool) {
        self.isAnimated = isAnimated
    }
}

extension View {

    /// Used to activate and animate the skeleton on components.
    ///
    /// - Paramters:
    ///     - isVisible: flag to present the skeleton.
    ///     - isAnimated: flag to animate the shimer effect on the skeleton. `true` by default.
    ///     The animation is automatically disabled if the low power mode or the accessibility reduce motion are activated.
    public func oudsSkeleton(isVisible: Bool, isAnimated: Bool = true) -> some View {
        self.modifier(SkeletonStateModifier(isVisible: isVisible, isAnimated: isAnimated))
    }
}

private struct SkeletonStateModifier: ViewModifier {

    // MARK: - Properties

    private let isVisible: Bool
    private let isAnimated: Bool

    @Environment(\.accessibilityReduceMotion) private var reduceMotion
    @EnvironmentObject private var lowPowerModeObserver: OUDSLowPowerModeObserver

    // MARK: - Initializer

    init(isVisible: Bool, isAnimated: Bool) {
        self.isVisible = isVisible
        self.isAnimated = isAnimated
    }

    // MARK: - Body

    func body(content: Content) -> some View {
        content.environment(\.skeletonState, isVisible ? state : nil)
    }

    // MARK: - State builder

    private var state: OUDSSkeletonState {
        .init(isAnimated: (isAnimated && !reduceMotion && !lowPowerModeObserver.isLowPowerModeEnabled))
    }
}
