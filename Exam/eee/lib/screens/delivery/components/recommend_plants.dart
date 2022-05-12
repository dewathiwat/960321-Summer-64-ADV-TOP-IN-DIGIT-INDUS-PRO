import 'package:eee/constant.dart';
import 'package:flutter/material.dart';

class RecommendPlants extends StatelessWidget {
  const RecommendPlants({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(20),
        child: Column(children: [
          RecommendPlantCard(
            image:
                "https://blog.thermoworks.com/wp-content/uploads/2021/06/Ice_Cream_Compressed-43.jpg",
            title: "Chiang Mai",
            country: "Thailand",
            price: 440,
            press: () {},
          ),
          RecommendPlantCard(
            image:
                "https://blog.thermoworks.com/wp-content/uploads/2021/06/Ice_Cream_Compressed-43.jpg",
            title: "Chiang Mai",
            country: "Thailand",
            price: 440,
            press: () {},
          ),
          RecommendPlantCard(
            image:
                "https://blog.thermoworks.com/wp-content/uploads/2021/06/Ice_Cream_Compressed-43.jpg",
            title: "Chiang Mai",
            country: "Thailand",
            price: 440,
            press: () {},
          ),
          RecommendPlantCard(
            image:
                "https://blog.thermoworks.com/wp-content/uploads/2021/06/Ice_Cream_Compressed-43.jpg",
            title: "Chiang Mai",
            country: "Thailand",
            price: 440,
            press: () {},
          ),
          RecommendPlantCard(
            image:
                "https://blog.thermoworks.com/wp-content/uploads/2021/06/Ice_Cream_Compressed-43.jpg",
            title: "Chiang Mai",
            country: "Thailand",
            price: 440,
            press: () {},
          ),
        ]));
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
  final String image, title, country;
  final int price;
  final Function press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(top: 20),
      padding: EdgeInsets.all(20),
      height: 150,
      decoration: BoxDecoration(
        color: kBackgroundColor,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            offset: Offset(0,0.1),
          )]
      ),
      child: Row(children: [
        Container(
            height: 150,
            width: size.width * 0.3,
            child: Image.network(
              image,
              fit: BoxFit.cover,
            )),
        Container(
          padding: EdgeInsets.only(left: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                country,
                style: TextStyle(fontSize: 20, color: Colors.grey),
              ),
              SizedBox(
              height: 30,
            ),
              Row(

                children: [
                  Text(
                    '\$$price',
                    style: TextStyle(fontSize: 20, color: kPrimaryColor),
                  ),
                ],
              ),
            ],
          ),
        )
      ]),
    );
  }
}
