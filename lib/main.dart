
import 'package:flutter/material.dart';
import 'first.dart';
import 'second.dart';





void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  _MainState createState() => _MainState();
}

class _MainState extends State<MyApp> {
  int currentIndex = 0;
  final screens = [
    first(),
    second(),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
    );
  }
}
