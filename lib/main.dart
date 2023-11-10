import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kraken_proyect/ui/screens/screens.dart';

void main() => runApp(
      const ProviderScope(child: MyApp()),
    );

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kraken Proyect',
      theme: ThemeData().copyWith(useMaterial3: true),
      debugShowCheckedModeBanner: false,
      home: MainScreen(),
    );
  }
}
