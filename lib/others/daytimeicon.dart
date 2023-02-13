import 'package:flutter/material.dart';

class DayTimeImage extends StatelessWidget {
  const DayTimeImage({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Image(
        image: AssetImage(
          'assets/images/appbarbacground.png',
        ),
      ),
    );
  }
}
