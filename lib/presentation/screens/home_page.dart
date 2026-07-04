import 'package:flutter/material.dart';
import 'package:muscial_instrument/presentation/widgets/header_title.dart';
import 'package:muscial_instrument/presentation/widgets/my_app_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [SizedBox(height: 20), Text('Welcome to the Home Page!')],
        ),
      ),
    );
  }
}
