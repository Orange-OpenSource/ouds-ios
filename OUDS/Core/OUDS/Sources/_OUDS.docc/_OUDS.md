# ``OUDS``

@Metadata {
    @PageImage(purpose: icon, source: "ic_unified_ds")
}
<!-- 
Do not add @PageImage(purpose: card) because not managed for landing page of online doc.
See https://github.com/swiftlang/swift-docc/issues/1283
-->

The iOS library of *Orange Unified Design System*, the new design system unified and cohesive across all platforms to build Orange mobile applications for everyone everywhere.

## Overview

<!-- NOTE: Do not forget to update tokens version -->
```
🧬 Core version: 1.5.0
```

Orange is providing a full design system to build Orange mobile aplications. The objective of *Orange Unified Design System* (OUDS) is to propose a set of guidelines about how to apply the Orange brand on mobile applications. *Orange Unified Design System* also provides series of components and modules that show in details how to use this in the Orange apps.

*Orange Unified Design System* has been implemented in two code repositories:

- a SwiftUI code library exposed as Swift Package ([Orange-OpenSource/ouds-ios](https://github.com/Orange-OpenSOurce/ouds-ios))
- a demo application named *Design System Toolbox* that can be launched to show the guidelines, components and modules ([Orange-OpenSource/ouds-ios-design-system-toolbox](https://github.com/Orange-OpenSOurce/ouds-ios-design-system-toolbox))

This demo app also shows how to use the library or to style existing components.
Using these resources will allow you to create Orange branded applications faster and will inherit all the work that was done to make sure that all presented codes are fully tested regarding the brand, the ecodesign, the open source and the accessibility compliances.

You can get details about the this design system in [the official website unified-design-system.orange.com](https://unified-design-system.orange.com/).

> Note: Orange Unified Design System framework supports iOS 15 and later.

> Important: Orange Unified Design System framework focuses on iOS / iPadOS, other platforms like visionOS, watchOS, macOS and tvOS are not scoped yet.

## Topics

### Essentials

@Links(visualStyle: detailedGrid) {
    - <doc:GettingStarted>
    - <doc:Tokens>
    - <doc:Themes>
    - <doc:Components>
    - <doc:Modules>
}
