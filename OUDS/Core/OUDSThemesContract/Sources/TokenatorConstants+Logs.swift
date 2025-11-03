//
// Software Name: OUDSThemesContract iOS
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

import OUDSFoundations

extension OUDSVersions {

    /// Displays in standard output an information emssage about the tokens librairies versions in use
    static func logTokensLibrairiesVersions() {
        var versionsLog = "OUDS iOS Libraries Versions:\n"
        versionsLog += "- Core OUDS: \(Self.themeCoreVersion)\n"
        versionsLog += "- Core Orange: \(Self.themeOrangeCoreVersion)\n"
        versionsLog += "- Brand Orange: \(Self.themeOrangeBrandVersion)\n"
        versionsLog += "- Brand Orange Business Tools: \(Self.themeOrangeBusinessToolsBrandVersion)\n"
        versionsLog += "- Core Sosh: \(Self.themeSoshCoreVersion)\n"
        versionsLog += "- Brand Sosh: \(Self.themeSoshBrandVersion)\n"
        versionsLog += "- Core Wireframe: \(Self.themeWireframeCoreVersion)\n"
        versionsLog += "- Brand Wireframe: \(Self.themeWireframeBrandVersion)\n"

        OL.info(versionsLog)
    }
}
