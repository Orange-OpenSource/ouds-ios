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
import os

/// The `os.Logger` wrapper used in the *OUDS iOS* library so as to logs things in standard output or elswhere.
public struct OUDSLogger {

    private init() {}

    private static let logger = Logger()
    private static let bullet: String = "🍊"
    private static let prefix: String = "\(bullet) [OUDS]"

    public static func debug(_ message: String) {
        #if DEBUG
        logger.debug("\(prefix):debug: 🪲 \(message)")
        #endif
    }

    public static func log(_ message: String) {
        #if DEBUG
        logger.log("\(prefix): 🗒️ \(message)")
        #endif
    }

    public static func info(_ message: String) {
        logger.info("\(prefix):info: ℹ️ \(message)")
    }

    public static func warning(_ message: String) {
        logger.warning("\(prefix):warning: ⚠️ \(message)")
    }

    public static func error(_ message: String) {
        logger.error("\(prefix):error: 💥 \(message)")
    }
}
