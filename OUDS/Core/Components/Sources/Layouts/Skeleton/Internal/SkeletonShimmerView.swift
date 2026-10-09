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
import SwiftUI

// MARK: - The Shimmer apply on skeleton

struct SkeletonShimmerView: View {

    //  MARK: - Properties

    let animationDuration: Double = 1.25
    let shimmerDuration: Double = 0.8

    let width: CGFloat
    @State private var progress: CGFloat = 0
    @Environment(\.theme) private var theme
    @Environment(\.colorScheme) private var colorScheme

    //  MARK: - Body

    var body: some View {
        LinearGradient(stops: [ .init(color: colorStart, location: 0.0),
                                .init(color: colorMiddle, location: 0.5),
                                .init(color: colorEnd, location: 1.0)],
                       startPoint: .leading,
                       endPoint: .trailing)
        .frame(width: width)
        .offset(x: lerp(from: -width, to: width, progress: progress))
        .onAppear {
            startAnimation()
        }
    }

    //  MARK: - Helpers

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
