import 'package:flutter/material.dart';

enum ColorSelection { pink, blue, green, orange }

extension ColorSelectionExtension on ColorSelection {
  Color get color {
    switch (this) {
      case ColorSelection.pink:
        return Colors.pink;
      case ColorSelection.blue:
        return Colors.blue;
      case ColorSelection.green:
        return Colors.green;
      case ColorSelection.orange:
        return Colors.orange;
    }
  }
}

class YummyModel extends ChangeNotifier {
  ThemeMode _themeMode = ThemeMode.light;
  ColorSelection _colorSelected = ColorSelection.pink;

  ThemeMode get themeMode => _themeMode;
  ColorSelection get colorSelected => _colorSelected;

  void changeThemeMode(bool useLightMode) {
    _themeMode = useLightMode ? ThemeMode.light : ThemeMode.dark;
    notifyListeners();
  }

  void changeColor(int value) {
    _colorSelected = ColorSelection.values[value];
    notifyListeners();
  }
}
