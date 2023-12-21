import 'package:flutter/material.dart';
import 'package:flutter_provider/counter_app/screens/counter_screen.dart';
import 'package:flutter_provider/providers.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(providers: providerList, child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: CounterAppScreen(),
    );
  }
}
