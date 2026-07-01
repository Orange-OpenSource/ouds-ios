# Migration Guide

- [v2.2.0 → v2.3.0](#v220--v230)
- [v2.0.0 → v2.2.0](#v200--v220)
- [v1.4.0 → v2.0.0](#v140--v200)
- [v1.3.0 → v1.4.0](#v130--v140)
- [v1.2.0 → v1.3.0](#v120--v130)
- [v1.1.0 → v1.2.0](#v110--v120)
- [v1.0.0 → v1.1.0](#v100--v110)
- [Support](#support)

## v2.2.0 → v2.3.0

### Overview

Work on original images integrations in components brings API updates to group parameters related
to images / icons into one single object type. `OUDSIcon` is now `OUDSImage`.

### Before You Begin

#### Prerequisites

- Use version 2.2 or older

### Renamed OUDSIcon

The `OUDSIcon` type is deprecated. Use instead `OUDSImage`.

**Impact**: Low

**Before (v2.2.0)**:
```swift
OUDSIcon(asset: Image("ic_heart"), accessibilityLabel: LocalizedStringKey("like_icon"), bundle: Bundle.module)
OUDSIcon(asset: Image("ic_heart"), accessibilityLabel: "Like", renderingMode: .original)
```

**After (v2.3.0)**:
```swift
OUDSImage(asset: Image("ic_heart"), accessibilityLabel: LocalizedStringKey("like_icon"), bundle: Bundle.module)
OUDSImage(asset: Image("ic_heart"), accessibilityLabel: "Like", renderingMode: .original)
```

**Required Action**:
- Rename the `OUDSIcon` calls by `OUDSImage`

**Reason for Change**: "icon" is too strict in meanings, "image" is more open.

### Deprecated OUDSButton initialisers with `icon` parameter

`OUDSButton` initialisers that accepted a bare `Image` together with separate `icon`, `flipIcon`, `renderingMode` and `accessibilityLabel` parameters are deprecated.
Use the new initialisers that accept an `OUDSImage` value instead; `OUDSImage` encapsulates the asset, the flip flag, the rendering mode and the accessibility label in one object.

**Impact**: Low

**Before (v2.2.0)**:

```swift
// Text + icon (String label)
OUDSButton(text: "Like", icon: Image("ic_heart"), appearance: .default) {}

// Text + icon (flipped for RTL, original rendering)
OUDSButton(text: "Back", icon: Image("ic_chevron"), flipIcon: true, renderingMode: .original, appearance: .default) {}

// Text + icon (LocalizedStringKey)
OUDSButton(LocalizedStringKey("action_like"), icon: Image("ic_heart"), appearance: .default) {}

// Icon only (String accessibility label)
OUDSButton(icon: Image("ic_heart"), accessibilityLabel: "Like", appearance: .default) {}

// Icon only (LocalizedStringKey accessibility label)
OUDSButton(icon: Image("ic_heart"), accessibilityLabel: LocalizedStringKey("like_icon"), bundle: Bundle.module, appearance: .default) {}
```

**After (v2.3.0)**:

```swift
// Text + icon (no accessibility label needed on OUDSImage — decorative in this context)
OUDSButton(text: "Like", image: OUDSImage(asset: Image("ic_heart")), appearance: .default) {}

// Text + icon (flipped for RTL, original rendering)
OUDSButton(text: "Back", image: OUDSImage(asset: Image("ic_chevron"), flipped: true, renderingMode: .original), appearance: .default) {}

// Text + icon (LocalizedStringKey)
OUDSButton(LocalizedStringKey("action_like"), image: OUDSImage(asset: Image("ic_heart")), appearance: .default) {}

// Icon only — accessibilityLabel is now carried by OUDSImage
OUDSButton(image: OUDSImage(asset: Image("ic_heart"), accessibilityLabel: "Like"), appearance: .default) {}

// Icon only — LocalizedStringKey accessibility label
OUDSButton(image: OUDSImage(asset: Image("ic_heart"), accessibilityLabel: LocalizedStringKey("like_icon"), bundle: Bundle.module), appearance: .default) {}
```

**Required Action**:
1. Replace every `icon: Image(…)` parameter with `image: OUDSImage(asset: Image(…))`
2. Move the `flipIcon: Bool` value to `OUDSImage(asset:flipped:)` (parameter renamed `flipped`)
3. Move the `renderingMode:` value to `OUDSImage(asset:renderingMode:)`
4. Move the `accessibilityLabel:` value (both `String` and `LocalizedStringKey` forms) to `OUDSImage(asset:accessibilityLabel:)` or `OUDSImage(asset:accessibilityLabel:tableName:bundle:)`
5. Remove the now-unused `flipIcon`, `renderingMode` and `accessibilityLabel` parameters from the `OUDSButton` call site

**Reason for Change**: Grouping image-related parameters (`icon`, `flipIcon`, `renderingMode`, `accessibilityLabel`) into one `OUDSImage` object makes the call site cleaner, reduces the number of parameters on `OUDSButton`, and aligns with the same pattern used by other components (`OUDSLink`, `OUDSSuggestionChip`, `OUDSFilterChip`, …).

### Deprecated OUDSCheckboxItem, OUDSCheckboxItemIndeterminate and OUDSCheckboxPickerData initialisers with `icon` parameter

Initialisers of `OUDSCheckboxItem`, `OUDSCheckboxItemIndeterminate` and `OUDSCheckboxPickerData` that accepted a bare `Image` together with separate `flipIcon` and `renderingMode` parameters are deprecated.
Use the new initialisers that accept an `OUDSImage?` value instead; `OUDSImage` encapsulates the asset, the flip flag and the rendering mode in one object.

**Impact**: Low

**Parameter mapping** (applies to all three types):

| Old parameter | New location |
|---|---|
| `icon: Image(…)` | `image: OUDSImage(asset: Image(…))` |
| `flipIcon: true` | `OUDSImage(asset:, flipped: true)` — omit if `false` (default) |
| `renderingMode: .original` | `OUDSImage(asset:, renderingMode: .original)` — omit if `.template` (default) |

#### OUDSCheckboxItem

**Before (v2.2.0)**:
```swift
OUDSCheckboxItem("Label", isOn: $isOn, icon: Image(decorative: "ic_heart"), isReversed: true)
OUDSCheckboxItem("Label", isOn: $isOn, icon: Image(decorative: "il_brand"), renderingMode: .original)
OUDSCheckboxItem("Label", isOn: $isOn, icon: Image(systemName: "figure.handball"),
                 flipIcon: layoutDirection == .rightToLeft)
OUDSCheckboxItem(LocalizedStringKey("agree_terms"), bundle: Bundle.module, isOn: $isOn,
                 icon: Image(decorative: "ic_heart"), renderingMode: .original)
```

**After (v2.3.0)**:
```swift
OUDSCheckboxItem("Label", isOn: $isOn,
                 image: OUDSImage(asset: Image(decorative: "ic_heart")), isReversed: true)
OUDSCheckboxItem("Label", isOn: $isOn,
                 image: OUDSImage(asset: Image(decorative: "il_brand"), renderingMode: .original))
OUDSCheckboxItem("Label", isOn: $isOn,
                 image: OUDSImage(asset: Image(systemName: "figure.handball"),
                                  flipped: layoutDirection == .rightToLeft))
OUDSCheckboxItem(LocalizedStringKey("agree_terms"), bundle: Bundle.module, isOn: $isOn,
                 image: OUDSImage(asset: Image(decorative: "ic_heart"), renderingMode: .original))
```

#### OUDSCheckboxItemIndeterminate

**Before (v2.2.0)**:
```swift
OUDSCheckboxItemIndeterminate("Label", selection: $state,
                               icon: Image(decorative: "ic_heart"), isReversed: true)
OUDSCheckboxItemIndeterminate("Label", selection: $state,
                               icon: Image(decorative: "il_brand"), renderingMode: .original)
```

**After (v2.3.0)**:
```swift
OUDSCheckboxItemIndeterminate("Label", selection: $state,
                               image: OUDSImage(asset: Image(decorative: "ic_heart")), isReversed: true)
OUDSCheckboxItemIndeterminate("Label", selection: $state,
                               image: OUDSImage(asset: Image(decorative: "il_brand"), renderingMode: .original))

// New in v2.3.0: LocalizedStringKey variant now available
OUDSCheckboxItemIndeterminate(LocalizedStringKey("select_all"), bundle: Bundle.module, selection: $state,
                               image: OUDSImage(asset: Image(decorative: "ic_heart")))
```

#### OUDSCheckboxPickerData

**Before (v2.2.0)**:
```swift
OUDSCheckboxPickerData(tag: "a", label: "Option A", icon: Image(systemName: "flame"))
OUDSCheckboxPickerData(tag: "b", label: "Option B",
                       icon: Image(decorative: "il_brand"), renderingMode: .original)
```

**After (v2.3.0)**:
```swift
OUDSCheckboxPickerData(tag: "a", label: "Option A",
                       image: OUDSImage(asset: Image(systemName: "flame")))
OUDSCheckboxPickerData(tag: "b", label: "Option B",
                       image: OUDSImage(asset: Image(decorative: "il_brand"), renderingMode: .original))
```

**Required Action**:
1. Replace every `icon: Image(…)` parameter with `image: OUDSImage(asset: Image(…))`
2. Move `flipIcon: Bool` → `OUDSImage(asset:, flipped:)` (omit if `false`)
3. Move `renderingMode:` → `OUDSImage(asset:, renderingMode:)` (omit if `.template`)
4. Remove the now-unused `flipIcon` and `renderingMode` parameters from the call site

**Reason for Change**: Grouping image-related parameters into one `OUDSImage` object reduces the number of parameters, makes the call site cleaner, and aligns `OUDSCheckboxItem` with the same pattern applied to `OUDSButton` and other components.

### Deprecated OUDSRadioItem and OUDSRadioPickerData initialisers with `icon` parameter

Initialisers of `OUDSRadioItem` and `OUDSRadioPickerData` that accepted a bare `Image` together with separate `flipIcon` and `renderingMode` parameters are deprecated.
Use the new initialisers that accept an `OUDSImage?` value instead.

**Impact**: Low

**Parameter mapping** (applies to both types):

| Old parameter | New location |
|---|---|
| `icon: Image(…)` | `image: OUDSImage(asset: Image(…))` |
| `flipIcon: true` | `OUDSImage(asset:, flipped: true)` — omit if `false` (default) |
| `renderingMode: .original` | `OUDSImage(asset:, renderingMode: .original)` — omit if `.template` (default) |

#### OUDSRadioItem

**Before (v2.2.0)**:
```swift
OUDSRadioItem("Label", isOn: $isOn, icon: Image(decorative: "ic_heart"), isReversed: true)
OUDSRadioItem("Label", isOn: $isOn, icon: Image(decorative: "il_brand"), renderingMode: .original)
OUDSRadioItem("Label", isOn: $isOn, icon: Image(systemName: "chevron.right"),
              flipIcon: layoutDirection == .rightToLeft)
OUDSRadioItem(LocalizedStringKey("option_label"), bundle: Bundle.module, isOn: $isOn,
              icon: Image(decorative: "ic_heart"), renderingMode: .original)
```

**After (v2.3.0)**:
```swift
OUDSRadioItem("Label", isOn: $isOn,
              image: OUDSImage(asset: Image(decorative: "ic_heart")), isReversed: true)
OUDSRadioItem("Label", isOn: $isOn,
              image: OUDSImage(asset: Image(decorative: "il_brand"), renderingMode: .original))
OUDSRadioItem("Label", isOn: $isOn,
              image: OUDSImage(asset: Image(systemName: "chevron.right"),
                               flipped: layoutDirection == .rightToLeft))
OUDSRadioItem(LocalizedStringKey("option_label"), bundle: Bundle.module, isOn: $isOn,
              image: OUDSImage(asset: Image(decorative: "ic_heart"), renderingMode: .original))
```

#### OUDSRadioPickerData

**Before (v2.2.0)**:
```swift
OUDSRadioPickerData(tag: "a", label: "Option A", icon: Image(systemName: "flame"))
OUDSRadioPickerData(tag: "b", label: "Option B",
                    icon: Image(decorative: "il_brand"))
```

**After (v2.3.0)**:
```swift
OUDSRadioPickerData(tag: "a", label: "Option A",
                    image: OUDSImage(asset: Image(systemName: "flame")))
OUDSRadioPickerData(tag: "b", label: "Option B",
                    image: OUDSImage(asset: Image(decorative: "il_brand")))
```

**Required Action**:
1. Replace every `icon: Image(…)` parameter with `image: OUDSImage(asset: Image(…))`
2. Move `flipIcon: Bool` → `OUDSImage(asset:, flipped:)` (omit if `false`)
3. Move `renderingMode:` → `OUDSImage(asset:, renderingMode:)` (omit if `.template`)
4. Remove the now-unused `flipIcon` and `renderingMode` parameters from the call site

**Reason for Change**: Grouping image-related parameters into one `OUDSImage` object reduces the number of parameters, makes the call site cleaner, and aligns `OUDSRadioItem` with the same pattern applied to `OUDSButton`, `OUDSCheckboxItem` and other components.

### Deprecated OUDSSwitchItem initialisers with `icon` parameter

Initialisers of `OUDSSwitchItem` that accepted a bare `Image` together with separate `flipIcon` and `renderingMode` parameters are deprecated.
Use the new initialisers that accept an `OUDSImage?` value instead.

**Impact**: Low

**Parameter mapping**:

| Old parameter | New location |
|---|---|
| `icon: Image(…)` | `image: OUDSImage(asset: Image(…))` |
| `flipIcon: true` | `OUDSImage(asset:, flipped: true)` — omit if `false` (default) |
| `renderingMode: .original` | `OUDSImage(asset:, renderingMode: .original)` — omit if `.template` (default) |

**Before (v2.2.0)**:
```swift
OUDSSwitchItem("Label", isOn: $isOn, icon: Image(decorative: "ic_heart"), isReversed: true)
OUDSSwitchItem("Label", isOn: $isOn, icon: Image(decorative: "il_brand"), renderingMode: .original)
OUDSSwitchItem("Label", isOn: $isOn,
               icon: Image(systemName: "figure.handball"),
               flipIcon: layoutDirection == .rightToLeft)
OUDSSwitchItem(LocalizedStringKey("wifi_setting"), bundle: Bundle.module, isOn: $isOn,
               icon: Image(decorative: "ic_wifi"), renderingMode: .original)
```

**After (v2.3.0)**:
```swift
OUDSSwitchItem("Label", isOn: $isOn,
               image: OUDSImage(asset: Image(decorative: "ic_heart")), isReversed: true)
OUDSSwitchItem("Label", isOn: $isOn,
               image: OUDSImage(asset: Image(decorative: "il_brand"), renderingMode: .original))
OUDSSwitchItem("Label", isOn: $isOn,
               image: OUDSImage(asset: Image(systemName: "figure.handball"),
                                flipped: layoutDirection == .rightToLeft))
OUDSSwitchItem(LocalizedStringKey("wifi_setting"), bundle: Bundle.module, isOn: $isOn,
               image: OUDSImage(asset: Image(decorative: "ic_wifi"), renderingMode: .original))
```

**Required Action**:
1. Replace every `icon: Image(…)` parameter with `image: OUDSImage(asset: Image(…))`
2. Move `flipIcon: Bool` → `OUDSImage(asset:, flipped:)` (omit if `false`)
3. Move `renderingMode:` → `OUDSImage(asset:, renderingMode:)` (omit if `.template`)
4. Remove the now-unused `flipIcon` and `renderingMode` parameters from the call site

**Reason for Change**: Grouping image-related parameters into one `OUDSImage` object aligns `OUDSSwitchItem` with the same pattern applied to `OUDSButton`, `OUDSCheckboxItem`, `OUDSRadioItem` and other components.

### Deprecated OUDSFilterChip and OUDSSuggestionChip initialisers with `icon: Image` parameter

Initialisers of `OUDSFilterChip` and `OUDSSuggestionChip` that accepted a bare `Image` together with a separate `renderingMode` parameter are deprecated.
Use the new initialisers that accept an `OUDSImage` value instead.

**Impact**: Low

**Note**: Unlike other components, chips do **not** support `flipIcon` — `OUDSImage.flipped` is not used here.
The `accessibilityLabel` parameter remains on the chip itself; do not set it on `OUDSImage`.

**Parameter mapping**:

| Old parameter | New location |
|---|---|
| `icon: Image(…)` | `image: OUDSImage(asset: Image(…))` (FilterChip) / `image: OUDSImage(asset: Image(…))` (SuggestionChip — see note) |
| `renderingMode: .original` | `OUDSImage(asset:, renderingMode: .original)` — omit if `.template` (default) |

> **Note on parameter label for both chip components:**
>
> `OUDSFilterChip` and `OUDSSuggestionChip` active initialisers all use `image: OUDSImage` as the parameter label.
> Both components rename `icon:` → `image:` to be consistent with all other OUDS components.

**Before (v2.2.0)**:
```swift
OUDSSuggestionChip(icon: Image("ic_heart"), accessibilityLabel: "Heart") {}
OUDSSuggestionChip(icon: Image("ic_brand"), accessibilityLabel: "Brand", renderingMode: .original) {}
OUDSSuggestionChip(icon: Image("ic_heart"), text: "Heart") {}
OUDSSuggestionChip(icon: Image("ic_brand"), text: "Brand", renderingMode: .original) {}

OUDSFilterChip(icon: Image("ic_heart"), accessibilityLabel: "Heart", selected: true) {}
OUDSFilterChip(icon: Image("ic_brand"), accessibilityLabel: "Brand", renderingMode: .original) {}
OUDSFilterChip(icon: Image("ic_heart"), text: "Heart", selected: true) {}
OUDSFilterChip(icon: Image("ic_brand"), text: "Brand", renderingMode: .original) {}
```

**After (v2.3.0)**:
```swift
// OUDSSuggestionChip — image: OUDSImage (parameter label renamed from icon: to image: for all variants)
OUDSSuggestionChip(image: OUDSImage(asset: Image("ic_heart")), accessibilityLabel: "Heart") {}
OUDSSuggestionChip(image: OUDSImage(asset: Image("ic_brand"), renderingMode: .original), accessibilityLabel: "Brand") {}
OUDSSuggestionChip(image: OUDSImage(asset: Image("ic_heart")), text: "Heart") {}
OUDSSuggestionChip(image: OUDSImage(asset: Image("ic_brand"), renderingMode: .original), text: "Brand") {}

// OUDSFilterChip — image: OUDSImage (parameter label renamed from icon: to image:)
OUDSFilterChip(image: OUDSImage(asset: Image("ic_heart")), accessibilityLabel: "Heart", selected: true) {}
OUDSFilterChip(image: OUDSImage(asset: Image("ic_brand"), renderingMode: .original), accessibilityLabel: "Brand") {}
OUDSFilterChip(image: OUDSImage(asset: Image("ic_heart")), text: "Heart", selected: true) {}
OUDSFilterChip(image: OUDSImage(asset: Image("ic_brand"), renderingMode: .original), text: "Brand") {}
```

**Required Action**:
1. Replace `icon: Image(…)` with `OUDSImage(asset: Image(…))`
2. Move `renderingMode:` → `OUDSImage(asset:, renderingMode:)` (omit if `.template`)
3. Remove the now-unused `renderingMode` parameter from the chip call site
4. Rename the parameter label from `icon:` to `image:` (applies to both `OUDSFilterChip` and `OUDSSuggestionChip`)

**Reason for Change**: Grouping image-related parameters into one `OUDSImage` object aligns the chip components with the same pattern applied to all other OUDS components. Both rename `icon:` to `image:` for consistency.

### OUDSChipPickerData.Layout — new static factories for OUDSImage

The `@frozen` enum `OUDSChipPickerData.Layout` has been enriched with two static factory methods accepting `OUDSImage`.
The existing cases `.icon(icon:accessibilityLabel:renderingMode:)` and `.textAndIcon(text:icon:renderingMode:)` remain available for backward compatibility.

**Impact**: Low — additive change, no breaking change.

**Before (v2.2.0)**:
```swift
OUDSChipPickerData(tag: .x,
                   layout: .icon(icon: Image("ic_heart"), accessibilityLabel: "Heart"))
OUDSChipPickerData(tag: .y,
                   layout: .icon(icon: Image("ic_brand"), accessibilityLabel: "Brand",
                                 renderingMode: .original))
OUDSChipPickerData(tag: .z,
                   layout: .textAndIcon("Label", icon: Image("ic_heart")))
OUDSChipPickerData(tag: .w,
                   layout: .textAndIcon("Brand", icon: Image("ic_brand"),
                                        renderingMode: .original))
```

**After (v2.3.0)** — preferred new form using static factories:
```swift
OUDSChipPickerData(tag: .x,
                   layout: .icon(OUDSImage(asset: Image("ic_heart")), accessibilityLabel: "Heart"))
OUDSChipPickerData(tag: .y,
                   layout: .icon(OUDSImage(asset: Image("ic_brand"), renderingMode: .original),
                                 accessibilityLabel: "Brand"))
OUDSChipPickerData(tag: .z,
                   layout: .textAndIcon("Label", image: OUDSImage(asset: Image("ic_heart"))))
OUDSChipPickerData(tag: .w,
                   layout: .textAndIcon("Brand",
                                        image: OUDSImage(asset: Image("ic_brand"),
                                                         renderingMode: .original)))
```

**Required Action**:
- Migrate to the new static factory form to avoid passing `renderingMode` separately
- The old case-based form continues to compile and remains valid
- Replace `icon: Image(…)` → `image: OUDSImage(asset: Image(…))`
- **Drop the `text:` label**: the static factory `.textAndIcon(_ text: String, image:)` has its first argument unlabelled (`_`). If your call site used the enum case with an explicit `text:` label (e.g. `.textAndIcon(text: "Label", icon: ...)`), you must remove that label when switching to the factory (e.g. `.textAndIcon("Label", image: ...)`)

**Reason for Change**: `@frozen` is preserved for ABI stability. Static factories provide a cleaner API aligned with `OUDSImage` without requiring a breaking enum change.

### Deprecated OUDSTag.Status factories with `icon: Image` parameter

The static factories `OUDSTag.Status.neutral(icon:flipIcon:renderingMode:)` and `OUDSTag.Status.accent(icon:flipIcon:renderingMode:)` are deprecated.
Use the new overloads that accept an `OUDSImage` value instead with parameter named `image` instead of `icon`.

> Only the `.neutral(icon:)` and `.accent(icon:)` factories are affected.
> All other factories (`.positive`, `.negative`, `.warning`, `.info`, `.neutral(bullet:)`, `.accent(bullet:)`) are unchanged.

**Impact**: Low

**Parameter mapping**:

| Old parameter | New location |
|---|---|
| `icon: Image(…)` | `OUDSImage(asset: Image(…))` |
| `flipIcon: true` | `OUDSImage(asset:, flipped: true)` — omit if `false` (default) |
| `renderingMode: .original` | `OUDSImage(asset:, renderingMode: .original)` — omit if `.template` (default) |

**Before (v2.2.0)**:
```swift
OUDSTag(label: "Label", status: .neutral(icon: Image(decorative: "ic_heart")))
OUDSTag(label: "Label", status: .neutral(icon: Image(decorative: "ic_heart"), flipIcon: true))
OUDSTag(label: "Label", status: .neutral(icon: Image("ic_brand"), renderingMode: .original))
OUDSTag(label: "Label", status: .accent(icon: Image("ic_brand"), renderingMode: .original))
```

**After (v2.3.0)**:
```swift
OUDSTag(label: "Label", status: .neutral(image: OUDSImage(asset: Image(decorative: "ic_heart"))))
OUDSTag(label: "Label", status: .neutral(image: OUDSImage(asset: Image(decorative: "ic_heart"), flipped: true)))
OUDSTag(label: "Label", status: .neutral(image: OUDSImage(asset: Image("ic_brand"), renderingMode: .original)))
OUDSTag(label: "Label", status: .accent(image: OUDSImage(asset: Image("ic_brand"), renderingMode: .original)))
```

**Required Action**:
1. Replace `icon: Image(…)` with `image: OUDSImage(asset: Image(…))`
2. Move `flipIcon: Bool` → `OUDSImage(asset:, flipped:)` (omit if `false`)
3. Move `renderingMode:` → `OUDSImage(asset:, renderingMode:)` (omit if `.template`)
4. Remove the now-unused `flipIcon` and `renderingMode` parameters from the factory call

**Reason for Change**: Grouping image-related parameters into one `OUDSImage` object aligns `OUDSTag.Status` with the same pattern applied to all other OUDS components.

### Deprecated OUDSLink initialisers with `icon: Image` parameter

The two `OUDSLink` initialisers that accepted a bare `Image` together with a separate `renderingMode` parameter are deprecated.
Use the new overloads that accept an `OUDSImage?` value instead.

> The navigation initialisers (`init(text:indicator:size:action:)` and `init(_:tableName:bundle:indicator:size:action:)`) are **unchanged**.
> `OUDSLink` does not support `flipIcon` for custom icons — only navigation indicators are automatically flipped for RTL.

**Impact**: Low

**Parameter mapping**:

| Old parameter | New location |
|---|---|
| `icon: Image(…)` | `image: OUDSImage(asset: Image(…))` |
| `renderingMode: .original` | `OUDSImage(asset:, renderingMode: .original)` — omit if `.template` (default) |

**Before (v2.2.0)**:
```swift
OUDSLink(text: "Learn more", icon: Image("ic_heart"), size: .default) {}
OUDSLink(text: "Brand", icon: Image("ic_brand"), renderingMode: .original, size: .default) {}
OUDSLink(LocalizedStringKey("learn_more"), bundle: Bundle.module,
         icon: Image("ic_heart"), size: .default) {}
OUDSLink(LocalizedStringKey("brand"), bundle: Bundle.module,
         icon: Image("ic_brand"), renderingMode: .original, size: .default) {}
```

**After (v2.3.0)**:
```swift
OUDSLink(text: "Learn more", image: OUDSImage(asset: Image("ic_heart")), size: .default) {}
OUDSLink(text: "Brand", image: OUDSImage(asset: Image("ic_brand"), renderingMode: .original), size: .default) {}
OUDSLink(LocalizedStringKey("learn_more"), bundle: Bundle.module,
         image: OUDSImage(asset: Image("ic_heart")), size: .default) {}
OUDSLink(LocalizedStringKey("brand"), bundle: Bundle.module,
         image: OUDSImage(asset: Image("ic_brand"), renderingMode: .original), size: .default) {}
```

**Required Action**:
1. Replace `icon: Image(…)` with `image: OUDSImage(asset: Image(…))` — **both** the parameter label (`icon:` → `image:`) and the type (`Image` → `OUDSImage(asset:)`) must change together
2. Move `renderingMode:` → `OUDSImage(asset:, renderingMode:)` (omit if `.template`)
3. Remove the now-unused `renderingMode` parameter from the call site

> **⚠ Two-step migration trap**
>
> A common mistake is to replace the `Image(…)` value with `OUDSImage(asset: Image(…))` first (e.g. via a global find-and-replace or Xcode fix-it) while leaving the `icon:` label unchanged.
> This produces `icon: OUDSImage(asset: Image(…))` which still compiles — the deprecated `icon: Image?` init accepts it because `OUDSImage` is not `Image` — but it is incorrect.
> See the section "Renamed `image:` and `leadingImage:` parameters in active initialisers" further below.
>
> **You must always rename `icon:` → `image:` at the same time as you wrap the value in `OUDSImage(asset:)`.**

**Reason for Change**: Grouping image-related parameters into one `OUDSImage` object aligns `OUDSLink` with the same pattern applied to all other OUDS components.

### Deprecated OUDSTextInput initialisers and OUDSTextInput.TrailingAction

Both `OUDSTextInput` and its nested `TrailingAction` struct have been updated to accept `OUDSImage` instead of separate `Image`, `flipIcon`/`flipLeadingIcon`, and `renderingMode` parameters.

**Impact**: Low

#### OUDSTextInput — leadingIcon

**Parameter mapping**:

| Old parameter | New location |
|---|---|
| `leadingIcon: Image(…)` | `leadingImage: OUDSImage(asset: Image(…))` |
| `flipLeadingIcon: true` | `OUDSImage(asset:, flipped: true)` — omit if `false` (default) |
| `leadingIconRenderingMode: .original` | `OUDSImage(asset:, renderingMode: .original)` — omit if `.template` (default) |

**Before (v2.2.0)**:
```swift
OUDSTextInput(label: "Email", text: $text, leadingIcon: Image(systemName: "envelope"))
OUDSTextInput(label: "Brand", text: $text, leadingIcon: Image("ic_brand"), leadingIconRenderingMode: .original)
OUDSTextInput(label: "Label", text: $text, leadingIcon: Image("ic"), flipLeadingIcon: true)
```

**After (v2.3.0)**:
```swift
OUDSTextInput(label: "Email", text: $text, leadingImage: OUDSImage(asset: Image(systemName: "envelope")))
OUDSTextInput(label: "Brand", text: $text, leadingImage: OUDSImage(asset: Image("ic_brand"), renderingMode: .original))
OUDSTextInput(label: "Label", text: $text, leadingImage: OUDSImage(asset: Image("ic"), flipped: true))
```

#### OUDSTextInput.TrailingAction

**Parameter mapping**:

| Old parameter | New location |
|---|---|
| `icon: Image(…)` | `image: OUDSImage(asset: Image(…))` |
| `flipIcon: true` | `OUDSImage(asset:, flipped: true)` — omit if `false` (default) |
| `renderingMode: .original` | `OUDSImage(asset:, renderingMode: .original)` — omit if `.template` (default) |

**Before (v2.2.0)**:
```swift
OUDSTextInput.TrailingAction(icon: Image("ic_cross"), actionHint: "Delete") { text = "" }
OUDSTextInput.TrailingAction(icon: Image("ic_brand"), actionHint: "Brand", renderingMode: .original) {}
```

**After (v2.3.0)**:
```swift
OUDSTextInput.TrailingAction(image: OUDSImage(asset: Image("ic_cross")), actionHint: "Delete") { text = "" }
OUDSTextInput.TrailingAction(image: OUDSImage(asset: Image("ic_brand"), renderingMode: .original), actionHint: "Brand") {}
```

**Required Action**:
1. Replace `leadingIcon: Image(…)` with `leadingImage: OUDSImage(asset: Image(…))`
2. Move `flipLeadingIcon:` → `OUDSImage(asset:, flipped:)` (omit if `false`)
3. Move `leadingIconRenderingMode:` → `OUDSImage(asset:, renderingMode:)` (omit if `.template`)
4. Replace `TrailingAction(icon: Image(…), …)` with `TrailingAction(image: OUDSImage(asset: Image(…)), …)`
5. Move `flipIcon:` and `renderingMode:` inside the `OUDSImage` construction

**Reason for Change**: Grouping image-related parameters into one `OUDSImage` object aligns `OUDSTextInput` with the same pattern applied to all other OUDS components.

### Renamed `image:` and `leadingImage:` parameters in active initialisers

Following the introduction of `OUDSImage`-based initialisers in the same release, a secondary naming ambiguity was discovered: because the deprecated initialisers keep `icon: Image? = nil` and the new active initialisers had `icon: OUDSImage? = nil`, Swift could not always resolve which overload to call when `nil` was passed (or the parameter was omitted).

To resolve this, the active initialisers have been updated to use a distinct parameter label:
- `icon: OUDSImage?` → `image: OUDSImage?`
- `leadingIcon: OUDSImage?` → `leadingImage: OUDSImage?`

The deprecated initialisers (`icon: Image?`, `leadingIcon: Image?`) are **unchanged**.

**Impact**: Low

**Components affected**:

| Component | Old parameter (active init) | New parameter (active init) |
|---|---|---|
| `OUDSCheckboxItem` | `icon: OUDSImage?` | `image: OUDSImage?` |
| `OUDSCheckboxItemIndeterminate` | `icon: OUDSImage?` | `image: OUDSImage?` |
| `OUDSCheckboxPickerData` | `icon: OUDSImage?` | `image: OUDSImage?` |
| `OUDSRadioItem` | `icon: OUDSImage?` | `image: OUDSImage?` |
| `OUDSRadioPickerData` | `image: OUDSImage?` | unchanged (was already `image:`) — but still subject to residual ambiguity when called without an image argument (see warning below) |
| `OUDSSwitchItem` | `icon: OUDSImage?` | `image: OUDSImage?` |
| `OUDSTextInput` | `leadingIcon: OUDSImage?` | `leadingImage: OUDSImage?` |
| `OUDSLink` | `icon: OUDSImage?` | `image: OUDSImage?` |

**Before**:
```swift
OUDSCheckboxItem("Label", isOn: $isOn, icon: OUDSImage(asset: Image("ic_heart")))
OUDSCheckboxItemIndeterminate("Label", selection: $state, icon: OUDSImage(asset: Image("ic_heart")))
OUDSCheckboxPickerData(tag: "a", label: "Option A", icon: OUDSImage(asset: Image(systemName: "flame")))
OUDSRadioItem("Label", isOn: $isOn, icon: OUDSImage(asset: Image("ic_heart")))
OUDSSwitchItem("Label", isOn: $isOn, icon: OUDSImage(asset: Image("ic_heart")))
OUDSTextInput(label: "Email", text: $text, leadingIcon: OUDSImage(asset: Image(systemName: "envelope")))
OUDSLink(text: "Learn more", icon: OUDSImage(asset: Image("ic_heart")), size: .default) {}
```

**After**:
```swift
OUDSCheckboxItem("Label", isOn: $isOn, image: OUDSImage(asset: Image("ic_heart")))
OUDSCheckboxItemIndeterminate("Label", selection: $state, image: OUDSImage(asset: Image("ic_heart")))
OUDSCheckboxPickerData(tag: "a", label: "Option A", image: OUDSImage(asset: Image(systemName: "flame")))
OUDSRadioItem("Label", isOn: $isOn, image: OUDSImage(asset: Image("ic_heart")))
OUDSSwitchItem("Label", isOn: $isOn, image: OUDSImage(asset: Image("ic_heart")))
OUDSTextInput(label: "Email", text: $text, leadingImage: OUDSImage(asset: Image(systemName: "envelope")))
OUDSLink(text: "Learn more", image: OUDSImage(asset: Image("ic_heart")), size: .default) {}
```

**Required Action**:
1. In any call site using `icon: OUDSImage(…)` on the above components, rename the label to `image:`
2. In any call site using `leadingIcon: OUDSImage(…)` on `OUDSTextInput`, rename to `leadingImage:`
3. Call sites using the deprecated `icon: Image(…)` form are **not affected** — they continue to compile with a deprecation warning

**Reason for Change**: Swift cannot resolve `nil` between `icon: Image? = nil` (deprecated) and `icon: OUDSImage? = nil` (active) when the parameter is omitted, causing a compile-time ambiguity. Using distinct labels (`image:`, `leadingImage:`) removes the ambiguity without breaking the deprecated API.

> **⚠ Residual ambiguity warning**
>
> Even after this rename, a call site that omits the image parameter entirely may still trigger a Swift compile-time ambiguity, because both the deprecated init (e.g. `icon: Image? = nil`) and the active init (e.g. `image: OUDSImage? = nil`) can be invoked with no image argument.
>
> **Symptom**: `error: ambiguous use of 'init(...)'`
>
> **Fix**: Pass the image parameter explicitly as `nil` to force Swift to select the active init:
>
> ```swift
> // ❌ may be ambiguous while deprecated inits coexist:
> OUDSCheckboxItem("Label", isOn: $isOn)
> OUDSRadioItem("Label", isOn: $isOn)
> OUDSRadioPickerData(tag: "a", label: "Option A")
> OUDSSwitchItem("Label", isOn: $isOn)
> OUDSLink(text: "Learn more", size: .default) {}
> OUDSTextInput(label: "Email", text: $text)
>
> // ✅ unambiguous — active init selected:
> // temporary — remove once deprecated inits are gone in v3
> OUDSCheckboxItem("Label", isOn: $isOn, image: nil)
> OUDSRadioItem("Label", isOn: $isOn, image: nil)
> OUDSRadioPickerData(tag: "a", label: "Option A", image: nil) 
> OUDSSwitchItem("Label", isOn: $isOn, image: nil)
> OUDSLink(text: "Learn more", image: nil, size: .default) {}
> OUDSTextInput(label: "Email", text: $text, leadingImage: nil)
> ```
>
> This workaround is only needed until the deprecated initialisers are removed in v3.

### Compatibility

- **Backward Compatibility**: Yes — deprecated initialisers still compile with a warning
- **v2.2.0 Support**: None

## v2.0.0 → v2.2.0

### Overview

The `badge` component has been refactored so as to improve maintainability and split responsabilities.
Now there are 3 components instead of 1.

### Before You Begin

#### Prerequisites

- Use version 2.0 or older

### Deprecated badge API

The `OUDSBadge` component is deprecated. Use instead dedicated API.

**Impact**: Medium

**Before (v2.0.0)**:
```swift
// Standard badge (i.e. empty badge)
OUDSBadge(accessibilityLabel: "New feature available", status: .accent, size: .small)

// Count badge
OUDSBadge(count: 9, accessibilityLabel: "9 new messages", status: .negative, size: .large)

// Icon badge
OUDSBadge(status: .info, accessibilityLabel: "Like", size: .medium)
```

**After (v2.1.0)**:
```swift
// Standard badge (i.e. empty badge)
OUDSBadgeStandard(accessibilityLabel: "New feature available", status: .accent, size: .small)

// Count badge
OUDSBadgeCount(9, accessibilityLabel: "9 new messages", status: .negative, size: .large)

// Icon badge
OUDSBadgeIcon(status: .info, accessibilityLabel: "Like", size: .medium)
```

**Required Action**:
- Replace the `OUDSBadge` calls by `OUDSBadgeStandard`, `OUDSBadgeCount` or `OUDSBadgeIcon`

**Reason for Change**: Now in Figma these components have their own versions, configurations and should be split.

## v1.4.0 → v2.0.0

### Overview

Tokens librairies have been updated, with some raw, semantic and components tokens removed or renamed.
API for `action type` of `toolbar item` has been enriched.

### Before You Begin

#### Prerequisites

- Use version 1.4 or older

### Renamed tokens

Some component tokens (badge, bar) and semantic tokens (colors, elevations, size) have been renamed.

**Impact**: High

For colors semantic tokens, "Modal" is now "ModalSheet":

| Old name                                   | New name                             |
|--------------------------------------------|--------------------------------------|
| `repositorySecondaryHigher`                | `repositorySecondaryHigherHigh`      |
| `overlayModalLight`                        | `overlayModalSheetLight`             |
| `overlayModalDark`                         | `overlayModalSheetDark`              |
| `overlayModal`                             | `overlayModalSheet`                  |

For elevation semantic tokens, "Default" is now "Elevated":

| Old name                                   | New name                             |
|--------------------------------------------|--------------------------------------|
| `xDefault`                                 | `xElevated`                          |
| `yDefault`                                 | `yElevated`                          |
| `blurDefault`                              | `blurElevated`                       |
| `spreadDefault`                            | `spreadElevated`                     |
| `colorDefaultLight`                        | `colorElevatedLight`                 |
| `colorDefaultDark`                         | `colorElevatedDark`                  |


For size semantic tokens, the word "Type" has been removed from the name:

| Old name                                   | New name                             |
|--------------------------------------------|--------------------------------------|
| `maxWidthTypeDisplayLargeMobile`           | `maxWidthDisplayLargeMobile`         |
| `maxWidthTypeDisplayLargeTablet`           | `maxWidthDisplayLargeTablet`         |
| `maxWidthTypeDisplayMediumMobile`          | `maxWidthDisplayMediumMobile`        |
| `maxWidthTypeDisplayMediumTablet`          | `maxWidthDisplayMediumTablet`        |
| `maxWidthTypeDisplaySmallMobile`           | `maxWidthDisplaySmallMobile`         |
| `maxWidthTypeDisplaySmallTablet`           | `maxWidthDisplaySmallTablet`         |
| `maxWidthTypeHeadingXlargeMobile`          | `maxWidthHeadingXlargeMobile`        |
| `maxWidthTypeHeadingXlargeTablet`          | `maxWidthHeadingXlargeTablet`        |
| `maxWidthTypeHeadingLargeMobile`           | `maxWidthHeadingLargeMobile`         |
| `maxWidthTypeHeadingLargeTablet`           | `maxWidthHeadingLargeTablet`         |
| `maxWidthTypeHeadingMediumMobile`          | `maxWidthHeadingMediumMobile`        |
| `maxWidthTypeHeadingMediumTablet`          | `maxWidthHeadingMediumTablet`        |
| `maxWidthTypeHeadingSmallMobile`           | `maxWidthHeadingSmallMobile`         |
| `maxWidthTypeHeadingSmallTablet`           | `maxWidthHeadingSmallTablet`         |
| `maxWidthTypeBodyLargeMobile`              | `maxWidthBodyLargeMobile`            |
| `maxWidthTypeBodyLargeTablet`              | `maxWidthBodyLargeTablet`            |
| `maxWidthTypeBodyMediumMobile`             | `maxWidthBodyMediumMobile`           |
| `maxWidthTypeBodyMediumTablet`             | `maxWidthBodyMediumTablet`           |
| `maxWidthTypeBodySmallMobile`              | `maxWidthBodySmallMobile`            |
| `maxWidthTypeBodySmallTablet`              | `maxWidthBodySmallTablet`            |
| `maxWidthTypeLabelXlargeMobile`            | `maxWidthLabelXlargeMobile`          |
| `maxWidthTypeLabelXlargeTablet`            | `maxWidthLabelXlargeTablet`          |
| `maxWidthTypeLabelLargeMobile`             | `maxWidthabelLargeMobile`            |
| `maxWidthTypeLabelLargeTablet`             | `maxWidthLabelLargeTablet`           |
| `maxWidthTypeLabelMediumMobile`            | `maxWidthLabelMediumMobile`          |
| `maxWidthTypeLabelMediumTablet`            | `maxWidthLabelMediumTablet`          |
| `maxWidthTypeLabelSmallMobile`             | `maxWidthLabelSmallMobile`           |
| `maxWidthTypeLabelSmallTablet`             | `maxWidthLabelSmallTablet`           |

For badge component tokens:

| Old name                                   | New name                             |
|--------------------------------------------|--------------------------------------|
| `spaceInset`                               | `spaceInsetMediumLarge`              |

For bar component tokens, "ActiveIndicator" is now "CurrentIndicator":

| Old name                                        | New name                                        |
|-------------------------------------------------|-------------------------------------------------|
| `colorActiveIndicatorCustomSelectedEnabled`     | `colorCurrentIndicatorCustomSelectedEnabled`    |
| `colorActiveIndicatorCustomSelectedHover`       | `colorCurrentIndicatorCustomSelectedHover`      |
| `colorActiveIndicatorCustomSelectedPressed`     | `colorCurrentIndicatorCustomSelectedPressed`    |
| `colorActiveIndicatorCustomSelectedFocus`       | `colorCurrentIndicatorCustomSelectedFocus`      |
| `opacityActiveIndicatorCustom`                  | `opacityCurrentIndicatorCustom`                 |
| `borderRadiusActiveIndicatorCustomTop`          | `borderRadiusCurrentIndicatorCustomTop`         |
| `borderRadiusActiveIndicatorCustomBottom`       | `borderRadiusCurrentIndicatorCustomBottom`      |
| `sizeWidthActiveIndicatorCustomTop`             | `sizeWidthCurrentIndicatorCustomTop`            |
| `sizeWidthActiveIndicatorCustomBottom`          | `sizeWidthCurrentIndicatorCustomBottom`         |
| `sizeWidthActiveIndicatorCustomBottom`          | `sizeWidthCurrentIndicatorCustomBottom`         |
    
**Required Action**:
- Use the new names as explained above

**Reason for Change**: Tokens librairies have been updated in design side

### Removed tokens

Some component tokens (control item, checkbox, radio), semantic tokens (color) and raw tokens (effect, colors) have been removed.
All Sosh raw tokens have been changed.

**Impact**: High

**Required Action**:
- Remove effect raw token `blur160`
- Remove color raw token `opacityGrayLight80800`
- Remove color semantic tokens `actionAccentLight`, `actionAccentDark` and `actionAccent`; use if relevant `colorAccent` bar component tokens
- Remove radio component token `sizeIndicator`; use `controlItem.sizeControlIndicator` instead
- Remove checkbox component token `sizeIndicator`; use `controlItem.sizeControlIndicator` instead
- Remove following control item component tokens: `sizeMaxHeihtAssetsContainer`, `sizeLoader`, `sizeErrorIcon`, `borderRadiusItemOnly`,
`colorBgHover*`, `colorBgFocus*`, `colorBgPressed*`, `colorBgLoading*`, `colorContentLoader*`, `spacePaddingInlineErrorIcon*`
- Remove use of all raw tokens for Sosh and use new ones

**Reason for Change**: Tokens librairies have been updated in design side

### Renamed color charts tokens providers

The tokens provider for charts colors, previously named `charts`, is now named `colorsCharts`.

**Impact**: High

**Required Action**:
- Rename any use of `theme.charts` to `theme.colorsCharts`

**Reason for Change**: Bring more clarity in naming

### Refactor of API for `action type` of `toolbar item`

The `OUDSToolBarItem.ActionType` enum has been updated for the `icon` case.
A new parameter named `badgeType` appeared.

**Impact**: Low

**Required Action**: 
- If you make pattern matching on this case, add a new slot for this parameter.

**Reason for Change**: Manage badge for items with icons in toolbars

### Compatibility

- **Backward Compatibility**: No
- **v1.4.0 Support**: No

## v1.3.0 → v1.4.0

### Overview

Some public `View` extension methods prefixed with `ouds` have been renamed to remove the prefix, aligning with the naming style of typography helpers.
The old methods are deprecated and will be removed in a future major version.
The tab bar component has a new initializer with a binding for the selected tab, deprecating the older one.

### Before You Begin

#### Prerequisites

- Use version 1.3 or older

### Deprecated API

#### Renamed `View` extension methods (deprecated, not removed)

The following `View` extension methods have been deprecated in favor of unprefixed versions.
The old methods still compile with a deprecation warning.

**Impact**: Low

| Deprecated                                   | Replacement                          |
|----------------------------------------------|--------------------------------------|
| `.oudsForegroundStyle(_:)`                   | `.foregroundStyle(_:)`               |
| `.oudsForegroundColor(_:)`                   | `.foregroundColor(_:)`               |
| `.oudsBackground(_:)`                        | `.background(_:)`                    |
| `.oudsAccentColor(_:)`                       | `.accentColor(_:)`                   |
| `.oudsShadow(_:)`                            | `.shadow(_:)`                        |
| `.oudsBorder(style:width:radius:color:)`     | `.border(style:width:radius:color:)` |
| `.oudsColoredSurface(_:)`                    | `.coloredSurface(_:)`                |
| `.oudsGridMargin(_:)`                        | `.gridMargin(_:)`                    |
| `.oudsRequestAccessibleFocus(_:)`            | `.requestAccessibleFocus(_:)`        |
| `.oudsRequestAccessibleFocus(_:for:)`        | `.requestAccessibleFocus(_:for:)`    |
| `.oudsHorizontalDivider(dividerColor:)`      | `.horizontal(color:)`                |
| `.oudsVerticalDivider(color:)`               | `.vertical(color:)`                  |

**Before (v1.3.x)**:
```swift
Text("Hello")
    .oudsForegroundColor(theme.colors.contentDefault)
    .oudsBackground(theme.colors.bgPrimary)
    // Etc.

SomeView()
    .oudsBorder(style: theme.borders.styleDefault,
                width: theme.borders.widthThin,
                radius: theme.borders.radiusMedium,
                color: theme.colors.borderDefault)
    .oudsShadow(theme.elevations.emphasized)
    // Etc.
```

**After (v1.4.0)**:
```swift
Text("Hello")
    .foregroundColor(theme.colors.contentDefault)
    .background(theme.colors.bgPrimary)

SomeView()
    .border(style: theme.borders.styleDefault,
            width: theme.borders.widthThin,
            radius: theme.borders.radiusMedium,
            color: theme.colors.borderDefault)
    .shadow(theme.elevations.emphasized)
```

**Required Action**:
- Replace deprecated `ouds`-prefixed calls with their unprefixed counterparts

**Reason for Change**: User feedback indicated the `ouds` prefix on methods was redundant and verbose given that parameter types are strongly typed OUDS tokens which prevent any ambiguity with native SwiftUI overloads.

#### Deprecated `OUDSTabBar` initializer

The `OUDSTabBar(selected:count:content:)` initializer that accepted a plain `Int` for the initially selected tab is now deprecated.
A new `OUDSTabBar(selectedTab:count:content:)` initializer replaces it, accepting a `Binding<Int>` that is updated whenever the user taps a tab — keeping the parent view in sync with the tab bar selection without any extra code.

**Impact**: Low

**Before (v1.3.x)**:
```swift
// The initial tab is fixed at 0; user interactions are not propagated back.
OUDSTabBar(selected: 0, count: 3) {
    SomeView().tabItem { Label("Home", image: "ic_home") }.tag(0)
    OtherView().tabItem { Label("Search", image: "ic_search") }.tag(1)
    LastView().tabItem { Label("Profile", image: "ic_profile") }.tag(2)
}
```

**After (v1.4.0)**:
```swift
// Declare a @State to hold the selected tab index.
@State private var selectedTab = 0

// Pass it as a Binding: the tab bar updates selectedTab when the user taps a tab,
// and programmatically changing selectedTab switches the displayed tab.
OUDSTabBar(selectedTab: $selectedTab, count: 3) {
    SomeView().tabItem { Label("Home", image: "ic_home") }.tag(0)
    OtherView().tabItem { Label("Search", image: "ic_search") }.tag(1)
    LastView().tabItem { Label("Profile", image: "ic_profile") }.tag(2)
}
```

**Required Action**:
- Replace `OUDSTabBar(selected:count:content:)` calls with `OUDSTabBar(selectedTab:count:content:)`
- Declare a `@State private var selectedTab: Int` (or use an existing state/binding) and pass it as `$selectedTab`
- Remove any manual workaround you may have used to track or drive tab selection from outside the component

**Reason for Change**: The original initializer only accepted a one-time initial value (`Int`) with no way to observe or control the selected tab from outside the component.
The new initializer uses a `Binding<Int>` so the selected tab is always in sync with the parent view: user taps update the binding, and external state changes switch the visible tab.

### Compatibility

- **Backward Compatibility**: Yes
- **v1.3.0 Support**:  Until release of next minor version

## v1.2.0 → v1.3.0

### Overview

The design team confirms that any logic related to grids, gutters and spacings are related to the horizontal size class.
Thus existence of `oudsVerticalSizeClass`, used nowhere, is a non-sense; this property has been removed.

### Before You Begin

#### Prerequisites

- Use version 1.2 or older

### Breaking Changes

#### 1. Removal of `oudsVerticalSizeClass`

**Impact**: Low

**Before (v1.x)**:
```swift
@Environment(\.oudsVerticalSizeClass) var sizeClass // Or any other name for property
```

**After (v1.3.0)**:
```swift
// Property removed
```

**Required Action**:
- Remove us of `oudsVerticalSizeClass` environment object

**Reason for Change**: Not used, not relevant, must not be considered even if design side

**Note**: This property comes back with v1.4.0 as some users still used it

#### 2. Rename of OUDSBulletList.UnorderedIcon` to `OUDSBulletList.UnorderedAsset`

**Impact**: Low

**Before (v1.x)**:
```swift
var someIconForBulletList: OUDSBulletList.UnorderedIcon {
    .free(someImage)
}
```

**After (v1.3.0)**:
```swift
var someIconForBulletList: OUDSBulletList.UnorderedAsset {
    .icon(someImage)
}
```

**Required Action**:
- Rename any use of `OUDSBulletList.UnorderedIcon` to `OUDSBulletList.UnorderedAsset`
- Case `.free` must be replaced by `.icon`

**Reason for Change**: "asset" word has a better meaning than "icon", and is aligned with Android OUDS library API

### Compatibility

- **Backward Compatibility**: No
- **v1.2.0 Support**:  Until release of next minor version

## v1.1.0 → v1.2.0

### Overview

The *Orange Business Tools* theme has been renamed by the design team to *Orange Compact*
Thus the theme name is more accurate and does not have ambiguity anymore with Orange Business company.

### Before You Begin

#### Prerequisites

- Use version 1.x

### Breaking Changes

#### 1. Rename of Swift package product

**Impact**: High

**Before (v1.x)**:
```swift
import OUDSThemeOrangeBusinessTools
```

**After (v1.2.0)**:
```swift
import OUDSThemeOrangeCompact
```

**Required Action**:
- If you use individual imports, rename the name of the Swift Package product from `OUDSThemeOrangeCompact` to `OUDSThemeOrangeCompact`

**Reason for Change**: Use more accurate name for the theme

#### 2. Rename of the theme

**Impact**: High

**Before (v1.x)**:
```swift
OrangeBusinessToolsTheme()
```

**After (v1.2.0)**:
```swift
OrangeCompactTheme()
```

**Required Action**:
- If you instanciated `OrangeCompactTheme` object, use instead `OrangeCompactTheme` name

**Reason for Change**: Use more accurate name for the theme

#### 3. Change any use of "OrangeCompact"

**Impact**: High

**Required Action**:
- Wherever you use the name "OrangeBusinessTools" (whatever the case or the style), in documentation, tests or source code, replace instead by "OrangeCompact"

**Reason for Change**: Use more accurate name for the theme

### Compatibility

- **Backward Compatibility**: No
- **v1.1.0 Support**:  Until release of next minor version

## v1.0.0 → v1.1.0

### Overview

Some "multiple" object tokens have been renamed from plural form to singular form.
Component tokens of button for borders have been shortened.

### Before You Begin

#### Prerequisites

- Use version 1.0.0

### Breaking Changes

#### 1. Rename of "multiple" objects

**Impact**: High

**Before (v1.0.0)**:
```swift
// Old namings of objects
MultipleElevationCompositeRawTokens
MultipleColorSemanticTokens
MultipleFontCompositeSemanticTokens
MultipleFontLetterSpacingSemanticTokens
MultipleFontLineHeightSemanticTokens
MultipleFontSizeSemanticTokens
MultipleSizeSemanticTokens
MultipleSpaceSemanticTokens
```

**After (v1.1.0)**:
```swift
// Use new namings without final 's'
MultipleElevationCompositeRawToken
MultipleColorSemanticToken
MultipleFontCompositeSemanticToken
MultipleFontLetterSpacingSemanticToken
MultipleFontLineHeightSemanticToken
MultipleFontSizeSemanticToken
MultipleSizeSemanticToken
MultipleSpaceSemanticToken
```

**Required Action**:
- Step 1: Rename all `MultipleColorSemanticTokens` uses to `MultipleColorSemanticToken`
- Step 2: Rename all `MultipleElevationCompositeRawTokens` uses to `MultipleElevationCompositeRawToken`
- Step 3: Rename all `MultipleFontCompositeSemanticTokens` uses to `MultipleFontCompositeSemanticToken`
- Step 4: Rename all `MultipleFontLetterSpacingSemanticTokens` uses to `MultipleFontLetterSpacingSemanticToken`
- Step 5: Rename all `MultipleFontLineHeightSemanticTokens` uses to `MultipleFontLineHeightSemanticToken`
- Step 6: Rename all `MultipleFontSizeSemanticTokens` uses to `MultipleFontSizeSemanticToken`
- Step 7: Rename all `MultipleSizeSemanticTokens` uses to `MultipleSizeSemanticToken`
- Step 8: Rename all `MultipleSpaceSemanticTokens` uses to `MultipleSpaceSemanticToken`

**Reason for Change**: Bring consistency between objects exposed by the API; plural form is not correct

#### 2. Rename of component tokens of button for border

**Impact**: High
    
**Before (v1.0.0)**:
```swift
// Old namings of objects
buttonBorderRadiusDefault
buttonBorderRadiusRounded
buttonBorderRadiusSocial
buttonBorderWidthDefault 
buttonBorderWidthDefaultInteraction
buttonBorderWidthDefaultInteractionMono
```

**After (v1.1.0)**:
```swift
// Use new namings without 'button' prefix
borderRadiusDefault
borderRadiusRounded
borderRadiusSocial
borderWidthDefault 
borderWidthDefaultInteraction
borderWidthDefaultInteractionMono
```

**Required Action**:
- Step 1: Rename all `buttonBorderRadiusDefault` uses to `borderRadiusDefault`
- Step 2: Rename all `buttonBorderRadiusRounded` uses to `borderRadiusRounded`
- Step 3: Rename all `buttonBorderRadiusSocial` uses to `borderRadiusSocial`
- Step 4: Rename all `buttonBorderWidthDefault` uses to `borderWidthDefault`
- Step 5: Rename all `buttonBorderWidthDefaultInteraction` uses to `buttonBorderWidthDefaultInteraction`
- Step 6: Rename all `buttonBorderWidthDefaultInteractionMono` uses to `borderWidthDefaultInteractionMono`

**Reason for Change**: Tokens names must be shortened and must not repeat the component name

### Compatibility

- **Backward Compatibility**: No
- **v1.0.0 Support**:  Until release of version v1.1.0

### Additional Resources

- [Full Changelog](https://github.com/Orange-OpenSource/ouds-ios/compare/1.0.0...1.1.0)

## Support

If you encounter issues:
- [Open an issue](https://github.com/Orange-OpenSource/ouds-ios/issues)
