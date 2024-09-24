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

/// This is a component token for a text input in formulars.
/// **Warning: This is a draft component **
public protocol FormsTextInputComponentTokens {

    var ftiTitleFontWeight: TypographyFontWeightSemanticToken { get }
    var ftiTitleFontSize: TypographyFontSizeSemanticToken { get }
    var ftiTitleColor: ColorSemanticToken { get }

    var ftiSubtitleFontWeight: TypographyFontWeightSemanticToken { get }
    var ftiSubtitleFontSize: TypographyFontSizeSemanticToken { get }
    var ftiSubtitleColor: ColorSemanticToken { get }

    var ftiBackgroundColor: ColorSemanticToken { get }

    var ftiBorderColor: ColorSemanticToken { get }

    var ftiBorderStyle: BorderStyleSemanticToken { get }

    var ftiBorderWidth: BorderWidthSemanticToken { get }
}
