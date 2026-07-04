import 'package:flutter/material.dart';
import 'package:muscial_instrument/core/theme/app_colors.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MyAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.scaffoldBackground,

      actions: [
        IconButton(
          color: AppColors.primary,
          icon: Icon(Icons.dark_mode_outlined),
          onPressed: () {
            //handle dark mode toggle
          },
        ),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
