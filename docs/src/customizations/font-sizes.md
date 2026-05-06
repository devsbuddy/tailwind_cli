# Customizing Font Sizes

Use the `fontSizes` key in the config (`tailwind.config.json`) file to customize Tailwind’s default fontSizes.

::: code-group

```json [tailwind.config.json]
{
  "fontSizes": {
    "base": "16.0",
    "xs": "0.75",
    "sm": "0.875",
    "lg": "1.125",
    "xl": "1.25",
    "xl2": "1.5",
    "xl3": "1.875",
    "xl4": "2.25",
    "xl5": "3",
    "xl6": "3.75",
    "xl7": "4.5",
    "xl8": "6",
    "xl9": "8"
  }
}
```

:::

## Adding new fontSizes

You can add more fontSizes values to the design system by defining in config file.

::: code-group

```json [tailwind.config.json]
{
  "fontSizes": {
    "base": "16.0",
    "xxs": "0.5", // [!code ++]
    "xs": "0.75",
    "sm": "0.875",
    // ... Other Sizes...
    "heading": "2.5", // Creates [16 * 2.5 = 40] size // [!code ++]
    "heading2": "2" // Creates [16 * 2 = 32] size // [!code ++]
  }
}
```

:::

_This will generate more `fontSizes` extensions like textXxs, textHeading, textHeading2 in addition to all of Tailwind’s default font Sizes extensions._

## Overriding the default fontSizes

As every utility you can also customize the default `fontSizes` in the Tailwind Config.
::: code-group

```json [tailwind.config.json]
{
  "fontSizes": {
    "base": "14.0", // Customized from 16 to 14  // [!code warning]
    "xs": "0.75",
    "sm": "0.875",
    "lg": "1.125",
    "xl": "1.25",
    "xl2": "1.35", // Customized from 1.5 to 1.35  // [!code warning]
    "xl3": "1.875",
    "xl4": "2.25",
    "xl5": "3",
    "xl6": "3.75",
    "xl7": "4.5",
    "xl8": "6",
    "xl9": "8"
  }
}
```

:::
