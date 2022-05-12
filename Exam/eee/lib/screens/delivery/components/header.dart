import 'package:eee/constant.dart';
import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: kDefaultPadding*2.5),
      height: 200,
      child: Stack(
    children: [
      Container(
        padding: EdgeInsets.only(
          left: kDefaultPadding,
          right: kDefaultPadding,
          bottom: kDefaultPadding
        ),
        height: size.height ,
        decoration: BoxDecoration(
            color: kPrimaryColor,
           ),
        child: Row(
          children: [
            Icon(Icons.location_on, color: Colors.white, size: 30),
            Text("Address", style: TextStyle(color: Colors.white, fontSize: 20)),
            Spacer(),
            Icon(Icons.heart_broken, color: Colors.white, size: 30),
            
          ],
        ),
      ),
      Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Container(
            
            height: 54,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                topLeft: Radius.circular(36),
                topRight: Radius.circular(36)),
                boxShadow: [
                  BoxShadow(
                      offset: Offset(0, 10),
                      blurRadius: 50,
                      color: kPrimaryColor.withOpacity(0.23))
                ]),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Highlight & Promotion"),
                Spacer(),
                  Text("Ice Cream Premium Mini Qua")
              ],
            ),
          ))
    ],
      ),
    );
  }
}