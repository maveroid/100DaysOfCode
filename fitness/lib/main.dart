import 'package:fitness/ui/profile.dart';
import 'package:flutter/material.dart';

import 'ui/login.dart';
import 'ui/register.dart';
import 'ui/splash.dart';

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
      routes: {
        QueryPopup.route: (context) => QueryPopup(),
        Login.route: (context) => Login(),
        Register.route: (context) => Register(),
        CreateProfile.route: (context) => CreateProfile(),
      },
      home: Splash(),
    );
  }
}
