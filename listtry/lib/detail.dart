import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  // const DetailPage({ Key? key }) : super(key: key);
  final detail;
  DetailPage(this.detail);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(widget.detail),
    );
  }
}