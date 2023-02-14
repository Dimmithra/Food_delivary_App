import 'package:burgerking_mobileapp/design/colors.dart';
import 'package:burgerking_mobileapp/design/mainFormDesign.dart';
import 'package:burgerking_mobileapp/others/bottomnavbar.dart';
import 'package:burgerking_mobileapp/others/daytimeicon.dart';
import 'package:flutter/material.dart';

class Favourite extends StatelessWidget {
  const Favourite({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kbackground_color,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              child: Stack(
                children: const [
                  DayTimeImage(),
                  Center(
                    child: Padding(
                      padding: EdgeInsets.only(top: 75),
                      child: Text(
                        'Favourite',
                        style: kfavourite_header_text,
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
