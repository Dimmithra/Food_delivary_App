import 'package:burgerking_mobileapp/design/colors.dart';
import 'package:burgerking_mobileapp/design/itemstyle.dart';
import 'package:flutter/material.dart';
import 'package:burgerking_mobileapp/design/mainFormDesign.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ExploremoreDetails {
  String pname;
  String pDiscription;
  String image;
  String rating1;
  String rating2;

  ExploremoreDetails({
    required this.pname,
    required this.pDiscription,
    required this.image,
    required this.rating1,
    required this.rating2,
  });
}

class Exploremorewidget extends StatelessWidget {
  List<ExploremoreDetails> exploremorelist = [
    //asset one
    ExploremoreDetails(
      pname: 'Burger King - Mt Lavinia',
      pDiscription: 'western,cusisne,fast food food burger',
      image: 'assets/images/foodicon1.png',
      rating1: "4.5",
      rating2: '4.5',
    ),
    //asset two
    ExploremoreDetails(
      pname: 'Burger King - Mt Lavinia',
      pDiscription: 'western,cusisne,fast food food burger',
      image: 'assets/images/foodicon1.png',
      rating1: "4.5",
      rating2: '4.5',
    ),
    // asset two
    ExploremoreDetails(
      pname: 'Burger King - Mt Lavinia',
      pDiscription: 'western,cusisne,fast food food burger',
      image: 'assets/images/foodicon1.png',
      rating1: "4.5",
      rating2: '4.5',
    ),
    // asset three
    ExploremoreDetails(
      pname: 'Burger King - Mt Lavinia',
      pDiscription: 'western,cusisne,fast food food burger',
      image: 'assets/images/foodicon1.png',
      rating1: "4.5",
      rating2: '5.2',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 280,
      child: ListView.builder(
        itemCount: exploremorelist.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return ExporemoreCard(
            pname: exploremorelist[index].pname,
            pDiscription: exploremorelist[index].pDiscription,
            image: exploremorelist[index].image,
            rating1: exploremorelist[index].rating1,
            rating2: exploremorelist[index].rating2,
          );
        },
      ),
    );
  }
}

class ExporemoreCard extends StatelessWidget {
  ExporemoreCard({
    Key? Key,
    this.pname = '',
    this.pDiscription = '',
    this.image = '',
    this.rating1 = '',
    this.rating2 = '',
  }) : super(key: Key);
  final String pname;
  final String pDiscription;
  final String image;
  final String rating1;
  final String rating2;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
        child: Container(
          width: 250,
          height: 150,
          decoration: BoxDecoration(
            color: kcard_background_colors,
            borderRadius: BorderRadius.circular(25),
            boxShadow: const [kboxshadow],
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: Column(
              children: [
                Container(
                  child: Image(
                    image: AssetImage(image),
                    width: 150,
                    height: 150,
                  ),
                ),
                Text(pname, style: kfontstyledetailsofdayH1),
                Text(
                  pDiscription,
                  style: kdetailsofdaytext2,
                ),
                const Divider(
                  color: Colors.black,
                ),
                Row(
                  children: [
                    Container(
                      child: RatingBar.builder(
                        initialRating: 13,
                        minRating: 2,
                        direction: Axis.horizontal,
                        allowHalfRating: true,
                        itemCount: 5,
                        itemSize: 20,
                        itemPadding: const EdgeInsets.symmetric(
                            vertical: 5, horizontal: 2),
                        itemBuilder: (context, _) => const Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                        onRatingUpdate: (rating) {
                          print(rating);
                        },
                      ),
                    ),
                    const Spacer(),
                    Text(
                      rating1,
                      style: kratingNumber,
                    ),
                    const Spacer(),
                    Text(
                      rating2,
                      style: kratingNumber,
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
