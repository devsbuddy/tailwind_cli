# Customizing Opacity

Use the `opacity` key in the config (`tailwind.config.json`) file to customize Tailwind’s default opacity.

::: code-group

```json [tailwind.config.json]
{
  "opacity": {
    "10": "0.1",
    "15": "0.15",
    "20": "0.2",
    "25": "0.25",
    "30": "0.3",
    "35": "0.35",
    "40": "0.4",
    "45": "0.45",
    "50": "0.5",
    "55": "0.55"
  }
}
```

:::

## Adding new opacity

You can add more opacity values to the design system by defining in config file.

::: code-group

```json [tailwind.config.json]
{
  "opacity": {
    "10": "0.1",
    "12": "0.12", // [!code ++]
    "15": "0.15",
    "20": "0.2",
    "23": "0.23", // [!code ++]
    "25": "0.25",
    "30": "0.3",
    "35": "0.35",
    "40": "0.4",
    "45": "0.45",
    "50": "0.5",
    "55": "0.55"
  }
}
```

:::

_This will generate more opacity extensions like o12, o23 in addition to all of Tailwind’s default opacity extensions._

## Overriding the default opacity

Well there is no need to modify default opacity but if you want to you definitely can.

::: code-group

```json [tailwind.config.json]
{
  "opacity": {
    "10": "0.11", // [!code warning]
    "15": "0.15",
    "20": "0.21" // [!code warning]
  }
}
```

:::
