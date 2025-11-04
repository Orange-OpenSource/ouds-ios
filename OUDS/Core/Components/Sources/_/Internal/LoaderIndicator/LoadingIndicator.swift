//
// Software Name: OUDSThemesContract iOS
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
import SwiftUI

struct LoaderIndicator: View {

    // MARK: Stored properties

    let color: Color

    @State private var isAnimating = false

    @Environment(\.accessibilityReduceMotion) private var reduceMotion
    @EnvironmentObject private var lowPowerModeObserver: OUDSLowPowerModeObserver

    // MARK: Body

    var body: some View {
        if reduceMotion || lowPowerModeObserver.isLowPowerModeEnabled {
            circleView()
                .onAppear { // If not set, animation never resumes if low power mode moved from true to false
                    isAnimating = false
                }
        } else {
            circleView()
                .rotationEffect(.degrees(isAnimating ? 360 : 0))
                .onAppear {
                    isAnimating = true
                }
                .animation(Animation.linear(duration: 1).repeatForever(autoreverses: false), value: isAnimating)
        }
    }

    private func circleView() -> some View {
        Circle()
            .trim(from: 0, to: 0.7)
            .stroke(color, lineWidth: 3)
    }
}
