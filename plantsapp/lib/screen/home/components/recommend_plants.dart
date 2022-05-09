import 'package:flutter/material.dart';
import 'package:plantsapp/constant.dart';

class RecommendPlants extends StatelessWidget {
  const RecommendPlants({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          RecommendPlantCard(
            image: "assets/images/image_1.png",
            title: "Chiang Mai",
            country: "Thailand",
            price: 440,
            press: () {},
          ),
          RecommendPlantCard(
            image: "assets/images/image_2.png",
            title: "Chiang Mai",
            country: "Thailand",
            price: 440,
            press: () {},
          ),
          RecommendPlantCard(
            image: "assets/images/image_3.png",
            title: "Chiang Mai",
            country: "Thailand",
            price: 440,
            press: () {},
          ),
          
        ],
      ),
    );
  }
}

class RecommendPlantCard extends StatelessWidget {
  const RecommendPlantCard({
    Key? key,
     required this.image,
     required this.title,
     required this.country,
     required this.price,
     required this.press,
  }) : super(key: key);
  final String image,title,country;
  final int price;
  final Function press;


  @override
  Widget build(BuildContext context) {
    Size  size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(
        left: kDefaultPadding,
        top: kDefaultPadding/2,
        bottom: kDefaultPadding*2.5
      ),
      width: size.width * 0.4,
      child: Column(children: [
        Image.asset(image),
        GestureDetector(
          child: Container(
            padding: EdgeInsets.all(kDefaultPadding/2),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10)
              ),
              boxShadow: [
                BoxShadow(
                  offset: Offset(0,10),
                  blurRadius: 50,
                  color: kPrimaryColor.withOpacity(0.23)
                )
              ]
            ),
            child: Row(
              children: [
                RichText(text: TextSpan(children: [
                  TextSpan(
                    text: "$title\n".toUpperCase(),
                    style: Theme.of(context).textTheme.button
                  ),
                  TextSpan(
                    text: "$country".toUpperCase(),
                    style: TextStyle(color: kPrimaryColor.withOpacity(0.5))
                  ),
                ])),
                Spacer(),
                Text('\$$price',style: Theme.of(context).textTheme.button!.copyWith(color: kPrimaryColor),)
              ],
            ),
          ),
        )
      ]),
    );
  }
}