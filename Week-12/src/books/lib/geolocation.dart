import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class LocationScreen extends StatefulWidget {
  const LocationScreen({super.key});

  @override
  State<LocationScreen> createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {
  String myPosition = '';
  Future<Position>? position;
  @override
  void initState() {
    super.initState();
    position = getPosition();
    // getPosition().then((Position myPos) {
    //   myPosition =
    //       'Latitude: ${myPos.latitude.toString()}\nLongitude: ${myPos.longitude.toString()}';
    //   setState(() {
    //     myPosition = myPosition;
    //   });
    // });
  }

  // Praktikum 6: Menggunakan Future dengan StatefulWidget
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Current Location Tristan')),
        body: Center(
          child: FutureBuilder(
            future: position,
            builder: (BuildContext context, AsyncSnapshot<Position> snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const CircularProgressIndicator();
              } else if (snapshot.connectionState == ConnectionState.done) {
                if (snapshot.hasError) {
                  return const Text('Something terrible happened');
                }
                return Text(snapshot.data.toString());
              } else {
                return const Text('');
              }
            },
          ),
        ));
  }

  Future<Position> getPosition() async {
    await Geolocator.requestPermission();
    await Future.delayed(const Duration(seconds: 3));
    Position? position = await Geolocator.getCurrentPosition();
    return position;
  }
}