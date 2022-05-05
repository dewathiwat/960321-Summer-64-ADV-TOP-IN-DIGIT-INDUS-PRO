import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  // const DetailPage({ Key? key }) : super(key: key);
  // final v1,v2,v3,v4;
  //  DetailPage(this.v1,this.v2,this.v3,this.v4);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Datail")),
      body: ListView(
        children: [
          Text("Details Explanation")
        ],
      ),
      
    );
  }
}