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

/// Macro implementation for #OUDSPreview.
///
/// This struct conforms to `DeclarationMacro` and provides the implementation for the
/// `#OUDSPreview` freestanding macro. When the Swift compiler encounters the macro
/// in source code, it invokes the `expansion(of:in:)` method to transform the macro
/// call into a complete preview declaration.
///
/// The macro wraps the provided content in both a `#Preview` macro and an `OUDSThemeableView`
/// with the specified theme, allowing users to create OUDS-themed previews with minimal syntax.
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
/// #Preview {
///     OUDSThemeableView(theme: OrangeTheme()) {
///         YourView()
///     }
/// }
/// ```
public struct OUDSPreviewMacro: DeclarationMacro {
    public static func expansion(
        of node: some FreestandingMacroExpansionSyntax,
        in context: some MacroExpansionContext
    ) throws -> [DeclSyntax] {
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

        // Build the expanded declaration that wraps content in #Preview and OUDSThemeableView
        let declaration: DeclSyntax = """
            #Preview {
                OUDSThemeableView(theme: \(themeExpression)) \(trailingClosure)
            }
            """

        return [declaration]
    }
}

/// Errors that can occur during macro expansion.
///
/// These errors are thrown by `OUDSPreviewMacro` when the macro is used incorrectly
/// or when required arguments are missing. The Swift compiler will display these
/// error messages to the developer at the macro call site.
enum MacroError: Error, CustomStringConvertible {
    /// Thrown when the macro is called without a 'theme' argument or with an incorrectly labeled argument.
    case missingThemeArgument

    /// Thrown when the macro is called without a trailing closure containing the preview content.
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
