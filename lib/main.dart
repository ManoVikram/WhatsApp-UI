import 'package:flutter/material.dart';

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "WhatsApp Clone",
      theme: ThemeData(
        primaryColor: Color(0xFF075E54),
        accentColor: Color(0xFF128C7E),
      ),
      home: WhatsApp(),
    );
  }
}

class WhatsApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
