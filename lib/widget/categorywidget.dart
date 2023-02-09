import 'package:burgerking_mobileapp/design/mainFormDesign.dart';
import 'package:flutter/material.dart';
import 'package:burgerking_mobileapp/design/itemstyle.dart';

class CategoryModel {
  String categoryName;
  String imagePath;

  CategoryModel({
    required this.categoryName,
    required this.imagePath,
  });
}

class categorywidget extends StatelessWidget {
  List<CategoryModel> categoriesList = [
    CategoryModel(categoryName: 'Taxi', imagePath: 'assets/images/taxi.png'),
    CategoryModel(
        categoryName: 'Food', imagePath: 'assets/images/foodicon.png'),
    CategoryModel(
        categoryName: 'Market', imagePath: 'assets/images/grocoryimage.png'),
    CategoryModel(
        categoryName: 'Other', imagePath: 'assets/images/loction.png'),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      width: MediaQuery.of(context).size.width,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categoriesList.length,
        itemBuilder: (context, index) {
          return DummyCard(
            catname: categoriesList[index].categoryName,
            img: categoriesList[index].imagePath,
          );
        },
      ),
    );
  }
}

class DummyCard extends StatelessWidget {
  const DummyCard({Key? key, required this.catname, this.img = 'dadsa'})
      : super(key: key);

  final String catname;
  final String img;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
        child: Container(
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 255, 255, 255),
            borderRadius: BorderRadius.circular(5),
            boxShadow: const [boxshadow],
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Image(
                  image: AssetImage(img),
                  width: 50,
                  height: 50,
                ),
                Text(
                  catname,
                  style: categorywidgettextstyle,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
