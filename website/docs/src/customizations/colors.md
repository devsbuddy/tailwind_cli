# Customizing Colors

Tailwind includes an expertly-crafted default color palette out-of-the-box that is a great starting point if you don’t have your own specific branding in mind.

<ColorsTable />

But when you do need to customize your palette, you can configure your colors under the colors key in the theme section of your `tailwind.config.json` file:

```json
{
  "colors": {
    //... Configure your color palette here
  }
}
```

## Using custom colors

Currently it doesn't allow you to fully replace the color palette but you can add your custom colors as additional colors.

```json
{
  "colors": {
    "midnight": "#121063",
    "metal": "#565584",
    "tahiti": "#3ab7bf"
  }
}
```

Now you will have these colors available in all places.

This will generate these new colors inside `TwColors` class and also add all the extensions for each variant.

### Usage of new colors

Use from the `TwColors` class.

```dart
Text(
    "I will be in 'metal' color",
    style: TextStyle(
        color: TwColors.metal, // [!code focus]
        fontSize: 16,
    ),
),
```

Or use as extension for the `foreground` and `background` colors.

```dart
/// Foreground Color
Text(
    "I will be in 'metal' color"
)
.isText
.metal  // Magic extension // [!code focus]
.render(),

/// Background Color
Container()
.isContainer
.square(256)
.metal // Magic extension  // [!code focus]
.render(),
```

## Overrite system colors

```json
{
  "colors": {
    "blueGray": {
      "DEFAULT": "0xFF64748B", // [!code --]
      "DEFAULT": "0xFF7a95a0" // Flutter color int // [!code ++]
      // -- OR -- //
      "DEFAULT": "#7a95a0" // Hex Color // [!code ++]
    }
  }
}
```

_In the above cofiguration we replaced the `blueGray` color's default color to new color now wherever you use `blueGray` color it will render new color._

::: tip
By just adding colors into `tailwind.config.json` file doesn't give you access to your newly added colors. To use these colors you will need to re-build the tailwind styles as follow:

```shell
flutter pub run tailwind_cli:build
```

:::

<script setup>
import ColorsTable from '../components/ColorsTable.vue'
</script>
