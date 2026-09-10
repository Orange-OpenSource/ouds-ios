---
name: ouds-ios-components-controls
description: Usage and code examples for OUDS iOS Controls components — OUDSCheckbox / OUDSCheckboxItem / OUDSCheckboxPicker / OUDSCheckboxIndeterminate, OUDSRadio / OUDSRadioItem / OUDSRadioPicker, OUDSSwitch / OUDSSwitchItem, OUDSSuggestionChip / OUDSFilterChip / OUDSChipPicker, OUDSPinCodeInput, OUDSPasswordInput, OUDSTextInput, OUDSTextArea. Load the ouds-ios-framework-usage skill first for imports, themes and image rules.
license: MIT
---

# OUDS Controls components

> Prerequisite: load `ouds-ios-framework-usage` first for imports, themes and image rules
> (`OUDSImage`, `// swiftlint:disable:next accessibility_label_for_image`).

## Common patterns (shared across most Controls)

These patterns apply to Checkbox, Radio, Switch, TextInput, TextArea, PinCodeInput, PasswordInput unless noted otherwise.

| Pattern | Syntax |
|---|---|
| Error state | `isError: true, errorText: "Message"` |
| Rich error | `errorText: AttributedString` |
| Plain helper | `helperText: "…"` |
| Rich helper | `helperText: AttributedString` |
| Error status (inputs) | `status: .error(message: "…")` |
| Rich error status | `status: .richError(message: AttributedString)` |
| Read-only | `isReadOnly: true` |
| Disabled | `.disabled(true)` — never combine with `isError` or `isReadOnly` |

> **Forbidden combinations** (fatal error at runtime): `isError` + `isReadOnly`, `isError` + `.disabled`, `isReadOnly` + `.disabled`

---

## Checkbox

```swift
OUDSCheckbox(isOn: $isOn, accessibilityLabel: "Label")
OUDSCheckboxIndeterminate(selection: $selection, accessibilityLabel: "Label")
OUDSCheckboxItem("Label", isOn: $isOn)
OUDSCheckboxItem("Label", isOn: $isOn, description: "Helper",
                 icon: OUDSImage(asset: Image(decorative: "ic")))
OUDSCheckboxItem("Label", isOn: $isOn,
                 icon: OUDSImage(asset: Image(decorative: "ic")), isReversed: true)
// Raw (non-tinted) image:
OUDSCheckboxItem("Label", isOn: $isOn,
                 icon: OUDSImage(asset: Image(decorative: "il_brand"), renderingMode: .original))
// Flip icon for RTL:
OUDSCheckboxItem("Label", isOn: $isOn,
                 icon: OUDSImage(asset: Image(systemName: "figure.handball"),
                                 flipped: layoutDirection == .rightToLeft))
// LocalizedStringKey:
OUDSCheckboxItem(LocalizedStringKey("agree_terms"), bundle: Bundle.module, isOn: $isOn,
                 icon: OUDSImage(asset: Image(decorative: "ic")))
// Indeterminate (three states) — also accepts LocalizedStringKey:
OUDSCheckboxItemIndeterminate("Label", selection: $selection,
                               icon: OUDSImage(asset: Image(decorative: "ic")))
OUDSCheckboxItemIndeterminate(LocalizedStringKey("select_all"), bundle: Bundle.module,
                               selection: $selection)
// Error / helper / disabled → see "Common patterns" above
```

> Parameter order: `(_ label:, isOn:, description:, icon:, isReversed:, isError:, errorText:, isReadOnly:, hasDivider:, constrainedMaxWidth:, action:)`

```swift
// Picker — icon is OUDSImage?
OUDSCheckboxPicker(selections: $selections, checkboxes: [
    .init(tag: "a", label: "Option A"),
    .init(tag: "b", label: "Option B", description: "Details", isReversed: true),
    .init(tag: "c", label: "Option C", icon: OUDSImage(asset: Image(systemName: "flame"))),
    .init(tag: "d", label: "Option D",
          icon: OUDSImage(asset: Image(decorative: "il_brand"), renderingMode: .original)),
])
OUDSCheckboxPicker(selections: $selections, checkboxes: data,
                   placement: .verticalRooted("All options", .textAndCount))
OUDSCheckboxPicker(selections: $selections, checkboxes: data,
                   isReversed: true, placement: .horizontal(true))
```

---

## Radio Button

```swift
OUDSRadio(isOn: $isOn, accessibilityLabel: "Label")
OUDSRadioItem("Label", isOn: $isOn)
OUDSRadioItem("Label", isOn: $isOn, icon: OUDSImage(asset: Image(decorative: "ic")))
// Raw (non-tinted) image:
OUDSRadioItem("Label", isOn: $isOn,
              icon: OUDSImage(asset: Image(decorative: "il_brand"), renderingMode: .original))
// Flip icon for RTL:
OUDSRadioItem("Label", isOn: $isOn,
              icon: OUDSImage(asset: Image(systemName: "chevron.right"),
                              flipped: layoutDirection == .rightToLeft))
// LocalizedStringKey:
OUDSRadioItem(LocalizedStringKey("option_label"), bundle: Bundle.module, isOn: $isOn,
              icon: OUDSImage(asset: Image(decorative: "ic")))
// Error / helper / disabled → see "Common patterns" above
OUDSRadioPicker(selection: $selection,
                radios: [
                    .init(tag: "a", label: "Option A"),
                    .init(tag: "b", label: "Option B",
                          icon: OUDSImage(asset: Image(systemName: "flame"))),
                    .init(tag: "c", label: "Option C",
                          icon: OUDSImage(asset: Image(decorative: "il_brand"),
                                         renderingMode: .original)),
                ],
                placement: .vertical)
```

---

## Switch

```swift
OUDSSwitch(isOn: $isOn, accessibilityLabel: "Label")
OUDSSwitchItem("Label", isOn: $isOn)
OUDSSwitchItem("Label", isOn: $isOn,
               icon: OUDSImage(asset: Image(decorative: "ic")))
// Raw (non-tinted) image:
OUDSSwitchItem("Label", isOn: $isOn,
               icon: OUDSImage(asset: Image(decorative: "il_brand"), renderingMode: .original))
// Flip icon for RTL:
OUDSSwitchItem("Label", isOn: $isOn,
               icon: OUDSImage(asset: Image(systemName: "figure.handball"),
                               flipped: layoutDirection == .rightToLeft))
// LocalizedStringKey:
OUDSSwitchItem(LocalizedStringKey("wifi_setting"), bundle: Bundle.module, isOn: $isOn,
               icon: OUDSImage(asset: Image(decorative: "ic")))
// Error / helper / disabled → see "Common patterns" above
```

---

## Pin Code Input

Available lengths: `.four`, `.six` (default).

```swift
OUDSPinCodeInput($value)
OUDSPinCodeInput($value, length: .four, autofocus: true)
OUDSPinCodeInput($value, helperText: "Enter your PIN")
// Error status → see "Common patterns" (status: .error / .richError)
```

---

## Password Input

> `status` is of type `OUDSTextInput.Status` (shared with `OUDSTextInput`).

```swift
OUDSPasswordInput(label: "Password", password: $password, isHiddenPassword: $isHidden)
OUDSPasswordInput(label: "Password", password: $password, isHiddenPassword: $isHidden,
                  placeholder: "Min. 8 chars", prefix: "🔑", lockIcon: true)
// Helper / error status → see "Common patterns"
```

---

## Chips

```swift
OUDSSuggestionChip(text: "Label") {}
OUDSSuggestionChip(icon: OUDSImage(asset: Image("ic")), text: "Label") {}
OUDSSuggestionChip(icon: OUDSImage(asset: Image("ic"), renderingMode: .original), text: "Label") {} // raw image (not tinted)
OUDSSuggestionChip(icon: OUDSImage(asset: Image("ic")), accessibilityLabel: "Label") {}
OUDSSuggestionChip(icon: OUDSImage(asset: Image("ic"), renderingMode: .original), accessibilityLabel: "Label") {} // raw image (not tinted)
OUDSFilterChip(text: "Label") {}
OUDSFilterChip(icon: OUDSImage(asset: Image("ic")), text: "Label") {}
OUDSFilterChip(icon: OUDSImage(asset: Image("ic"), renderingMode: .original), text: "Label") {} // raw image (not tinted)
OUDSFilterChip(icon: OUDSImage(asset: Image("ic")), accessibilityLabel: "Label") {}
OUDSFilterChip(icon: OUDSImage(asset: Image("ic"), renderingMode: .original), accessibilityLabel: "Label") {} // raw image (not tinted)
OUDSChipPicker(title: "Title", selection: $selection, chips: [
    .init(tag: .value1, layout: .textAndIcon("Label", image: OUDSImage(asset: Image("ic")))),
    .init(tag: .value2, layout: .textAndIcon("Brand", image: OUDSImage(asset: Image("ic_brand"), renderingMode: .original))), // raw image
    .init(tag: .value3, layout: .icon(OUDSImage(asset: Image("ic")), accessibilityLabel: "Label")),
    .init(tag: .value4, layout: .icon(OUDSImage(asset: Image("ic_brand"), renderingMode: .original), accessibilityLabel: "Brand")), // raw image
])
```

---

## Text Input

```swift
OUDSTextInput(label: "Label", text: $text)
OUDSTextInput(label: "Label", text: $text, placeholder: "…", prefix: "Pre", suffix: "Suf")
OUDSTextInput(label: "Label", text: $text, leadingIcon: OUDSImage(asset: Image("ic")))
OUDSTextInput(label: "Label", text: $text,
              leadingIcon: OUDSImage(asset: Image("ic"), renderingMode: .original)) // raw image (not tinted)
OUDSTextInput(label: "Label", text: $text,
              leadingIcon: OUDSImage(asset: Image("ic"), flipped: layoutDirection == .rightToLeft)) // flip for RTL
OUDSTextInput(label: "Label", text: $text,
              trailingAction: .init(icon: OUDSImage(asset: Image("ic")), actionHint: "Hint") {})
OUDSTextInput(label: "Label", text: $text,
              trailingAction: .init(icon: OUDSImage(asset: Image("ic"), renderingMode: .original),
                                    actionHint: "Hint") {}) // raw image
// Helper / error status → see "Common patterns"
```

---

## Text Area

`helperText` type: `.plain(String)` | `.rich(AttributedString)` | `.charactersMaxCount(UInt16)`

```swift
OUDSTextArea(label: "Label", text: $text)
OUDSTextArea(label: "Label", text: $text, placeholder: "Describe…")
OUDSTextArea(label: "Label", text: $text, helperText: .plain("Max 500 chars."))
OUDSTextArea(label: "Label", text: $text, helperText: .charactersMaxCount(500))
OUDSTextArea(label: "Label", text: $text,
             helperLink: .init(text: "Learn more") { openUrl(url) })
// Fixed height — no vertical growth, scroll from first overflow line
OUDSTextArea(label: "Label", text: $text, constrainedMaxHeight: true)
// Error status → see "Common patterns"
```

> Height is controlled by two component tokens on `theme.textArea`:
> - `sizeMinHeightInput` (72 pt by default) — minimum height, always applied
> - `sizeMaxHeightInput` (240 pt by default) — maximum height before scroll (used when `constrainedMaxHeight: false`, the default)
>
> When `constrainedMaxHeight: true`, `maxHeight` is capped to `sizeMinHeightInput`, keeping the component at a fixed compact size.
