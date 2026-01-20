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

/// Macro implementation for #OUDSPreview
///
/// This macro wraps the provided content in an OUDSThemeableView with the specified theme.
///
/// Example usage:
/// ```swift
/// #OUDSPreview(theme: OrangeTheme()) {
///     YourView()
/// }
/// ```
///
/// Expands to:
/// ```swift
/// OUDSThemeableView(theme: OrangeTheme()) {
///     YourView()
/// }
/// ```
public struct OUDSPreviewMacro: ExpressionMacro {
    public static func expansion(
        of node: some FreestandingMacroExpansionSyntax,
        in context: some MacroExpansionContext
    ) throws -> ExprSyntax {
        // Get the arguments from the macro
        guard let firstArgument = node.arguments.first else {
            throw MacroError.missingThemeArgument
        }

        // Verify the argument is labeled "theme"
        guard let label = firstArgument.label?.text, label == "theme" else {
            throw MacroError.missingThemeArgument
        }

        // Get the theme expression (the value of the theme argument)
        let themeExpression = firstArgument.expression

        // Get the trailing closure (the content)
        guard let trailingClosure = node.trailingClosure else {
            throw MacroError.missingContentClosure
        }

        // Build the expanded expression without the label (OUDSThemeableView already expects 'theme:')
        return """
            OUDSThemeableView(theme: \(themeExpression)) \(trailingClosure)
            """
    }
}

/// Errors that can occur during macro expansion
enum MacroError: Error, CustomStringConvertible {
    case missingThemeArgument
    case missingContentClosure

    var description: String {
        switch self {
        case .missingThemeArgument:
            return "#OUDSPreview requires a theme argument, e.g., #OUDSPreview(theme: OrangeTheme())"
        case .missingContentClosure:
            return "#OUDSPreview requires a trailing closure with the content to preview"
        }
    }
}
