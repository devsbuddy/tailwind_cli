![TailwindCLI](./screenshots/banner.png)

# Tailwind CLI v0.7.7

It generates a tailwind like stylings for flutter application

**Attention:**

```txt
Note that this project is in early stage and constantly updating,It may include breaking changes in future updates until it becomes stable. So for now you can use it for learning purpose and some hobby projects, avoid using it in production apps for now.
```

## Inspiration

- [Tailwind CSS](https://tailwindcss.com/)
- [VelocityX](https://velocityx.dev)

## Some Highlights

This will provide basic styling just like Tailwind provides in which it is providing
you `Colors`, `Gradient Colors`, Sizing `(Padding, Margins)`,
`Roundness`, `Shadows`, `Font Sizes`, `Font styling` Etc.

## Want to dive in?

Know more about the package by visiting this
[Official Documentation](https://tailwind-cli.devsbuddy.com/)

## Future Plans

| Feature               | Status | Addition/Changes | From Version |
| --------------------- | :----: | :--------------: | :----------: |
| `TwGrid` Widget       |   ⏳   |        ➕        | In Progress  |
| `TwPositioned` Widget |   ⏳   |        ➕        | In Progress  |

---

## Support me

If you found this package helpful, you can just simply click on the following button below and donate some amount to help me work on these projects frequently.

<a href="https://www.buymeacoffee.com/iamspydey" target="_blank">
    <img src="https://www.buymeacoffee.com/assets/img/guidelines/download-assets-2.svg" style="height: 45px; border-radius: 12px"/>
</a>

---

## Getting Started

Check our Official Documentation for instructions on how to use this package in your Flutter apps.

Go to: **[Official Documentation](https://tailwind-cli.devsbuddy.com)**

## Features

As every Flutter developer knows that each Flutter application requires a lot of code to be written to achieve the best UI. I saw this issue and searched for a way that can
help us reduce the number of lines of code but get the same result as expected. I was aware of the UI libraries for web development in which one of the best is `tailwindcss`
but it is only available for `HTML` and `CSS` which is really awesome and provides a great way to write clean and effective code for your application's UI. I searched for the
same which can be used in Flutter but found nothing which is similar to `tailwindcss`. I know there is one package called `VelocityX` which does the same thing but there are some major differences between `TailwindCLI` and `VelocityX`. [Read more...](#what-makes-tailwindcli-better-choice-for-styling)

So I thought why I can't make this feature with mainly focusing on the UI in our flutter projects? For this, I created this project and thankfully it worked.

### What makes TailwindCLI better choice for Styling

The main porpose of this package is to provide you a better experience while building your flutter apps and also allow you to customize the default styling that this package provides, so you can easily create your own design system according to your app's need.
And as i mentioned above about the `VelocityX` package if it was there then why we needed a new package you may ask? So let me clear your concern. As you can check that `VelocityX` project is not only focusing on the UI styling they are also providing some other features like: `State Management`, `Routing` etc. And most of the people wont use all the features from this package as they can use `Block` or `Provider` or any other library for `State Management` and `GetX` for Routing. And also `TailwindCLI` is providing customization option which `VelocityX` don't have. I am not saying that `VelocityX` is not a good solution it is indeed a great library that i used a long time ago but it was lacking some features that lead me to create my own library.

### Highlights

| Performance      | Writing code                                         |
| ---------------- | ---------------------------------------------------- |
| 100% performance | 2x your code writing speed as it reduces code length |
| No heavy library | Write less produce more                              |
| Lightweight      | Increase your productivity by 200%                   |

### Widgets

- This project generates some widgets that can be used with tailwind-like styles.
- You can also use other native widgets which can be converted to Tailwind Widgets and inherit the tailwind styles.
- Few example widgets:
  - `TwButton` to create a button.
  - `TwColumn` is a wrapper around a column widget.
  - `TwContainer` Flutter container widget with the goodness of tailwind styles.
  - `TwPadding` Now adding padding is so simple.
  - `TwRow` Create rows with ease.
  - `TwStack` Manage stack widget with extension methods.
  - `TwText` now working with text widgets is so simple with `TailwindCLI`.
  - [See more](https://docs.devsbuddy.com/tailwind-cli)

### Methods

There are several methods that can be used to build tailwind-like styles for any widget found in the flutter.

- **Paddings**: Adding padding is not an easy task for the Flutter projects as it requires a lot of code to be written for simple padding.
  - But with this library, you can add padding with just a few characters.
- **Margins**: Same applies to the margins.
- **Text Colors**: We have a great palette of colors that can be used for any text widget with few characters of code.
  - For example `Text("Flutter is awesome").isText.red500.render()`.
  - See that we only need to call the color name to set the color for the text widget.
- **Background Colors**: Same color palette can be used for a background color for any widget with few code characters.
  - For example `Container(height: 500, width: 500).isContainer.red500.render()`.
  - See that we only need to call the color name to set the background color for the container widget.
- [See more](https://tailwind-cli.devsbuddy.com)

## Detailed documentation

You can check the official documentation by visiting this URL: [Visit Official Documentation](https://tailwind-cli.devsbuddy.com)

**_Note: This documentation is in the initial stage which will be fully available soon._**

## Repo Activity

![TailwindCLI Activity](https://repobeats.axiom.co/api/embed/a6ec0796ed5690605c959b6033c533173a351ff3.svg "Repobeats analytics image")

## Contribution

Your contribution is always welcome and will be appreciated.

Follow this guideline to contribute:
[Contribution Guidelines](/CONTRIBUTION.md)
