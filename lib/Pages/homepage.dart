import 'package:burgerking_mobileapp/design/colors.dart';
import 'package:burgerking_mobileapp/design/mainFormDesign.dart';
import 'package:burgerking_mobileapp/others/bottomnavbar.dart';
import 'package:burgerking_mobileapp/others/daytimeicon.dart';
import 'package:burgerking_mobileapp/others/menu_option_buttton.dart';
import 'package:burgerking_mobileapp/widget/detailsofdaywidget.dart';
import 'package:burgerking_mobileapp/widget/exploremore.dart';
import 'package:burgerking_mobileapp/widget/topoftheweek.dart';
import 'package:burgerking_mobileapp/widget/username.dart';
import 'package:flutter/material.dart';
import 'package:burgerking_mobileapp/widget/categorywidget.dart';
import 'package:burgerking_mobileapp/Pages/favourite.dart';
import 'package:burgerking_mobileapp/Pages/myprofile.dart';
import 'package:burgerking_mobileapp/widget/searchbar.dart';

class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  // int currentPage = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kbackground_color,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              child: Stack(
                children: const [
                  DayTimeImage(),
                  SearchBar(),
                ],
              ),
            ),
            //HomeMain(),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                children: const [
                  Text(
                    'Categories',
                    style: kfontsizemain,
                  ),
                  Spacer(),
                  MenuOptionButton(),
                ],
              ),
            ),
            categorywidget(),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                children: const [
                  Text(
                    'Details of this week',
                    style: kfontsizemain,
                  ),
                  Spacer(),
                  MenuOptionButton(),
                ],
              ),
            ),
            DetailsOfDayWidght(),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                children: const [
                  Text(
                    'Top of this week',
                    style: kfontsizemain,
                  ),
                  Spacer(),
                  MenuOptionButton(),
                ],
              ),
            ),
            Topoftheweekwidget(),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                children: const [
                  Text(
                    'Explore More',
                    style: kfontsizemain,
                  ),
                  Spacer(),
                  MenuOptionButton(),
                ],
              ),
            ),
            Exploremorewidget(),
          ],
        ),
      ),
      // bottomNavigationBar: const BottomNavBar(),
      // bottomNavigationBar: NavigationBar(
      //   destinations: [
      //     NavigationDestination(
      //         icon: IconButton(
      //           onPressed: () {
      //             Navigator.of(context).push(
      //               MaterialPageRoute(
      //                 builder: (context) => const favourite(),
      //               ),
      //             );
      //           },
      //           icon: const Icon(Icons.favorite_rounded),
      //           color: kicon_Color,
      //           iconSize: 25,
      //         ),
      //         label: ''),
      //     NavigationDestination(
      //       icon: IconButton(
      //         onPressed: () {},
      //         icon: const Icon(Icons.home),
      //         color: kicon_Color,
      //         iconSize: 25,
      //       ),
      //       label: '',
      //     ),
      //     NavigationDestination(
      //         icon: IconButton(
      //           onPressed: () {
      //             Navigator.of(context).push(
      //               MaterialPageRoute(
      //                 builder: (context) => const MyProfile(),
      //               ),
      //             );
      //           },
      //           icon: const Icon(Icons.person),
      //           color: kicon_Color,
      //           iconSize: 25,
      //         ),
      //         label: '')
      //   ],
      //   onDestinationSelected: (int index) {
      //     setState(
      //       () {
      //         currentPage = index;
      //       },
      //     );
      //   },
      //   selectedIndex: currentPage,
      //   //navgation bar color
      //   backgroundColor: kBottom_nav_bar_background_color,
      // ),
    );
  }
}
