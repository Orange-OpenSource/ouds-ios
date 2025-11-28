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

import Combine
import SwiftUI

// MARK: - Low Power Mode Actor

/// An actor to get and update in isolated context the flag about the low power mode
actor LowPowerModeActor {
    private(set) var isLowPowerModeEnabled: Bool = ProcessInfo.processInfo.isLowPowerModeEnabled

    func update() {
        isLowPowerModeEnabled = ProcessInfo.processInfo.isLowPowerModeEnabled
    }
}

// MARK: - OUDS Low Power Mode Observer

/// An `ObservableObject` providing through a published state a flag saying if the device  is in low pover mode or not.
/// This object is exposed as *environement object* through the `OUDSThemeableView`, and can be used in any view
/// inside it to apply a specific behavior when the device is in low power mode.
///
/// ```swift
/// // Inside a view with the OUDSThemeableView as root view
/// @EnvironmentObject var lowPowerModeObserver: OUDSLowPowerModeObserver
///
/// // Then read the boolean property
/// lowPowerModeObserver.isLowPowerModeEnabled
/// ```
///
/// - Since: 0.16.0
@MainActor
public final class OUDSLowPowerModeObserver: ObservableObject {

    /// The published property saying if device is in low power mode (true) or not (false)
    @Published public var isLowPowerModeEnabled: Bool = false

    /// The actor to store and update the flag in concurrency-safe context
    private let lowPowerModeActor: LowPowerModeActor

    /// The observer to get the notifications from the `NotificationCenter`
    private var observer: NSObjectProtocol?

    public init() {
        lowPowerModeActor = LowPowerModeActor()
        observer = NotificationCenter.default.addObserver(
            forName: .NSProcessInfoPowerStateDidChange,
            object: nil,
            queue: nil)
        { [weak self] _ in
            Task {
                await self?.refresh()
            }
        }

        // Init
        Task {
            await refresh()
        }
    }

    deinit {
        // Trick to be able to remove the observer even in non-insolaetd context because of deinit
        MainActor.assumeIsolated {
            if let observer {
                NotificationCenter.default.removeObserver(observer)
            }
        }
    }

    @MainActor
    func refresh() async {
        await lowPowerModeActor.update()
        isLowPowerModeEnabled = await lowPowerModeActor.isLowPowerModeEnabled
    }
}
