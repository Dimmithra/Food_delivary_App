import 'dart:math';

import 'package:burgerking_mobileapp/Pages/favourite.dart';
import 'package:burgerking_mobileapp/Pages/homepage.dart';
import 'package:burgerking_mobileapp/Pages/myprofile.dart';
import 'package:burgerking_mobileapp/design/colors.dart';
import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  @override
  void initState() {
    super.initState();
  }

  static const List<Widget> _widgetitems = <Widget>[
    Favourite(),
    homepage(),
    MyProfile(),
  ];
  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: DefaultTabController(
        initialIndex: 1,
        length: 3,
        child: Scaffold(
          body: TabBarView(
            physics: NeverScrollableScrollPhysics(),
            children: _widgetitems,
          ),
          bottomNavigationBar: ColoredBox(
            color: kBottom_nav_bar_background_color,
            child: TabBar(
              indicatorWeight: 3,
              tabs: [
                Tab(
                  child: Icon(
                    Icons.favorite,
                    color: kicon_Color,
                  ),
                ),
                Tab(
                  child: Icon(
                    Icons.home,
                    color: kicon_Color,
                  ),
                ),
                Tab(
                  child: Icon(
                    Icons.person,
                    color: kicon_Color,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
