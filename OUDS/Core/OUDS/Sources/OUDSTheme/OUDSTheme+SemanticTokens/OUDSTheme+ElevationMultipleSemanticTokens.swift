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

// [File not generated by the tokenator]
// WARNING: Not synchronized anymore with the Figjam / Figma by developers team
// Create an issue for update https://github.com/Orange-OpenSource/ouds-ios/issues/new?template=token_update.yml

/// Defines wrapper objects for eelvation color semantic  tokens.
/// These values can be overriden inside `OUDSTheme` subclasses (in extensions or not, in the same module or not) thanks to the `@objc open` combination.
extension OUDSTheme: ElevationMultipleSemanticTokens {

    @objc open var elevationColorDrag: MultipleColorTokens { MultipleColorTokens(ColorRawTokens.colorTransparentBlack500) }
    @objc open var elevationColorNone: MultipleColorTokens { MultipleColorTokens(ColorRawTokens.colorTransparentBlack0) }
    @objc open var elevationColorOverlayDefault: MultipleColorTokens { MultipleColorTokens(ColorRawTokens.colorTransparentBlack400) }
    @objc open var elevationColorOverlayEmphasized: MultipleColorTokens { MultipleColorTokens(ColorRawTokens.colorTransparentBlack300) }
    @objc open var elevationColorRaised: MultipleColorTokens { MultipleColorTokens(ColorRawTokens.colorTransparentBlack500) }
    @objc open var elevationColorStickyDefault: MultipleColorTokens { MultipleColorTokens(ColorRawTokens.colorTransparentBlack300) }
    @objc open var elevationColorStickyEmphasized: MultipleColorTokens { MultipleColorTokens(ColorRawTokens.colorTransparentBlack300) }
    @objc open var elevationColorStickyNavigationScrolled: MultipleColorTokens { MultipleColorTokens(ColorRawTokens.colorTransparentBlack300) }
}