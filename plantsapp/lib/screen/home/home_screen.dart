
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:plantsapp/screen/home/components/body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
      
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      elevation: 0,  
      leading: IconButton(
        icon: SvgPicture.asset("asset/icons/menu.svg"),
        onPressed: () {},)
    );
  }
}