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

@TabNavigator {
    @Tab("SwiftUI") {
        ```swift
        // 1. Unordered list with 3 items with bullet as default in body large text style
        OUDSBulletList(label: "Label 1", level: .zero)
        OUDSBulletList(label: "Label 2", level: .one)
        OUDSBulletList(label: "Label 3", level: .two)
        
        // 2. Ordered list with 2 items in first level, one item as subitem in level 1,
        // and 2 items as subitem in level 2
        OUDSBulletList(label: "Label 1", type: .ordered(index: 0), level: .zero)
        OUDSBulletList(label: "Label 2", type: .ordered(index: 1), level: .one)
        OUDSBulletList(label: "Label 1.1", type: .ordered(index: 0), level: .one)
        OUDSBulletList(label: "Label 1.1.1", type: .ordered(index: 0), level: .two)
        OUDSBulletList(label: "Label 1.1.2", type: .ordered(index: 1), level: .two)
        
        // 3, Bare list with 3 items
        OUDSBulletList(label: "Label 1", type: .bare, level: .zero)
        OUDSBulletList(label: "Label 2", type: .bare, level: .one)
        OUDSBulletList(label: "Label 3", type: .bare, level: .two)
        
        // Item of Unordered list with bullet as tick and body medium text style
        OUDSBulletList(label: "Label",
                       type: .unordered(icon: .tick),
                       textStyle: .bodyMedium,
                       level: .one)
        
        // The same item with the branded tick and text in bold
        OUDSBulletList(label: "Label",
                       type: .unordered(icon: .tick, isBranded: true),
                       textStyle: .bodyMedium,
                       level: .one,
                       isBold: true)
        ```
    }
}
