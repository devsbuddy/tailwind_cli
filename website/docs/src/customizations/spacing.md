# Customizing Spacing

Customizing the default spacing and sizing scale for your project.

Use the `spacers` key in the config (`tailwind.config.json`) file to customize Tailwind’s default spacers/sizing scale.

::: code-group

```json [tailwind.config.json]
/// Keep in mind:
/// These values are using `base` or `DEFAULT` value of the spacer
/// which is "16" and multiplying these values to generate them
{
  "spacers": {
    "DEFAULT": "16",
    "0": "0",
    "1": "0.25", // will generate [16 * 0.25 = 4]
    "2": "0.5",
    "3": "0.75",
    "4": "1.0",
    "5": "1.25",
    "6": "1.5",
    "7": "1.75"
  }
}
```

:::

By default the spacers scale is inherited by the padding, margin extenstions.

## Adding new scale

Again configuration in this package is not replaceable but you can add your custom values. To do so:

::: code-group

```json [tailwind.config.json]
{
  "spacers": {
    "13": "3.25", // [!code ++]
    "15": "3.75", // [!code ++]
    "68": "17" // [!code ++]
    "72": "18", // [!code ++]
    "128": "32", // [!code ++]
    "144": "36", // [!code ++]
  }
}
```

:::

_This will generate spaces and extensions like `p13`, `m15`, and `TwSizes.spacer128` in addition to all of Tailwind’s default spacer/sizing utilities._

## Overriding the default spacing scale

As mentioned above this configuration is not replaceable but can be override like this.

::: code-group

```json [tailwind.config.json]
{
  "spacers": {
    "DEFAULT": "14.0", // Override from 16 to 14 // [!code warning]
    "1": "0.25",
    "2": "0.5",
    "3": "0.75",
    "4": "1.0",
    "5": "1.25"
  }
}
```

:::
