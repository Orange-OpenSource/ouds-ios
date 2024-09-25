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
import OUDS
import OUDSTokensSemantic
import OUDSTokensRaw

// MARK: - Raw tokens
let raised = ElevationCompositeRawToken(x: 0, y: 1, blur: 2, color: ColorRawTokens.colorTransparentBlack500)
let overlayDefault = ElevationCompositeRawToken(x: 0, y: 2, blur: 3, color: ColorRawTokens.colorTransparentBlack400)
let allSticky = ElevationCompositeRawToken(x: 0, y: 4, blur: 4, color: ColorRawTokens.colorTransparentBlack300)
let drag = ElevationCompositeRawToken(x: 0, y: 4, blur: 4, color: ColorRawTokens.colorTransparentBlack500)
let overlayEmphasized = ElevationCompositeRawToken(x: 0, y: 12, blur: 12, color: ColorRawTokens.colorTransparentBlack300)

struct ElevationTokenPage: View {

    @Environment(\.theme) private var theme
    @Environment(\.colorScheme) private var colorScheme

    // ==========
    // MARK: Body
    // ==========

    var body: some View {
        VStack(alignment: .leading, spacing: 40) {
           elevationRectangle(elevation: raised)
           elevationRectangle(elevation: overlayDefault)
           elevationRectangle(elevation: allSticky)
           elevationRectangle(elevation: drag)
           elevationRectangle(elevation: overlayEmphasized)
        }
        .frame(maxWidth: .infinity)
        .padding(.vertical, 16)
        .background(backgroundColor)
    }

    // ============
    // MARK: Helper
    // ============

    private func elevationRectangle(elevation: ElevationCompositeSemanticToken) -> some View {
        Rectangle()
            .frame(width: 300, height: 80)
            .foregroundColor(foregroundColor)
            .shadow(elevation: elevation)
    }

    private var foregroundColor: Color {
        switch colorScheme {
        case .light:
                .white
        case .dark:
            "#333333".color
        @unknown default:
            fatalError()
        }
    }

    private var backgroundColor: Color {
        switch colorScheme {
        case .light:
            "#f4f4f4".color
        case .dark:
            "#272727".color
        @unknown default:
            fatalError()
        }
    }
}
