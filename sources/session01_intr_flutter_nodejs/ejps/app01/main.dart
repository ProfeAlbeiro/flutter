import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('MyText Example')),
        body: const Center(
          child: MiText(text: "Hello World"), // Here the value is passed
        ),
      ),
    );
  }
}

class MiText extends StatelessWidget {
  final String text; // Property

  // Constructor
  const MiText({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
    );
  }
}
