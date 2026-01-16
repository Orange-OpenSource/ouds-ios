# ``OUDSThemesContract``

@Metadata {
    @PageImage(purpose: icon, source: "ic_unified_ds")
    @DisplayName("Welcome to Orange Unified Design System", style: symbol)
    @TitleHeading("Swift Package")
}
<!-- 
Do not add @PageImage(purpose: card) because not managed for landing page of online doc.
See https://github.com/swiftlang/swift-docc/issues/1283
-->

Orange Unified Design System: Build Sharper. Ship faster. Perform better.

## Overview

<!-- NOTE: Do not forget to update tokens version -->
```
🧬 Core version: 1.9.0
```

*Orange Unified Design System* is the new design system unified and cohesive across all platforms to build Orange mobile applications for everyone everywhere. Its objective is to propose a set of guidelines about how to apply the Orange brand on mobile applications. It also provides series of components and modules that show in details how to use this in the Orange apps.

*Orange Unified Design System* has been implemented in two code repositories:

- a SwiftUI code library exposed as Swift Package for all Apple platforms ([Orange-OpenSource/ouds-ios](https://github.com/Orange-OpenSOurce/ouds-ios))
- a demo application named *Design System Toolbox* that can be launched to show the guidelines, components and modules ([Orange-OpenSource/ouds-ios-design-system-toolbox](https://github.com/Orange-OpenSOurce/ouds-ios-design-system-toolbox))

This demo app also shows how to use the library or to style existing components.
Using these resources will allow you to create Orange branded applications faster and will inherit all the work that was done to make sure that all presented codes are fully tested regarding the brand, the ecodesign, the open source and the accessibility compliances.

You can get details about the this design system in [the official website unified-design-system.orange.com](https://unified-design-system.orange.com/).

> Note: Orange Unified Design System framework supports iOS / iPadOS 15 and later.

> Important: Orange Unified Design System framework focuses first on iOS / iPadOS, but other platforms like macOS, visionOS, watchOS and tvOS are supported.

> Tip: Feel free to submit pull requests if you can improve the support of any platforms!

## Data and privacy

The Orange Unified Design System library is a Software Development Kit (SDK) that allows developpers to create Orange branded mobile applications.
As such:
- this SDK does not handle any personnal data
- this SDK does not require any device permission to work

## Topics

### Essentials

@Links(visualStyle: detailedGrid) {
    - <doc:GettingStarted>
    - <doc:Tokens>
    - <doc:Themes>
    - <doc:Components>
    - <doc:Modules>
}
