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
            title: Text("การเดินทางขากลับคงจะเหงา",style: TextStyle(
                    fontFamily: "maaja", fontSize: 30) ,),
                    backgroundColor: Colors.black,
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
  TextEditingController quantity = TextEditingController();
  TextEditingController result = TextEditingController();
  TextEditingController result2 = TextEditingController();
  TextEditingController price = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    result.text = "Buy x Apples, x THB per an Apple.";
    result2.text = "You have to pay x THB.";
  }

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
                  width: 160,
                ),
                SizedBox(height: 16,),
                Text(
                  "Calculate Program",
                  style: TextStyle(
                    fontFamily: "maaja",
                    fontSize: 48,
                  ),
                ),
                SizedBox(height: 16,),
                TextField(
                  controller: quantity,
                  decoration: InputDecoration(
                    labelText: "Apple Amount",
                    border: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(borderSide: const BorderSide(color: Colors.black))
                  ),
                  style: TextStyle(
                    fontFamily: "maaja",
                    fontSize: 24,
                  ),
                ),
                SizedBox(height: 16,),
                TextField(
                  controller: price,
                  decoration: InputDecoration(
                    labelText: "Apple Price",
                    border: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(borderSide: const BorderSide(color: Colors.black))
                  ),
                  style: TextStyle(
                    fontFamily: "maaja",
                    fontSize: 24,
                  ),
                ),
                SizedBox(height: 16,),
                ElevatedButton(
                    onPressed: () { 
                      var pi = price.text;
                      var cal = double.parse(quantity.text)*double.parse(pi);
                     
                      print("Apple quality: ${quantity.text} Total: ${cal} THB");

                      setState(() {
                        result.text = "Buy ${quantity.text} Apples, ${price.text} THB per an Apple.";
                        result2.text = "You have to pay ${cal} THB.";
                      });
                    },
                    child: Text(
                      "Calculate",
                      style: TextStyle(
                        fontFamily: "maaja",
                        fontSize: 16,
                      ),
                      
                    ),
                    style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.black)),),
                SizedBox(height: 16,),
                Text(result.text
                  ,
                  style: TextStyle(
                    fontFamily: "maaja",
                    fontSize: 24,
                  ),
                ),
                Text(result2.text,
                    style: TextStyle(
                      fontFamily: "maaja",
                      fontSize: 24,
                    ))
              ],
            ),
          ),
        ),
      ],
    );
  }
}
