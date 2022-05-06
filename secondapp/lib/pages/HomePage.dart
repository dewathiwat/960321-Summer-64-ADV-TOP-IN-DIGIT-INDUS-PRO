import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:secondapp/pages/DetailPage.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Computer Knowledge"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: FutureBuilder(
          builder: (context, snapshot) {
            var data = json.decode(snapshot.data.toString());
            return ListView.builder(
              itemBuilder: (BuildContext context, int index) {
                return MyBox(data[index]["title"], data[index]["subtitle"],
                    data[index]["image_url"], data[index]["detail"]);
              },
              itemCount: data.length,
            );
          },
          future: DefaultAssetBundle.of(context).loadString("assets/data.json"),
        ),
      ),
    );
  }

  Widget MyBox(String title, String subTitle, String img, String detail) {
    var v1, v2, v3, v4;
    v1 = title;
    v2 = subTitle;
    v3 = img;
    v4 = detail;
    return Container(
      margin: EdgeInsets.only(top: 20),
      padding: EdgeInsets.all(20),
      height: 180,
      decoration: BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
              image: NetworkImage(img),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.5), BlendMode.darken))),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                  fontSize: 24,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              subTitle,
              style: TextStyle(fontSize: 12, color: Colors.white),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              detail,
              style: TextStyle(
                  fontSize: 14,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 5,
            ),
            TextButton(
                onPressed: () {
                  print("nect page >>");
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: ((context) => DetailPage(v1, v2, v3, v4))));
                },
                child: Text("read more",
                    style: TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                        fontWeight: FontWeight.bold)))
          ]),
    );
  }
}
