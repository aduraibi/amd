import 'package:amd/screens/welcome_screen.dart';
import 'package:flutter/material.dart';

Future main() async {
  runApp(AmadApp());

}

class AmadApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WelcomeScreen(),

    );
  }
}