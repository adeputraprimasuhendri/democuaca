import 'package:democuaca/screen/cuaca_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Demo Cuaca',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const CuacaScreen(),
    );
  }
}
