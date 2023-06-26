import 'package:flutter/material.dart';
import 'package:language_app/screens/HomePage.dart';
import 'package:language_app/screens/welcomePage.dart';

void main() {
  runApp(TukoApp());
}

class TukoApp extends StatefulWidget {
  const TukoApp({super.key});

  @override
  State<TukoApp> createState() => _TukoAppState();
}

class _TukoAppState extends State<TukoApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WelcomePage(),
    );
  }
}
