import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() {
    return _HomePageState();
  }
}

class _HomePageState extends State<HomePage> {
  final controller = TextEditingController();
  final list = <String>[];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SBT Lab'),
      ),
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: Image.network(
                'https://st2.depositphotos.com/1400069/5999/i/600/depositphotos_59995765-stock-photo-abstract-galaxy-background.jpg',
                fit: BoxFit.cover,
              ),
            ),
            Container(
              color: Colors.black.withOpacity(0.4),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
            ),
            Container(
              color: Colors.red,
              width: 250.0,
              height: 250.0,
            ),
          ],
        ),
      ),
    );
  }
}
