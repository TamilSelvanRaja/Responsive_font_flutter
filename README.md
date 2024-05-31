# responsive_fonts

The Flutter Text widget dynamically adjusts its size to fit the screen dimensions.

**Show some ❤️ and star the repo to support the project**

### Resources:
- [Pub Package](https://pub.dev/packages/responsive_fonts)
- [GitHub Repository](https://github.com/TamilSelvanRaja/Responsive_font_flutter)


## Usage

`responsive_fonts` behaves exactly like a `Text`. The only difference is that it resizes text to fit the screen dimensions.

```dart
 ResponsiveFonts(text: "Hello World", size: 20),
 ResponsiveFonts(text: "Hello World", size: 25, color: Colors.red),
 ResponsiveFonts(text: "Hello World", size: 30, decoration: TextDecoration.underline, color: Colors.blue),
 ResponsiveFonts(text: "Hello World", size: 35, color: Colors.blue, fontWeight: FontWeight.bold),
```
**Note:** `ResponsiveFonts` needs bounded screen dimensions to resize the text.



## Parameters

| Parameter | Description |
|---|---|
| `key`* | Controls how one widget replaces another widget in the tree. |
| `text`* | Sets the key for the resulting `Text` widget |
| `size`* | The size to use for this font size |
| `color` | If non-null, the color to use for this text style |
| `fontWeight` | The fontweight of the text. This decides how text render. |
| `textDirection` | The directionality of the text. This decides how `textAlign` values like `TextAlign.start` and `TextAlign.end` are interpreted. |

Parameters marked with \* behave exactly the same as in `Text`
