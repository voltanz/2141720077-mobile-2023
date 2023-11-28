import 'package:flutter/material.dart';
import 'stream.dart';
import 'dart:async';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Stream Bima',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const StreamHomePage(),
    );
  }
}

class StreamHomePage extends StatefulWidget {
  const StreamHomePage({super.key});

  @override
  State<StreamHomePage> createState() => _StreamHomePageState();
}

class _StreamHomePageState extends State<StreamHomePage> {

  int lastNumber = 0;
    late StreamController numberStreamController;
    late NumberStream numberStream;
    late StreamTransformer transformer;
    late StreamSubscription subscription;
    late StreamSubscription subscription2;
    String values = '';
  
  Color bgColor = Colors.blueGrey;
  late ColorStream colorStream;

  void changeColor() async {
    colorStream.getColors().listen((eventColor) {
      setState(() {
        bgColor = eventColor;
      });
    });
  }

  @override
  void initState() {
    super.initState();
    numberStream = NumberStream();
    numberStreamController = numberStream.controller;
    Stream stream = numberStreamController.stream;
    subscription = stream.listen((event) {
      setState(() {
        // lastNumber = event;
        values += '$event - ';
      });
    });
    super.initState();

    subscription2 = stream.listen((event) {
      setState(() {
        // lastNumber = event;
        values += '$event - ';
      });
    });
    subscription.onDone(() {
      print('OnDone was called');
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text ('Stream Bima'),
      ),
      body: SizedBox(
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(lastNumber.toString()),
                  ElevatedButton(
                    onPressed: () => addRandomNumber(), 
                    child: Text('New Random Number'),
                    ),
                  ElevatedButton(
                    onPressed: () => stopStream(),
                    child: const Text('Stop Subscription'),
                  )
                ],
              ),
            ),
          );
    
  }

  @override
  void dispose() {
    numberStreamController.close();
    subscription.cancel();
    super.dispose();
  }

  void addRandomNumber() {
    Random random = Random();
    int myNum = random.nextInt(10);
    if (!numberStreamController.isClosed) {
      numberStream.addNumberToSink(myNum);
    } else {
      setState(() {
        lastNumber = -1;
      });
    }
  }

  void stopStream() {
    numberStreamController.close();
  }

}
