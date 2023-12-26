import 'package:flutter/material.dart';
import 'package:flutter_provider/ecommerce/screens/catalog_screen.dart';
import 'package:flutter_provider/ecommerce/screens/login_screen.dart';
import 'package:flutter_provider/ecommerce/screens/setting_screen.dart';

class NavigationScreen extends StatefulWidget {
  const NavigationScreen({super.key});

  @override
  State<NavigationScreen> createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
  int selectIndex = 0;
  void onTab(int index) {
    setState(() {
      selectIndex = index;
    });
  }

  final List<Widget> pages = [
    const LoginScreen(),
    const MyCatalog(),
    const SettingScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: pages.elementAt(selectIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectIndex,
          onTap: onTab,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.login,
                color: Colors.black,
              ),
              label: 'Login',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.view_agenda,
                color: Colors.black,
              ),
              label: 'View',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.settings,
                color: Colors.black,
              ),
              label: 'Settings',
            ),
          ]),
    );
  }
}
