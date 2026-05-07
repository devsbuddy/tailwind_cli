# Adding Custom Styles

Maximize Your Development Experience with these Proven Techniques for Customizing Your Styles.

As being inspired by the `TailwindCSS` itself we must add feature where developers can easily customize the design system as per their project's requirement. Tailwind has been designed from the ground up to be extensible and customizable, so that no matter what you’re building you can easily customize the design system of the tailwind.

## Colors

If you want to customize or add your own custom colors to the theme you can add them like this.

Inside your `tailwind.config.json` file

```json
{
  "colors": {
    "primary": {
      "DEFAULT": "#217BAF",
      "100": "#D4E9F5"
    },
    "blue": "#1fb6ff",
    "pink": "#ff49db",
    "orange": "#ff7849",
    "green": "#13ce66",
    "gray-dark": "#273444",
    "gray": "#8492a6",
    "gray-light": "#d3dce6"
    /// ...
  }
}
```

## Spacings

If you want to customize or add your own custom spacing values you can add them like this.

Inside your `tailwind.config.json` file

```json
{
  "spacers": {
    "0": "0",
    "1": "0.25",
    "2": "0.5",
    "3": "0.75",
    "4": "1.0",
    "5": "1.25",
    "6": "1.5",
    "7": "1.75"
    /// ...
  }
}
```

## FontSizes

You can also customize the font sizes or add your own custom sizing.

Inside your `tailwind.config.json` file

```json
{
  "fontSizes": {
    "heading": "34",
    "heading2": "26"
    /// ...
  }
}
```

## Opacity

There is also an option to set the opacity values.

Inside your `tailwind.config.json` file

```json
{
  "opacity": {
    "10": "0.1",
    "15": "0.15",
    "20": "0.2",
    "22": "0.22", // [!code ++]
    "25": "0.25"
    /// ...
  }
}
```
