import 'package:burgerking_mobileapp/Pages/homepage.dart';
import 'package:burgerking_mobileapp/others/bottomnavbar.dart';
import 'package:flutter/material.dart';
import 'package:burgerking_mobileapp/widget/categorywidget.dart';
import 'package:provider/provider.dart';

void main() {
  // runApp(MultiProvider(providers: [
  //   ChangeNotifierProvider(
  //     create: (context) => categorywidget(),
  //   )
  // ]));
  runApp(const BurgerkingApp());
}

// MultiProvider(providers: [
//     ChangeNotifierProvider(
//       create: (context) => categorywidget(),
//     )
//   ])
class BurgerkingApp extends StatelessWidget {
  const BurgerkingApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BottomNavBar(),
    );
  }
}
