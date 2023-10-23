import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ahmad Bima Tristan Ibrahim, 2141720077',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Ahmad Bima Tristan Ibrahim, 2141720077'),
        ),
        body: ListView(children: [
          MyWidget(),
        ]),
      ),
    );
  }
}

// //Image WIdget
class MyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.network('https://raw.githubusercontent.com/flutter/website/main/examples/layout/sizing/images/pic3.jpg'),
      ],
    );
  }
}