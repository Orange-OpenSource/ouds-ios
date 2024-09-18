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
import OUDSTokensSemantic
import OUDSTokensRaw
import SwiftUI

// MARK: - Raw tokens

let raised = ElevationCompositeRawToken(x: 0, y: 1, blur: 2, color: ColorRawTokens.colorTransparentBlack500)
let overlayDefault = ElevationCompositeRawToken(x: 0, y: 2, blur: 3, color: ColorRawTokens.colorTransparentBlack400)
let allSticky = ElevationCompositeRawToken(x: 0, y: 4, blur: 4, color: ColorRawTokens.colorTransparentBlack300)
let drag = ElevationCompositeRawToken(x: 0, y: 4, blur: 4, color: ColorRawTokens.colorTransparentBlack500)
let overlayEmphasized = ElevationCompositeRawToken(x: 0, y: 12, blur: 12, color: ColorRawTokens.colorTransparentBlack300)

// MARK: - Rectangle for elevation tests

/// Simple rectangle
struct ElevationRectangle: View {

    @Environment(\.colorScheme) private var colorScheme

    var foregroundColor: Color {
        switch colorScheme {
        case .light:
                .white
        case .dark:
            "#333333".color
        @unknown default:
            fatalError()
        }
    }

    let elevation: ElevationCompositeSemanticToken
    var body: some View {
        Rectangle()
            .frame(width: 300, height: 80)
            .foregroundColor(foregroundColor)
            .shadow(elevation: elevation)
    }
}

// MARK: - List of rectangles for rendering tests

/// Just a debug `View` to list the elevations effects and render them.
/// Set as public for UI tests purposes.
public struct ElevationsList: View {

    public init() {}

    @Environment(\.colorScheme) private var colorScheme

    var backgroundColor: Color {
        switch colorScheme {
        case .light:
            "#f4f4f4".color
        case .dark:
            "#272727".color
        @unknown default:
            fatalError()
        }
    }

    public var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 40) {
                ElevationRectangle(elevation: raised)
                ElevationRectangle(elevation: overlayDefault)
                ElevationRectangle(elevation: allSticky)
                ElevationRectangle(elevation: drag)
                ElevationRectangle(elevation: overlayEmphasized)
            }
            .frame(maxWidth: .infinity)
        }
        .background(backgroundColor)
    }
}

#Preview {
    ElevationsList().preferredColorScheme(.dark)
}
#Preview {
    ElevationsList().preferredColorScheme(.light)
}
