import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() {
    return _HomePageState();
  }
}

class _HomePageState extends State<HomePage> {
  var counter = 0;

  @override
  Widget build(BuildContext context) {
    final names = ['Diego', 'Jones', 'Alex', 'Rodrigo', 'Robert'];

    return Scaffold(
      appBar: AppBar(
        title: const Text('SBT Lab'),
      ),
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: ListView.builder(
          itemCount: names.length,
          itemBuilder: (context, index) {
            final name = names[index];
            return ListTile(
              title: Text(name),
            );
          },
        ),
      ),
    );
  }
}
