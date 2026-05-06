# Configuration

A guide to configuring and customizing your Tailwind installation.

Because Tailwind CLI is a tool for building bespoke user interfaces, it has been designed from the ground up with customization in mind.

By default, Tailwind CLI will look for an `tailwind.config.json` file at the root of your project where you can define any customizations.

::: code-group

```json [tailwind.config.json]
{
  "darkMode": true, // @default: false
  "colors": {
    "blue": "#1fb6ff",
    "purple": "#7e5bef",
    "pink": "#ff49db",
    "orange": "#ff7849",
    "green": "#13ce66",
    "yellow": "#ffc82c",
    "gray-dark": "#273444",
    "gray": "#8492a6",
    "gray-light": "#d3dce6"
  },
  "spacers": {
    ///... Stuffs
  },
  "fontSizes": {
    ///... Stuffs
  },
  "opacity": {
    ///... Stuffs
  }
}
```

:::
Every section of the config file is optional, so you only have to specify what you’d like to change. Any missing sections will fall back to Tailwind’s default configuration.

## Generating configuration file

If not already generated the config file you can generate a Tailwind config file for your project using the Tailwind CLI:

```shell
flutter pub run tailwind_cli:init
```
