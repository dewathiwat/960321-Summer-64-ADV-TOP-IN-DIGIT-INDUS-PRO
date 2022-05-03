import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("การเดินทางขากลับคงจะเหงา"),
          ),
          body: Home()),
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.all(50.0),
          child: Center(
            child: Column(
              children: [
                Text(""),
                Image.asset(
                  "assets/257791.png",
                  width: 150,
                ),
                SizedBox(height: 20,),
                Text(
                  "Calculate Program",
                  style: TextStyle(
                    fontFamily: "maaja",
                    fontSize: 50,
                  ),
                ),
                SizedBox(height: 20,),
                TextField(
                  decoration: InputDecoration(
                    labelText: "Apple Amount",
                    border: OutlineInputBorder(),
                  ),
                  style: TextStyle(
                    fontFamily: "maaja",
                    fontSize: 25,
                  ),
                ),
                ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      "Calculate",
                      style: TextStyle(
                        fontFamily: "maaja",
                        fontSize: 20,
                      ),
                    )),
                Text(
                  "buy 5 Apples, 10 THB per an Apple.",
                  style: TextStyle(
                    fontFamily: "maaja",
                    fontSize: 25,
                  ),
                ),
                Text("We have to pay 100 THB.",
                    style: TextStyle(
                      fontFamily: "maaja",
                      fontSize: 25,
                    ))
              ],
            ),
          ),
        ),
      ],
    );
  }
}
