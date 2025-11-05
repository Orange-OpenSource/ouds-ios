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

/*
 Used in target "OUDSSwiftUI" embeded in product "OUDSSwiftUI", which are both umbrellas,
 to export to users all products listed below,
 in one item,
 because not possible to have only on product pointing to several targets
 with Swift Package.

 Trick to let user make only "import OUDSSwiftUI" embeding everything listed below.

 A product must point to one target which must have source.
 Even empty.

 (╯°□°)╯︵ ┻━┻
 */

@_exported import OUDSComponents
@_exported import OUDSFoundations
@_exported import OUDSModules
@_exported import OUDSThemesContract
@_exported import OUDSThemesWireframe
@_exported import OUDSTokensComponent
@_exported import OUDSTokensRaw
@_exported import OUDSTokensSemantic
