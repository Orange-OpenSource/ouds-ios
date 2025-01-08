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

/// Provider of component tokens for buttons are embeded in `OUDSTheme` as both `ButtonsComponentTokens` and`ButtonsComponentTokensRequirements`
///  to force users to implement these two protocols so as to be able to use semantic tokens providers
public typealias AllButtonComponentTokens = ButtonsComponentTokens & ButtonsComponentTokensRequirements
