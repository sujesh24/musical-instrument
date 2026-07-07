import 'package:flutter/material.dart';
import 'package:muscial_instrument/core/theme/app_colors.dart';
import 'package:muscial_instrument/presentation/widgets/dial_knob_control.dart';

class ControlPannel extends StatelessWidget {
  const ControlPannel({super.key});

  @override
  Widget build(BuildContext context) {
    //card desgin
    return Column(
      children: [
        Container(
          width: double.infinity,
          height: 310,
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //*power button
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
                  Spacer(),
                  //*Mode button
                  MaterialButton(
                    height: 50,

                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    color: AppColors.knob,
                    onPressed: () {},
                    child: Text('Mode', style: TextStyle(color: Colors.white)),
                  ),
                ],
              ),
              Divider(
                color: const Color.fromARGB(131, 158, 158, 158),
                thickness: 1,
                height: 20,
              ),

              //*control pannel
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //!knob volume
                  Column(
                    children: [
                      Text('Volume', style: TextStyle(color: Colors.white)),
                      SizedBox(height: 25),

                      DialKnobControl(),
                    ],
                  ),

                  // SizedBox(width: 20),
                  //!pitch control
                  Expanded(
                    child: Column(
                      children: [
                        Text("Pitch", style: TextStyle(color: Colors.white)),
                        SizedBox(height: 10),

                        //pitch control design
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: AppColors.knob,
                          ),
                          width: 110,
                          height: 100,
                          //*Pitch control
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.chevron_left,
                                  color: AppColors.primary,
                                ),
                              ),
                              Text(
                                'C',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                ),
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.chevron_right,
                                  color: AppColors.primary,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),

                  //!knob Tone
                  Column(
                    children: [
                      Text('Tone', style: TextStyle(color: Colors.white)),
                      SizedBox(height: 25),

                      DialKnobControl(),
                    ],
                  ),
                ],
              ),
              Divider(
                color: const Color.fromARGB(131, 158, 158, 158),
                thickness: 1,
                height: 20,
              ),
              //! Drone
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text('Drone', style: TextStyle(color: Colors.white)),
                  //PA
                  MaterialButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    color: AppColors.knob,
                    onPressed: () {},
                    child: Text('PA', style: TextStyle(color: Colors.white)),
                  ),
                  //MA
                  MaterialButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    color: AppColors.knob,
                    onPressed: () {},
                    child: Text('MA', style: TextStyle(color: Colors.white)),
                  ),
                  //NI
                  MaterialButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    color: AppColors.knob,
                    onPressed: () {},
                    child: Text('NI', style: TextStyle(color: Colors.white)),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
