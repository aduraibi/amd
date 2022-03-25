import 'package:flutter/material.dart';
import './screens/login_screen.dart';

Future main() async {
  runApp(AmadApp());
}

class AmadApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginScreen(),
    );
  }
}
