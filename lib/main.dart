import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kraken Proyect',
      theme: ThemeData.dark().copyWith(useMaterial3: true),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Kraken Proyect'),
        ),
        body: const Center(
          child: Text('Kraken Proyect'),
        ),
      ),
    );
  }
}
