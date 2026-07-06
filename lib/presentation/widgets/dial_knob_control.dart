import 'package:flutter/material.dart';
import 'package:flutter_dial_knob/flutter_dial_knob.dart';
import 'package:muscial_instrument/core/theme/app_colors.dart';

class DialKnobControl extends StatelessWidget {
  const DialKnobControl({super.key});

  @override
  Widget build(BuildContext context) {
    return DialKnob(
      value: 0.5,
      onChanged: (newValue) {
        //todo:  Handle volume change
      },
      min: 0,
      max: 1,
      size: 90,
      trackColor: const Color.fromARGB(88, 158, 158, 158),
      levelColorStart: const Color.fromARGB(255, 137, 100, 39),
      levelColorEnd: AppColors.primary,
      knobColor: AppColors.knob,

      indicatorColor: AppColors.primary,
      dragDirection: DragDirection.horizontal,
    );
  }
}
