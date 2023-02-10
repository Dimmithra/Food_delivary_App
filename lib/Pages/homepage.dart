import 'package:burgerking_mobileapp/design/mainFormDesign.dart';
import 'package:burgerking_mobileapp/widget/detailsofdaywidget.dart';
import 'package:burgerking_mobileapp/widget/exploremore.dart';
import 'package:burgerking_mobileapp/widget/topoftheweek.dart';
import 'package:flutter/material.dart';
import 'package:burgerking_mobileapp/widget/categorywidget.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:burgerking_mobileapp/others/qrcode.dart';

class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  int currentPage = 0;

  Future<void> _requestCameraPermission() async {
    final status = await Permission.camera.request();
    if (status != PermissionStatus.granted) {
      print('Camera permission not granted');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(70),
          child: AppBar(
            title: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        contentPadding:
                            const EdgeInsets.symmetric(vertical: 15.0),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide:
                              const BorderSide(width: 10, color: Colors.white),
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
                ),
              ],
            ),
            backgroundColor: Colors.transparent,
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(5),
            child: Column(
              children: [
                const Image(
                  image: AssetImage("assets/images/appbarbacground.png"),
                  fit: BoxFit.cover,
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Row(
                    children: const [
                      Text(
                        'Categories',
                        style: fontsizemain,
                      ),
                    ],
                  ),
                ),
                categorywidget(),
                //Details of the day widget
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Row(
                    children: const [
                      Text(
                        'Details of the day',
                        style: fontsizemain,
                      ),
                    ],
                  ),
                ),
                DetailsOfDayWidght(),
                //Top Of the Week
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Row(
                    children: const [
                      Text(
                        'Top Of the Week',
                        style: fontsizemain,
                      ),
                    ],
                  ),
                ),
                Topoftheweekwidget(),
                // expore more
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Row(
                    children: const [
                      Text(
                        'Explore More',
                        style: fontsizemain,
                      ),
                    ],
                  ),
                ),
                Exploremorewidget(),
              ],
            ),
          ),
        ),

        //Bottom Navigation Bar
        bottomNavigationBar: NavigationBar(
          destinations: const [
            NavigationDestination(
                icon: Icon(
                  Icons.favorite,
                  color: Colors.white,
                  size: 30,
                ),
                label: ''),
            NavigationDestination(
                icon: Icon(
                  Icons.home,
                  color: Colors.white,
                  size: 30,
                ),
                label: ''),
            NavigationDestination(
                icon: Icon(
                  Icons.person,
                  color: Colors.white,
                  size: 30,
                ),
                label: ''),
          ],
          onDestinationSelected: (int index) {
            setState(
              () {
                currentPage = index;
              },
            );
          },
          selectedIndex: currentPage,
          backgroundColor: const Color.fromARGB(255, 180, 102, 0),
        ),
      ),
    );
  }
}
// final status = await Permission.camera.status;
// if (status == PermissionStatus.granted) {
//   setState(() {
//     _isScanning = true;
//   });
// } else {
//   await _requestCameraPermission();
// }
