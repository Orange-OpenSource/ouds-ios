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

struct SkeletonShimmerView: View {

    // MARK: - Configurations

    static let animationDuration: Double = 1.25
    static let shimmerDuration: Double = 0.8

    // MARK: - Properties

    let width: CGFloat

    @State private var progress: CGFloat = 0

    @Environment(\.theme) private var theme
    @Environment(\.colorScheme) private var colorScheme

    // MARK: - Body

    var body: some View {
        LinearGradient(stops:
            [
                .init(color: colorStart, location: 0.0),
                .init(color: colorMiddle, location: 0.5),
                .init(color: colorEnd, location: 1.0),
            ],
            startPoint: .leading,
            endPoint: .trailing)
            .frame(width: width)
            .offset(x: lerp(from: -width, to: width, progress: progress))
            .task {
                await startAnimation()
            }
    }

    // MARK: - Helpers

    private var colorStart: Color {
        theme.skeleton.colorGradientStartEnd.color(for: colorScheme)
    }

    private var colorEnd: Color {
        theme.skeleton.colorGradientStartEnd.color(for: colorScheme)
    }

    private var colorMiddle: Color {
        theme.skeleton.colorGradientMiddle.color(for: colorScheme)
    }

    private func startAnimation() async {
        while !Task.isCancelled {
            progress = 0

            withAnimation(.timingCurve(0.42, 0.0, 0.58, 1.0, duration: Self.shimmerDuration)) {
                progress = 1
            }

            try? await Task.sleep(nanoseconds: UInt64(Self.animationDuration * 1_000_000_000))
        }
    }

    private func lerp(from: CGFloat, to: CGFloat, progress: CGFloat) -> CGFloat {
        from + (to - from) * progress
    }
}
