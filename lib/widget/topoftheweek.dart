import 'package:burgerking_mobileapp/design/itemstyle.dart';
import 'package:flutter/material.dart';
import 'package:burgerking_mobileapp/design/mainFormDesign.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class Topoftheweekdetails {
  String productName;
  String proviceDetails;
  String image;
  String rating1;
  String rating2;

  Topoftheweekdetails({
    required this.productName,
    required this.proviceDetails,
    required this.image,
    required this.rating1,
    required this.rating2,
  });
}

class Topoftheweekwidget extends StatelessWidget {
  List<Topoftheweekdetails> topoftheweeklist = [
    Topoftheweekdetails(
      productName: 'Burger King - Mt Lavinia',
      proviceDetails: 'western,cusisne,fast food food burger',
      image: 'assets/images/foodicon1.png',
      rating1: '4.2',
      rating2: '5.2',
    ),
    Topoftheweekdetails(
      productName: 'Burger King - Mt Lavinia',
      proviceDetails: 'western,cusisne,fast food food burger',
      image: 'assets/images/foodicon1.png',
      rating1: '4.2',
      rating2: '5.2',
    ),
    Topoftheweekdetails(
      productName: 'Burger King - Mt Lavinia',
      proviceDetails: 'western,cusisne,fast food food burger',
      image: 'assets/images/foodicon1.png',
      rating1: '4.2',
      rating2: '5.2',
    )
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 280,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: topoftheweeklist.length,
        itemBuilder: (context, index) {
          return Topofweekcard(
            pname: topoftheweeklist[index].productName,
            pdiscription: topoftheweeklist[index].proviceDetails,
            img: topoftheweeklist[index].image,
            rte1: topoftheweeklist[index].rating1,
            rte2: topoftheweeklist[index].rating2,
          );
        },
      ),
    );
  }
}

class Topofweekcard extends StatelessWidget {
  Topofweekcard({
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
          width: 350,
          height: 150,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(25),
            boxShadow: const [boxshadow],
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: Column(
              children: [
                Container(
                  child: Image(
                    image: AssetImage(img),
                    width: 150,
                    height: 150,
                  ),
                ),
                Text(pname, style: fontstyledetailsofdayH1),
                Text(
                  pdiscription,
                  style: detailsofdaytext2,
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
                    Spacer(),
                    Text(
                      rte1,
                      style: kratingNumber,
                    ),
                    Spacer(),
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
