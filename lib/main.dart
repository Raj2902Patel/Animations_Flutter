import 'package:flutter/material.dart';
import 'package:implicit_animation/pages/implicit_animation.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ImplicitAnimationPage(),
    );
  }
}
