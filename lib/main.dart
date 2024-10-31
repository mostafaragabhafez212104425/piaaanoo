import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(const PianoApp());
}

class PianoApp extends StatelessWidget {
  const PianoApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Piano App',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home:  HomeScreen(),
    );
  }
}
