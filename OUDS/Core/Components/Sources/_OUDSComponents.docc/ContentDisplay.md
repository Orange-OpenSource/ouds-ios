# Content Display

@Metadata {
    @PageImage(purpose: icon, source: "ic_folder_categories")
    @PageImage(purpose: card, source: "ic_folder_categories")
}

Some components can be used for **content display**.

## Overview

### Bullet List

The ``OUDSBulletList`` is a UI element that helps to display related individual text items grouped together; items usually start with a number or a bullet.

@TabNavigator {
    @Tab("Orange") {
        ![A bullet list in light and dark modes with Orange theme](component_bullet_list_Orange)
    }
    @Tab("Orange Compact") {
        ![A bullet list in light and dark modes with Orange Compact theme](component_bullet_list_OrangeCompact)
    }
    @Tab("Sosh") {
        ![A bullet list in light and dark modes with Sosh theme](component_bullet_list_Sosh)
    }
    @Tab("Wireframe") {
        ![A bullet list in light and dark modes with Wireframe theme](component_bullet_list_Wireframe)
    }
}

``OUDSBulletList`` is also known as _Unordered list_ or _Ordered list_ and is not an interactive element by default.

```swift
// Bare list with 3 items
OUDSBulletList(type: .bare) {
    OUDSBulletList.Item("Label 1")
    OUDSBulletList.Item("Label 2")
    OUDSBulletList.Item("Label 3")
}

// Item of Unordered list with bullet as tick, a text style
// body medium and text bold
OUDSBulletList(type: .unordered(asset: .tick),
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

The text of each item is an ``OUDSTextualContent``: a raw `String` (a string literal is enough), a localized string or a rich text.

```swift
OUDSBulletList {
    // Raw text, same as .raw("Raw text")
    OUDSBulletList.Item("Raw text")

    // Localized text
    OUDSBulletList.Item(.localized("item_label", bundle: Bundle.module))

    // Rich text
    OUDSBulletList.Item(.rich(AttributedString(markdown: "A **rich** text"))) // Manage in your side errors for init
}
```
