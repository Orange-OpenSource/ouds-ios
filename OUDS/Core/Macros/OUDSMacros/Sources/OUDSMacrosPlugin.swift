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

import SwiftCompilerPlugin
import SwiftSyntax
import SwiftSyntaxBuilder
import SwiftSyntaxMacros

/// Compiler plugin that provides the OUDS macros.
///
/// This plugin is the entry point for the Swift macro system. It registers all OUDS macros
/// with the Swift compiler, making them available for use in source code.
///
/// The plugin is automatically invoked by the compiler when processing macro expansions
/// in code that imports the OUDSThemesContract module.
@main
struct OUDSMacrosPlugin: CompilerPlugin {
    let providingMacros: [Macro.Type] = [
        OUDSPreviewMacro.self,
    ]
}
