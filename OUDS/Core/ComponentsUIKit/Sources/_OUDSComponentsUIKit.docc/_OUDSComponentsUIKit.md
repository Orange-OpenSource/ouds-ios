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

The catalog of all components provided by OUDS usable through UIKit.

> Important: You should use SwiftUI instead of UIKit because this framework is not scoped in OUDS roadmap.

> Tip: There are helpers provided by this module to use OUDS component wrapped for UIKit.

## UIKit available components

Some components are available as wrapped version embeded inside UIKIt `UIViewController`, but not all.

> Caution: You will have to manage constraints and layouts in your UIKit views, the default rendering of the components might be different 

Category       | Component                     | Available through UIKIt                          
-------------- | ----------------------------- | ------------------------------------- 
Actions        | Button                        | yes  
Controls       | Checkbox                      | yes      
Controls       | Checkbox indeterminate        | yes
Controls       | Checkbox item                 | yes
Controls       | Checkbox item indeterminate   | yes
Controls       | Checkbox picker               | no
Controls       | Radio                         | yes
Controls       | Radio item                    | yes
Controls       | Radio picker                  | no
Controls       | Switch                        | yes
Controls       | Switch item                   | yes
Controls       | Filter chip                   | yes
Controls       | Suggestion chip               | yes
Controls       | Chip picker                   | no
Indicators     | Tag                           | yes
Indicators     | Badge                         | yes
Layouts        | Horizontal divider            | yes
Layouts        | Vertical divider              | yes
Navigations    | Link                          | yes

