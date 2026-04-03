---
type: ai-agent-skills
topic: component-text-input
framework: OUDS-iOS
---

# OUDS iOS – Text Input Component

`OUDSTextInput` is an enriched text field with labels, helpers, and optional buttons.
It is based on the native iOS `TextField` but significantly enhanced.

**Documentation:** <https://ios.unified-design-system.orange.com/documentation/oudscomponents/oudstextinput>

## Basic usage

```swift
@State var text: String = ""
OUDSTextInput(label: "Some label", text: $text)
```

## With placeholder, prefix and suffix

```swift
@State var text: String = ""
OUDSTextInput(label: "Some label",
              text: $text,
              placeholder: "Placeholder",
              prefix: "Prefix",
              suffix: "Suffix")
```

## With trailing action button

```swift
@State var text: String = ""
let trailingAction = OUDSTextInput.TrailingAction(icon: Image("image_name"),
                                                  actionHint: "Some label") { /* action */ }
OUDSTextInput(label: "Label", text: $text, trailingAction: trailingAction)
```

## With leading icon

```swift
@State var text: String = ""
OUDSTextInput(label: "Label", text: $text, leadingIcon: Image("image_name"))
```

## With error status

```swift
@State var text: String = ""
OUDSTextInput(label: "Label",
              text: $text,
              status: .error(message: "Error message"))
```
