# Dark Mode

Using Tailwind styless to style your site in dark mode.

Step into the Dark Side of Design with a Sleek and Stylish Dark Mode Apps - Keep Up with the Trend as Operating Systems Embrace Dark Mode as a Key Feature.

To make this as easy as possible, Tailwind includes a `onDark` variant that lets you style your site differently when dark mode is enabled:

::: tip
You may be having issues while using `onDark<Color>` method and extensions for color. It won't update when you change the theme of the device or app you will need to add `TwAppBuilder` in order to refresh the UI when theme changes.

[Learn More About "**_TwAppBuilder_**"](../colors/dark-theme#using-twappbuilder)
:::

### For backgrounds

```dart
Container()
.isContainer
.white // On default mode // [!code focus]
.onDarkCoolGray700 // When app is in dark theme mode // [!code focus]
.render(),
```

### For gradients

```dart
Container()
.isContainer
.gradientToBr
.fromWhite // On default mode // [!code focus]
.toCoolGray200 // On default mode // [!code focus]
.onDarkFromCoolGray700 // When app is in dark theme mode // [!code focus]
.onDarkToCoolGray900 // When app is in dark theme mode // [!code focus]
.render(),
```

### For foregrounds

```dart
TwText("Dark mode is better for eyes.")
.coolGray700 // On default mode // [!code focus]
.onDarkWhite // When app is in dark theme mode // [!code focus]
.render(),
```

### For decoration

```dart
Container()
.isContainer
.border
.borderWhite // On default mode // [!code focus]
.onDarkBorderCoolGray700 // When app is in dark theme mode // [!code focus]
.render(),
```

### Together

```dart
Container(
    child: TwText("Dark mode is better for eyes.")
        .coolGray700 // On default mode // [!code focus]
        .onDarkWhite // When app is in dark theme mode // [!code focus]
        .render(),
)
.isContainer
.p4
.rounded
.white // On default mode // [!code focus]
.onDarkCoolGray700 // When app is in dark theme mode // [!code focus]
.render(),
```

```dart
Container(
    child: TwText("Dark mode is better for eyes.")
        .coolGray700 // On default mode // [!code focus]
        .onDarkWhite // When app is in dark theme mode // [!code focus]
        .render(),
)
.isContainer
.p4
.rounded
.gradientToBr
.fromWhite // On default mode // [!code focus]
.toCoolGray200 // On default mode // [!code focus]
.onDarkFromCoolGray700 // When app is in dark theme mode // [!code focus]
.onDarkToCoolGray900 // When app is in dark theme mode // [!code focus]
.render(),
```

## Toggling dark mode

By default the dark variant for colors is enabled, If you want you can disable it from `tailwind.config.json` file.

::: warning
If you already built Tailwind Styles with dark mode enabled and used these dark styeles in your app and now you disabled the darkMode and re-built the Tailwind Styles will lead your app to crash as if you build Tailwind Styles after disabling the darkMode it will not generate code related to darkMode.
:::

```json
{
  "darkMode": false // Default: true // [!code ++]
}
```
