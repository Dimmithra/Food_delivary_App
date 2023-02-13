import 'package:flutter/material.dart';
import 'package:burgerking_mobileapp/design/mainFormDesign.dart';

class UserName extends StatelessWidget {
  const UserName({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Center(
        child: Text(
          'Hi Kasun',
          textAlign: TextAlign.center,
          style: khomepage_user,
        ),
      ),
    );
  }
}
