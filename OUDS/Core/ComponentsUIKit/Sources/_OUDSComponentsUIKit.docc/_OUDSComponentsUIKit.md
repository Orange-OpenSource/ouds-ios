# ``OUDSComponentsUIKit``

@Metadata {
    @PageImage(purpose: icon, source: "ic_under_construction_uikit")
    @DisplayName("Components (UIKit backports)", style: symbol)
    @TitleHeading("Library")
}
<!-- 
Do not add @PageImage(purpose: card) because not managed for landing page of online doc.
See https://github.com/swiftlang/swift-docc/issues/1283
-->

The catalog of all experimental components provided by OUDS usable through UIKit.

> Important: You should use SwiftUI instead of UIKit because this framework is not scoped in OUDS roadmap.

> Tip: There are helpers provided by this module to use OUDS component wrapped for UIKit.

## UIKit available components

Some components are available as wrapped version embeded inside UIKIt `UIViewController`, but not all.

> Caution: You will have to manage constraints and layouts in your UIKit views, the default rendering of the components might be different 

### Actions

Component                     | Available through UIKIt                          
----------------------------- | ------------------------------------- 
Button                        | ✅ yes  

### Controls

Component                     | Available through UIKIt                          
----------------------------- | ------------------------------------- 
Checkbox                      | ✅ yes      
Checkbox indeterminate        | ✅ yes
Checkbox item                 | ✅ yes
Checkbox item indeterminate   | ✅ yes
Checkbox picker               | ❌ no
Radio                         | ✅ yes
Radio item                    | ✅ yes
Radio picker                  | ❌ no
Switch                        | ✅ yes
Switch item                   | ✅ yes
Filter chip                   | ✅ yes
Suggestion chip               | ✅ yes
Chip picker                   | ❌ no
Text input                    | ❌ no

### Indicators

Component                     | Available through UIKIt                          
----------------------------- | ------------------------------------- 
Tag                           | ✅ yes
Badge                         | ✅ yes

### Layouts

Component                     | Available through UIKIt                          
----------------------------- | ------------------------------------- 
Horizontal divider            | ✅ yes
Vertical divider              | ✅ yes

### Navigations

Component                     | Available through UIKIt                          
----------------------------- | ------------------------------------- 
Link                          | ✅ yes
