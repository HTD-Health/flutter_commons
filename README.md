# HTD Commons

A mono repo of helpful flutter widgets and utils.


## Widgets

### `FadeButton`

1. Add this to your `pubspec.yaml` file.

```yaml
dependencies:
  htdc_fade_button:
    git:
      url: git://github.com/HealthTechDevelopers/flutter_commons.git
      path: widgets/fade_button
```
2. Use
```dart
FadeButton(
  child: MyWidget(),
  onPressed: doSth(),
);
```