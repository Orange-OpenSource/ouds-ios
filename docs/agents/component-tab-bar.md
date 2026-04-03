---
type: ai-agent-skills
topic: component-tab-bar
framework: OUDS-iOS
---

# OUDS iOS – Tab Bar Component

`OUDSTabBar` is a navigation component based on the native iOS tab bar.
Colors are managed automatically — do not override them manually.
Tab item images must be 26 × 26 pt.

**Documentation:** <https://ios.unified-design-system.orange.com/documentation/oudscomponents/oudstabbar>

## iOS 15+ (with explicit selection tracking)

Use this form when supporting iOS versions below 26.
Pass the currently selected tag and the total item count so OUDS can render the selection indicator.

```swift
OUDSTabBar(selected: 0, count: 3) {
    SomeView()
        .tabItem { Label("Label 1", image: "image_1") }
        .tag(0)
    OtherView()
        .tabItem { Label("Label 2", image: "image_2") }
        .tag(1)
    LastView()
        .tabItem { Label("Label 3", image: "image_3") }
        .tag(2)
}
```

## iOS 26+ (simplified)

```swift
OUDSTabBar {
    SomeView()
        .tabItem { Label("Label 1", image: "image_1") }
    OtherView()
        .tabItem { Label("Label 2", image: "image_2") }
    LastView()
        .tabItem { Label("Label 3", image: "image_3") }
}
```
