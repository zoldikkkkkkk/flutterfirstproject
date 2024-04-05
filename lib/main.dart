import 'package:flutter/material.dart';
import 'package:fluutteer_practicework1/presention/screens/homescreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter demo',
      theme: ThemeData(
          scaffoldBackgroundColor: Color(0xffF9F9F9),
          appBarTheme: const AppBarTheme(
            backgroundColor: Color(0xffF9F9F9),
          )),
      home: const HomeScreen(),
    );
  }
}
