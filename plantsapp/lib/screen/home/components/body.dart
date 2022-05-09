import 'package:flutter/material.dart';
import 'package:plantsapp/constant.dart';

import 'header_with_searchbox.dart';
import 'title_with_more_btn.dart';
import 'recommend_plants.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          HeaderWithSearchBox(size: size),
          TitleWithMoreBtn(),
          RecommendPlants()
        ],
      ),
    );
  }
}


