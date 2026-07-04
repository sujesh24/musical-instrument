import 'package:flutter/material.dart';
import 'package:muscial_instrument/core/theme/light_theme.dart';
import 'package:muscial_instrument/presentation/screens/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      theme: lightTheme,
      home: const HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
