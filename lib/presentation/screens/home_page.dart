import 'dart:math';

import 'package:flutter/material.dart';
import 'package:muscial_instrument/core/theme/app_colors.dart';
import 'package:muscial_instrument/presentation/widgets/control_pannel.dart';
import 'package:muscial_instrument/presentation/widgets/current_settings.dart';
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
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,

          children: [
            SizedBox(height: 10),
            //*image
            Align(
              alignment: Alignment.center,
              child: Image.asset('assets/images/tanpura.png', height: 250),
            ),

            //*Controls
            ControlPannel(),
            SizedBox(height: 1),
            //*Current Settings
            CurrentSettings(),
            //*save and mode
            SizedBox(height: 5),

            //*Mode
          ],
        ),
      ),
    );
  }
}
