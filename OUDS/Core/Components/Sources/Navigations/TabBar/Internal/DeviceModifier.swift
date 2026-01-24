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

#if os(iOS)

import OUDSFoundations
import SwiftUI

/// Modifier used to define as environment variable the type of iPhone device
struct DeviceModifier: ViewModifier {

    /// Used to try to define, as a first fallback the type of device in use depending to its dimension, so as to compute for example the
    /// ``SelectedTabBarIndicator`` and the ``TabBarTopDivider``
    /// Falls back to unknown device if scenes are not yet available.
    ///
    /// **WARNING:**:
    /// - Computed at initialization to avoid AttributeGraph cycles from accessing UIScreen/UIApplication during SwiftUI updates in iOS 26.x.
    /// - Makes still troubles since Xcode 26.1 and Xcode 26.2 with AttributeGraph cycles
    /// - See #1249, #1271
    private let device: iPhoneDevice = {
        guard let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene,
              let window = windowScene.windows.first else { return iPhoneDevice.unknown }

        let screenBounds = UIScreen.main.nativeBounds
        let safeAreaBottom = window.safeAreaInsets.bottom

        return OUDSFoundations.iPhoneDevice(screenBounds.width, screenBounds.height, safeAreaBottom)
    }()

    func body(content: Content) -> some View {
        content
            .environment(\.iPhoneInUse, device)
    }
}
#endif
