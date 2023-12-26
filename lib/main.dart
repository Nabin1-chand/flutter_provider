import 'package:flutter/material.dart';
import 'package:flutter_provider/menu_screen/navigation_screen.dart';
import 'package:flutter_provider/providers.dart';
import 'package:flutter_provider/theme_data/custom_dark_theme_mode.dart';
import 'package:flutter_provider/theme_data/provider/dark_theme_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(providers: providerList, child: const MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  DarkThemeProvider themeChangeProvider = DarkThemeProvider();
  @override
  void initState() {
    super.initState();
    // getCurrentAppTheme();
  }

  // void getCurrentAppTheme() async {
  //   themeChangeProvider.darkTheme =
  //       await themeChangeProvider.darkThemePreference.getTheme();
  // }

  @override
  Widget build(BuildContext context) {
    return Consumer<DarkThemeProvider>(builder: (context, value, child) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: Styles.themeData(value.darkTheme, context),
        home: const NavigationScreen(),
      );
    });
  }
}
