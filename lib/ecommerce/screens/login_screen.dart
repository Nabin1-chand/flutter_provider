import 'package:flutter/material.dart';
import 'package:flutter_provider/ecommerce/screens/catalog_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 100),
            child: Column(
              children: [
                Text(
                  'Welcome',
                  style: Theme.of(context).textTheme.displayLarge,
                ),
                const SizedBox(
                  height: 100,
                ),
                TextFormField(
                  decoration: const InputDecoration(hintText: 'User Name'),
                ),
                const SizedBox(
                  height: 30,
                ),
                TextFormField(
                  decoration: const InputDecoration(hintText: 'Password'),
                  obscureText: true,
                ),
                const SizedBox(
                  height: 40,
                ),
                ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (_) => const MyCatalog()));
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.yellowAccent),
                    child: const Text('Login'))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
