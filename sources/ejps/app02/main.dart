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
      title: 'StatefulWidget',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Contador(),
    );
  }
}

class Contador extends StatefulWidget {
  const Contador({super.key});
  @override
  _ContadorState createState() => _ContadorState();
}

class _ContadorState extends State<Contador> {
  int _contador = 0; // Estado interno

  void _incrementar() {
    setState(() {
      _contador++; // Modifica el estado y reconstruye la UI
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Contador: $_contador", style: const TextStyle(fontSize: 24)),
        ElevatedButton(onPressed: _incrementar, child: Text("Incrementar")),
      ],
    );
  }
}
