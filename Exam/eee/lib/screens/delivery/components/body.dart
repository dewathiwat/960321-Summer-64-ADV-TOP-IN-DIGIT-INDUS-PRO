import 'package:eee/constant.dart';
import 'package:eee/screens/delivery/components/title_with_more_btn.dart';
import 'package:flutter/material.dart';

import 'header.dart';
import 'recommend_plants.dart';

class Body extends StatelessWidget {
  const Body({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(children: [
        Header(size: size),
        TitleWithMoreBtn(),
        RecommendPlants()

      ]),
      
    );
  }
}

