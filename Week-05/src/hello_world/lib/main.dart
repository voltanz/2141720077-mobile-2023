import 'package:flutter/material.dart';
import 'package:hello_world/basic_widgets/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Bima Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 58, 183, 143)),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Ahmad Bima Tristan Ibrahim'),
    );
  }
}