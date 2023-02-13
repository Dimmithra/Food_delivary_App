import 'package:flutter/material.dart';

class MenuOptionButton extends StatelessWidget {
  const MenuOptionButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: PopupMenuButton(
        onSelected: (value) {},
        itemBuilder: (context) => [
          const PopupMenuItem(
            child: Text('option -1'),
            value: 1,
          ),
          const PopupMenuItem(
            child: Text('option -2'),
            value: 2,
          )
        ],
      ),
    );
  }
}
