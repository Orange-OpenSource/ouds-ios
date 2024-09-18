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
    let elevation: ElevationCompositeSemanticToken
    var body: some View {
        Rectangle()
            .frame(width: 300, height: 80)
            .foregroundColor("#f4f4f4".color)
            .shadow(elevation: elevation)
    }
}

// MARK: - List of rectangles for rendering tests

/// Just a debug `View` to list the elevations effects and render them
/// Set as public for UI Tests purpose
public struct ElevationsList: View {

    public init() {}
    
    public var body: some View {
        ScrollView {
            ElevationRectangle(elevation: raised)
            Spacer().padding(.bottom, 20)

            ElevationRectangle(elevation: overlayDefault)
            Spacer().padding(.bottom, 20)

            ElevationRectangle(elevation: allSticky)
            Spacer().padding(.bottom, 20)

            ElevationRectangle(elevation: drag)
            Spacer().padding(.bottom, 20)

            ElevationRectangle(elevation: overlayEmphasized)
            Spacer().padding(.bottom, 20)
        }
    }
}
