import 'package:burgerking_mobileapp/design/colors.dart';
import 'package:burgerking_mobileapp/others/daytimeicon.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyProfile extends StatelessWidget {
  const MyProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kbackground_color,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              child: Stack(children: [
                DayTimeImage(),
              ]),
            )
          ],
        ),
      ),
    );
  }
}
