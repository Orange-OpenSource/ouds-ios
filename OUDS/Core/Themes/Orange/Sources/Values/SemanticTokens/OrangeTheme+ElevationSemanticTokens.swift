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
import OUDSTokensRaw
import OUDSTokensSemantic

// swiftlint:disable identifier_name

extension OrangeThemeElevationSemanticTokensProvider: ElevationSemanticTokens {
    @objc open var elevationXNone: ElevationXSemanticToken { ElevationRawTokens.elevationX0 }
    @objc open var elevationXRaised: ElevationXSemanticToken { ElevationRawTokens.elevationX0 }
    @objc open var elevationXDrag: ElevationXSemanticToken { ElevationRawTokens.elevationX0 }
    @objc open var elevationXDefault: ElevationXSemanticToken { ElevationRawTokens.elevationX0 }
    @objc open var elevationXEmphasized: ElevationXSemanticToken { ElevationRawTokens.elevationX0 }
    @objc open var elevationXStickyDefault: ElevationXSemanticToken { ElevationRawTokens.elevationX0 }
    @objc open var elevationXStickyEmphasized: ElevationXSemanticToken { ElevationRawTokens.elevationX0 }
    @objc open var elevationXStickyNavigationScrolled: ElevationXSemanticToken { ElevationRawTokens.elevationX0 }
    @objc open var elevationYNone: ElevationYSemanticToken { ElevationRawTokens.elevationY0 }
    @objc open var elevationYRaised: ElevationYSemanticToken { ElevationRawTokens.elevationY100 }
    @objc open var elevationYDrag: ElevationYSemanticToken { ElevationRawTokens.elevationY300 }
    @objc open var elevationYDefault: ElevationYSemanticToken { ElevationRawTokens.elevationY200 }
    @objc open var elevationYEmphasized: ElevationYSemanticToken { ElevationRawTokens.elevationY500 }
    @objc open var elevationYStickyDefault: ElevationYSemanticToken { ElevationRawTokens.elevationY300 }
    @objc open var elevationYStickyEmphasized: ElevationYSemanticToken { ElevationRawTokens.elevationY300 }
    @objc open var elevationYStickyNavigationScrolled: ElevationYSemanticToken { ElevationRawTokens.elevationY300 }
    @objc open var elevationBlurNone: ElevationBlurSemanticToken { ElevationRawTokens.elevationBlur0 }
    @objc open var elevationBlurRaised: ElevationBlurSemanticToken { ElevationRawTokens.elevationBlur200 }
    @objc open var elevationBlurDrag: ElevationBlurSemanticToken { ElevationRawTokens.elevationBlur400 }
    @objc open var elevationBlurDefault: ElevationBlurSemanticToken { ElevationRawTokens.elevationBlur300 }
    @objc open var elevationBlurEmphasized: ElevationBlurSemanticToken { ElevationRawTokens.elevationBlur600 }
    @objc open var elevationBlurStickyDefault: ElevationBlurSemanticToken { ElevationRawTokens.elevationBlur400 }
    @objc open var elevationBlurStickyEmphasized: ElevationBlurSemanticToken { ElevationRawTokens.elevationBlur400 }
    @objc open var elevationBlurStickyNavigationScrolled: ElevationBlurSemanticToken { ElevationRawTokens.elevationBlur400 }
    @objc open var elevationColorNone: ElevationColorSemanticToken { ColorRawTokens.colorOpacityBlack0 }
    @objc open var elevationColorRaised: ElevationColorSemanticToken { ColorRawTokens.colorOpacityBlack320 }
    @objc open var elevationColorDrag: ElevationColorSemanticToken { ColorRawTokens.colorOpacityBlack320 }
    @objc open var elevationColorDefault: ElevationColorSemanticToken { ColorRawTokens.colorOpacityBlack240 }
    @objc open var elevationColorEmphasized: ElevationColorSemanticToken { ColorRawTokens.colorOpacityBlack160 }
    @objc open var elevationColorStickyDefault: ElevationColorSemanticToken { ColorRawTokens.colorOpacityBlack160 }
    @objc open var elevationColorStickyEmphasized: ElevationColorSemanticToken { ColorRawTokens.colorOpacityBlack160 }
    @objc open var elevationColorStickyNavigationScrolled: ElevationColorSemanticToken { ColorRawTokens.colorOpacityBlack160 }
}

// swiftlint:enable identifier_name
