import 'package:flutter/material.dart';
import 'package:muscial_instrument/core/theme/app_colors.dart';

class ControlPannel extends StatelessWidget {
  const ControlPannel({super.key});

  @override
  Widget build(BuildContext context) {
    //card desgin
    return Container(
      width: double.infinity,
      height: 250,
      margin: EdgeInsets.all(16),
      padding: EdgeInsets.all(16),

      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        gradient: LinearGradient(
          colors: [AppColors.secondaryCard, AppColors.primaryCard],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),

      child: Column(
        children: [
          //power button
          Row(
            children: [
              Material(
                shape: CircleBorder(),
                color: Color(0xFF7a431b),
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.power_settings_new, color: Colors.white),
                ),
              ),
              SizedBox(width: 10),
              Column(
                spacing: 2,
                children: [
                  Text('Power', style: TextStyle(color: Colors.white)),
                  Text('On', style: TextStyle(color: Colors.greenAccent)),
                ],
              ),
            ],
          ),
          Divider(
            color: const Color.fromARGB(131, 158, 158, 158),
            thickness: 1,
            height: 20,
          ),
        ],
      ),
    );
  }
}
