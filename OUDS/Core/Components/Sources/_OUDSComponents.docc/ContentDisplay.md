# Content Display

@Metadata {
    @PageImage(purpose: icon, source: "ic_folder_categories")
    @PageImage(purpose: card, source: "ic_folder_categories")
}

Some components can be used for **content display**.

## Overview

### Bullet List

Bullet list is a UI element that helps to view in related individual text items grouped together; items usually starting with a number or a bullet.

@TabNavigator {
    @Tab("Orange") {
        ![A bullet list in light and dark modes with Orange theme](component_bullet_list_Orange)
    }
    @Tab("Orange Business Tools") {
        ![A bullet list in light and dark modes with Orange Business Tools theme](component_bullet_list_OrangeBusinessTools)
    }
    @Tab("Sosh") {
        ![A bullet list in light and dark modes with Sosh theme](component_bullet_list_Sosh)
    }
    @Tab("Wireframe") {
        ![A bullet list in light and dark modes with Wireframe theme](component_bullet_list_Wireframe)
    }
}

Bullet list is also known as _Unordered list_ or _Ordered list_ and is not an interactive element by default.

```swift
// Bare list with 3 items
OUDSBulletList(type: .bare) {
    OUDSBulletList.Item("Label 1")
    OUDSBulletList.Item("Label 2")
    OUDSBulletList.Item("Label 3")
}

// Item of Unordered list with bullet as tick, a text style
// body medium and text bold
OUDSBulletList(type: .unordered(icon: .tick),
              textStyle: .bodyMedium,
              isBold: true)  {
    OUDSBulletList.Item("Label 1")
    OUDSBulletList.Item("Label 2")
    OUDSBulletList.Item("Label 3")
}

// Ordered list with 3 items in first level,
// and one item as sub item (second level),
// and 2 items as sub item in (third level)
OUDSBulletList(type: .ordered) {
    OUDSBulletList.Item("Label 1") {
        OUDSBulletList.Item("Label 1.1") {
            OUDSBulletList.Item("Label 1.1.1")
            OUDSBulletList.Item("Label 1.1.2")
        }
    }
    OUDSBulletList.Item("Label 2")
    OUDSBulletList.Item("Label 3")
}
```
