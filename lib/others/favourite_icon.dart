import 'package:flutter/material.dart';

class FavouriteIcon extends StatelessWidget {
  const FavouriteIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: InkWell(
        onTap: () {},
        child: const Padding(
          padding: EdgeInsets.only(bottom: 100, left: 40),
          child: Icon(
            Icons.favorite,
            size: 30,
            color: Colors.red,
          ),
        ),
      ),
    );
  }
}
