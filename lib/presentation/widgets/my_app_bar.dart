import 'package:flutter/material.dart';
import 'package:muscial_instrument/core/theme/app_colors.dart';
import 'package:muscial_instrument/presentation/widgets/header_title.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MyAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.scaffoldBackground,
      flexibleSpace: SafeArea(
        child: Stack(
          children: [
            //header title
            Center(child: HeaderTitle()),
            //color mode switch
            Align(
              alignment: Alignment.topRight,
              child: IconButton(
                color: AppColors.primary,
                onPressed: () {
                  {}
                },
                icon: Icon(Icons.dark_mode_outlined),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
