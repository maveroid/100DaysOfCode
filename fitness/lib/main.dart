import 'package:fitness/ui/splash.dart';
import 'package:flutter/material.dart';

void main() => runApp(FitnessApp());

class FitnessApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Fitness App',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: Splash(),
    );
  }
}
