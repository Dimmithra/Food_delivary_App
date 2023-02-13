import 'package:burgerking_mobileapp/design/colors.dart';
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
      height: 125,
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
            color: kcard_background_colors,
            borderRadius: BorderRadius.circular(25),
            boxShadow: const [kboxshadow],
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              children: [
                Image(
                  image: AssetImage(img),
                  width: 75,
                  height: 75,
                ),
                Text(
                  catname,
                  style: kcategorywidgettextstyle,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
