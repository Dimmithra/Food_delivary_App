import 'package:burgerking_mobileapp/Pages/homepage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const BurgerkingApp());
}

class BurgerkingApp extends StatelessWidget {
  const BurgerkingApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: homepage(),
    );
  }
}
