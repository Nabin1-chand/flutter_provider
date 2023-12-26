import 'package:flutter/material.dart';
import 'package:flutter_provider/theme_data/provider/dark_theme_provider.dart';
import 'package:provider/provider.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({
    super.key,
  });

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("App Settings"),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          ListTile(
            leading: const Text('Change Setting'),
            trailing:
                Consumer<DarkThemeProvider>(builder: (context, val, child) {
              return Switch(
                onChanged: (value) => val.darkTheme = value,
                value: val.darkTheme,
              );
            }),
          )
        ],
      ),
    );
  }
}
