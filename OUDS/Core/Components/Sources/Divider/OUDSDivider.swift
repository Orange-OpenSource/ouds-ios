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

import OUDS
import OUDSTokensSemantic
import SwiftUI

public struct OUDSDivider: View {

    /// List of colors available for divider
    public enum Color {
        case borderDefault
        case borderMuted
        case borderEmphasized
        case borderBrandPrimary
        case borderBrandSecondary
        case borderBrandTertiary
        case borderOnBrandPrimary
        case borderOnBrandSecondary
        case borderOnBrandTertiary
        case alwaysBlack
        case alwaysWhite
        case alwaysOnBlack
        case alwaysOnWhite
    }

    /// The divider orientation
    public enum Orientation {
        case horizontal
        case vertical
    }

    // - MARK: Stored properties

    private let color: Self.Color
    private let orientation: Self.Orientation

    @Environment(\.theme) private var theme
    @Environment(\.colorScheme) private var colorScheme

    // - MARK: Initializer

    /// Create a colored divider.
    ///
    /// - Parameters:
    ///     - color: The color of the divider, `OUDSDivider.Color.borderDefault` by default
    ///     - orientation: The orientation of the divider, `OUDSDivider.Orientation.horizontal` by default
    public init(color: Self.Color = .borderDefault, orientation: Self.Orientation = .horizontal) {
        self.color = color
        self.orientation = orientation
    }

    // - MARK: Body

    public var body: some View {
        Divider()
            .frame(width: width, height: height)
            .overlay(colorToken.color(for: colorScheme))
    }

    // - MARK: Private helper

    var height: CGFloat? {
        switch orientation {
        case .horizontal:
            return theme.divider.dividerBorderWidth
        case .vertical:
            return nil
        }
    }

    var width: CGFloat? {
        switch orientation {
        case .horizontal:
            return nil
        case .vertical:
            return theme.divider.dividerBorderWidth
        }
    }

    private var colorToken: MultipleColorSemanticTokens {
        switch color {
        case .borderDefault:
            theme.colors.colorBorderDefault
        case .borderMuted:
            theme.colors.colorBorderMuted
        case .borderEmphasized:
            theme.colors.colorBorderEmphasized
        case .borderBrandPrimary:
            theme.colors.colorBorderBrandPrimary
        case .borderBrandSecondary:
            theme.colors.colorBorderBrandPrimary // TODO:
        case .borderBrandTertiary:
            theme.colors.colorBorderBrandPrimary // TODO:
        case .borderOnBrandPrimary:
            theme.colors.colorBorderOnBrandPrimary
        case .borderOnBrandSecondary:
            theme.colors.colorBorderOnBrandPrimary // TODO:
        case .borderOnBrandTertiary:
            theme.colors.colorBorderOnBrandPrimary // TODO:
        case .alwaysBlack:
            theme.colors.colorAlwaysBlack
        case .alwaysWhite:
            theme.colors.colorAlwaysWhite
        case .alwaysOnBlack:
            theme.colors.colorAlwaysOnBlack
        case .alwaysOnWhite:
            theme.colors.colorAlwaysOnWhite
        }
    }
}
