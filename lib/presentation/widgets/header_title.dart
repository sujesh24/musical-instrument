import 'package:flutter/material.dart';
import 'package:muscial_instrument/core/theme/app_colors.dart';
import 'package:muscial_instrument/core/theme/app_textstyle.dart';

class HeaderTitle extends StatelessWidget {
  const HeaderTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //main headings
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.music_note_rounded, color: AppColors.primary),
            SizedBox(width: 8),
            Text('SHRUTHI BOX', style: AppTextstyle.headerTitle),
            SizedBox(width: 8),
            Icon(Icons.music_note_rounded, color: AppColors.primary),
          ],
        ),

        //sub title
        Text('Tambura Drone', style: AppTextstyle.headerSubtitle),
      ],
    );
  }
}
