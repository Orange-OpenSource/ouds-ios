# Dialogs

@Metadata {
    @PageImage(purpose: icon, source: "ic_folder_categories")
    @PageImage(purpose: card, source: "ic_folder_categories")
}

Some components can be used for **dialogs**.

## Overview

Dialogs components are UI elements that display information, system feedback or status changes.

### Alert Message

@TabNavigator {
    @Tab("Orange") {
        ![An alert message component in light and dark modes with Orange theme](component_alertMessage_Orange)
    }
    @Tab("Orange Compact") {
        ![An alert message component in light and dark modes with Orange Compact theme](component_alertMessage_OrangeCompact)
    }
    @Tab("Sosh") {
        ![An alert message component in light and dark modes with Sosh theme](component_alertMessage_Sosh)
    }
    @Tab("Wireframe") {
        ![An alert message component in light and dark modes with Wireframe theme](component_alertMessage_Wireframe)
    }
}

Alert message is a UI element that displays system feedback, status changes or required action; throughout detailed, prominent, persistent and actionable communication. Alert message includes functional icon and semantic colour, and may include as well a close button and/or action link.

Alert message does not disappear automatically and remains visible until dismissed or resolved by the user.

```swift
    // A basic positive alert message with text and badge
    OUDSAlertMessage(label: "Label")

    // A more complex alert message for warning status with a description and a close action
    // to dismiss the message.
    OUDSAlertMessage(label: "Warning", status: .warning, description: "Some details about the warning") {
        // Do some tasks here to dismiss the alert message when clicked
    }
        
    // Add a custom icon for accent and neutral status
    OUDSAlertMessage(label: "Label", status: .accent(icon: OUDSIcon(asset: Image("ic_heart"))))
    OUDSAlertMessage(label: "Label", status: .neutral(icon: OUDSIcon(asset: Image("ic_heart"))))
```
