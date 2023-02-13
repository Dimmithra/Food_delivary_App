import 'package:burgerking_mobileapp/design/colors.dart';
import 'package:burgerking_mobileapp/design/itemstyle.dart';
import 'package:burgerking_mobileapp/others/favourite_icon.dart';
import 'package:flutter/material.dart';
import 'package:burgerking_mobileapp/design/mainFormDesign.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class DetailsofDay {
  String productName;
  String proviceDetails;
  String image;
  String rating1;
  String rating2;

  DetailsofDay({
    required this.productName,
    required this.proviceDetails,
    required this.image,
    required this.rating1,
    required this.rating2,
  });
}

class DetailsOfDayWidght extends StatelessWidget {
  List<DetailsofDay> detailsofdayitems = [
    DetailsofDay(
        productName: 'Burger King - Mt Lavinia',
        proviceDetails: 'proviceDetails',
        image: 'assets/images/foodicon1.png',
        rating1: '4.0',
        rating2: '4.0'),
    DetailsofDay(
        productName: 'Burger King - Mt Lavinia',
        proviceDetails: 'proviceDetails',
        image: 'assets/images/foodicon2.png',
        rating1: '4.0',
        rating2: '4.0'),
    DetailsofDay(
        productName: 'Burger King - Mt Lavinia',
        proviceDetails: 'proviceDetails',
        image: 'assets/images/foodicon3.png',
        rating1: '4.0',
        rating2: '4.0'),
    DetailsofDay(
        productName: 'Burger King - Mt Lavinia',
        proviceDetails: 'proviceDetails',
        image: 'assets/images/foodicon1.png',
        rating1: '4.0',
        rating2: '4.0')
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 275,
      width: MediaQuery.of(context).size.width,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: detailsofdayitems.length,
        itemBuilder: (context, index) {
          return Detailsofdaycard(
            pname: detailsofdayitems[index].productName,
            pdiscription: detailsofdayitems[index].proviceDetails,
            img: detailsofdayitems[index].image,
            rte1: detailsofdayitems[index].rating1,
            rte2: detailsofdayitems[index].rating2,
          );
        },
      ),
    );
  }
}

@override
class Detailsofdaycard extends StatelessWidget {
  const Detailsofdaycard({
    Key? key,
    this.pname = '',
    this.pdiscription = '',
    this.img = '',
    this.rte1 = '',
    this.rte2 = '',
  }) : super(key: key);

  final String pname;
  final String pdiscription;
  final String img;
  final String rte1;
  final String rte2;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
        child: Container(
          width: 250,
          height: 100,
          decoration: BoxDecoration(
            color: kcard_background_colors,
            borderRadius: BorderRadius.circular(20),
            boxShadow: const [kboxshadow],
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      child: Image(
                        image: AssetImage(img),
                        width: 150,
                        height: 150,
                      ),
                    ),
                    const FavouriteIcon(),
                  ],
                ),
                Text(pname, style: kfontstyledetailsofdayH1),
                Text(
                  pdiscription,
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
                      rte1,
                      style: kratingNumber,
                    ),
                    const Spacer(),
                    Text(
                      rte2,
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
