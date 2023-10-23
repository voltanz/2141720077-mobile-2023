import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    Widget titleSection = Container(
      padding: const EdgeInsets.all(24),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(Icons.account_circle, size: 100, color: Colors.redAccent),
          Expanded(
              child: Column(
            children: [
              Text(
                "Bima Tristan",
                style: TextStyle(fontSize: 24, color: Colors.white),
              ),
              Text("2141720077",
                  style: TextStyle(fontSize: 16, color: Colors.white))
            ],
          ))
        ],
      ),
    );

    Widget contactSection = const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text("Malang", style: TextStyle(fontSize: 16, color: Colors.yellowAccent)),
        Text("08123456789",
            style: TextStyle(fontSize: 16, color: Colors.yellowAccent))
      ],
    );

    Widget iconSection = Container(
      padding: const EdgeInsets.all(16),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Icon(Icons.sports_soccer, color: Colors.lime),
          Icon(Icons.audiotrack, color: Colors.green),
          Icon(Icons.phone_android, color: Colors.cyan),
          Icon(Icons.sports_esports, color: Colors.pink),
        ],
      ),
    );
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: ListView(children: [titleSection, contactSection, iconSection]),
    );
  }
}