import 'package:flutter/material.dart';
import 'package:flutter_2022/controllers/home_controller.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var controller = HomeController.of(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('SBT Lab'),
      ),
      body: Center(
        child: Text(
          'Contador: ${controller.value}',
          textDirection: TextDirection.ltr,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () => controller.increment(),
      ),
    );
  }
}
