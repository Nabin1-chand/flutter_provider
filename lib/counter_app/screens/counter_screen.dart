import 'package:flutter/material.dart';
import 'package:flutter_provider/counter_app/provider_counter/counter_provider.dart';
import 'package:provider/provider.dart';

class CounterAppScreen extends StatelessWidget {
  const CounterAppScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          var counter = context.read<Counter>();
          counter.increment();
        },
        child: const Icon(Icons.add),
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 70,
            ),
            const Text("Increment the value"),
            Text(Provider.of<Counter>(context, listen: true).count.toString())

            // Consumer<Counter>(builder: (context, counter, child) {
            //   return Text('${counter.count}');
            // })
          ],
        ),
      ),
    );
  }
}
