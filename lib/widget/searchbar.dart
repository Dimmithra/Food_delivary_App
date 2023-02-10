import 'package:burgerking_mobileapp/others/qrcode.dart';
import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(25),
        child: TextField(
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.only(top: 20),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: const BorderSide(width: 10, color: Colors.white),
            ),
            hintText: 'How I can Help You',
            prefixIcon: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search,
                color: Colors.black,
              ),
            ),
            suffixIcon: IconButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => QRViewForm(),
                ));
                // setState(() {});
              },
              icon: const Icon(
                Icons.qr_code_scanner_sharp,
                color: Colors.black,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
