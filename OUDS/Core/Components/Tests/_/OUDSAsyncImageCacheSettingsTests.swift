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
@testable import OUDSComponents
import Testing

/// Tests on the settings defined in ``OUDSAsyncImageCache``.
struct OUDSAsyncImageCacheSettingsTests {

    @Test
    func `max memory cost must be 100 MB`() {
        #expect(OUDSAsyncImageCache.Settings.maxMemoryCost == 100 * 1_024 * 1_024)
    }

    @Test
    func `max memory count must be 100`() {
        #expect(OUDSAsyncImageCache.Settings.maxMemoryCount == 100)
    }

    @Test
    func `max disk size must be 500 MB`() {
        #expect(OUDSAsyncImageCache.Settings.maxDiskSize == 500 * 1_024 * 1_024)
    }

    @Test
    func `disk cache folder name must be OUDS-Cache-AsyncImage`() {
        #expect(OUDSAsyncImageCache.Settings.diskCacheFolderName == "OUDS-Cache-AsyncImage")
    }
}
