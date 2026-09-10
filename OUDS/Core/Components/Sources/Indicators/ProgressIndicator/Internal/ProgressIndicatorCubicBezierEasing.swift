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

import Foundation

/*
 ━━━━━★. *･｡ﾟ✧⁺ Magic stuff
 */

/// Generic cubic-bezier easing evaluator, shared by the indeterminate animations of
/// ``OUDSCircularProgressIndicator`` and ``OUDSLinearProgressIndicator``.
///
/// Reproduces the CSS/Android/Flutter `cubic-bezier(x1, y1, x2, y2)` timing function: given
/// control points `P0 = (0, 0)`, `P1 = (x1, y1)`, `P2 = (x2, y2)`, `P3 = (1, 1)`, it solves for the
/// Bézier parameter `t` such that `bezierX(t) == x`, then returns `bezierY(t)`.
enum ProgressIndicatorCubicBezierEasing {

    /// Control points `(x1, y1, x2, y2)` of a cubic-bezier easing, grouped together to keep call
    /// sites with several curves (e.g. the four indeterminate linear animations) below the
    /// maximum parameter count.
    struct ControlPoints {
        let x1: Double
        let y1: Double
        let x2: Double
        let y2: Double
    }

    /// Evaluates the cubic-bezier `controlPoints` easing at `x`, in `[0, 1]`.
    static func value(_ x: Double, _ controlPoints: ControlPoints) -> Double {
        value(x, x1: controlPoints.x1, y1: controlPoints.y1, x2: controlPoints.x2, y2: controlPoints.y2)
    }

    /// Evaluates the cubic-bezier `(x1, y1, x2, y2)` easing at `x`, in `[0, 1]`.
    ///
    /// Implemented as an iterative bisection on the parametric Bézier `x(t)` to find the parameter
    /// matching the input `x`, then evaluated as `y(t)`. The number of bisections is fixed and
    /// small (16) to stay fast — the resulting precision is well below one pixel.
    static func value(_ x: Double, x1: Double, y1: Double, x2: Double, y2: Double) -> Double {
        // Special cases at boundaries.
        if x <= 0.0 { return 0.0 }
        if x >= 1.0 { return 1.0 }

        // Solve for t such that bezierComponent(t, x1, x2) == x, using bisection.
        var lower = 0.0
        var upper = 1.0
        var t = x
        for _ in 0 ..< 16 {
            let currentX = bezierComponent(t, x1, x2)
            if currentX < x {
                lower = t
            } else {
                upper = t
            }
            t = (lower + upper) / 2.0
        }
        return bezierComponent(t, y1, y2)
    }

    /// Evaluates a 1D cubic Bezier at `t` with control points `(0, c1, c2, 1)`.
    private static func bezierComponent(_ t: Double, _ c1: Double, _ c2: Double) -> Double {
        let oneMinusT = 1.0 - t
        return 3.0 * oneMinusT * oneMinusT * t * c1
            + 3.0 * oneMinusT * t * t * c2
            + t * t * t
    }
}
