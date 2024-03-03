import 'package:flutter/material.dart';
import 'screens/restaurant_main.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Restaurants',
      home: MyClassWidget(),
    );
  }
}
