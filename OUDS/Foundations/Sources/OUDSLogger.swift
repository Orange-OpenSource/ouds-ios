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

/// To keep code smaller
public typealias OL = OUDSLogger

/// The `os.Logger` wrapper used in the *OUDS iOS* library so as to logs things in standard output or elsewhere.
///
/// By default, debug and log level messages are suppressed even in DEBUG builds.
/// Set `OUDSLogger.verbose = true` to enable them.
///
/// - Since: 0.8.0
public struct OUDSLogger {

    private init() {}

    private static let logger = Logger()
    private static let bullet: String = "🍊"
    private static let prefix: String = "\(bullet) [OUDS]"

    /// When `true`, debug and log level messages are written to the console.
    /// Defaults to `false` so that OUDS internal logs do not pollute host-app output.
    /// Can be toggled at any time by library consumers.
    ///
    /// - Since: 1.4.0
    public static var verbose: Bool = false

    /// If compile mode is set as DEBUG and ``verbose`` is `true`, logs the message with a "debug" prefix
    /// and the `debug` method of the `os.Logger`
    /// - Parameter message: The message to log after the decoration
    public static func debug(_ message: String) {
        guard verbose else { return }
        #if DEBUG
        logger.debug("\(prefix):debug: 🪲 \(message)")
        #endif
    }

    /// Logs the message with a "log" prefix and the `log` method of the `os.Logger`
    /// if ``verbose`` is `true`
    /// - Parameter message: The message to log after the prefix
    public static func log(_ message: String) {
        guard verbose else { return }
        #if DEBUG
        logger.log("\(prefix): 🗒️ \(message)")
        #endif
    }

    /// Logs the message with a "info" prefix and the `info` method of the `os.Logger`
    /// - Parameter message: The message to log after the prefix
    public static func info(_ message: String) {
        logger.info("\(prefix):info: ℹ️ \(message)")
    }

    /// Logs the message with a "warning" prefix and the `warning` method of the `os.Logger`
    /// - Parameter message: The message to log after the prefix
    public static func warning(_ message: String) {
        logger.warning("\(prefix):warning: ⚠️ \(message)")
    }

    /// Logs the message with a "error" prefix and the `error` method of the `os.Logger`
    /// - Parameter message: The message to log after the prefix
    public static func error(_ message: String) {
        logger.error("\(prefix):error: ‼️ \(message)")
    }

    /// Triggers a `fatalError` signal with the given message
    /// - Parameter message: The message to log after the prefix
    public static func fatal(_ message: String) -> Never {
        fatalError("\(prefix):fatal: 💥 \(message)")
    }
}
