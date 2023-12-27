import 'package:flutter/material.dart';
import 'package:flutter_provider/theme_data/dark_theme.dart';

class DarkThemeProvider with ChangeNotifier {
  DarkThemePreference darkThemePreference = DarkThemePreference();
  bool _darkTheme = false;

  bool get darkTheme => _darkTheme;

  init() async {
    _darkTheme = await darkThemePreference.getTheme();
    notifyListeners();
  }

  set darkTheme(bool value) {
    _darkTheme = value;
    darkThemePreference.setDarkTheme(value);
    notifyListeners();
  }
}
