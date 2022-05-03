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
  static const Icon facebook = Icon(
      Icons.audiotrack,
      color: Colors.green,
      size: 30.0,
    );

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
                SizedBox(height: 16,),
                Text(
                  "Instargram",
                  style: TextStyle(
                    fontFamily: "VeganStyle",
                    fontSize: 48,
                  ),
                ),
                SizedBox(height: 32,),
                TextField(
                  controller: quantity,
                  decoration: InputDecoration(
                    labelText: "Phone number, username, or email",
                    border: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(borderSide: const BorderSide(color: Colors.black))
                  ),
                  style: TextStyle(
                    fontFamily: "maaja",
                    fontSize: 14,
                  ),
                ),
                SizedBox(height: 16,),
                TextField(
                  controller: price,
                  decoration: InputDecoration(
                    labelText: "Password",
                    border: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(borderSide: const BorderSide(color: Colors.black))
                  ),
                  style: TextStyle(
                    fontFamily: "maaja",
                    fontSize: 16,
                  ),
                ),
                SizedBox(height: 16,),
                ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      "Log In",
                      style: TextStyle(
                        fontFamily: "maaja",
                        fontSize: 16,
                      ),
                      
                    ),
                    style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Color.fromARGB(255, 158, 216, 243)),
                                      padding: MaterialStateProperty.all(EdgeInsets.fromLTRB(120, 10, 120, 10))),),
                SizedBox(height: 16,),
                Text("------------------------------  OR  ------------------------------",style: TextStyle(color: Colors.grey),),
                SizedBox(height: 16,),
                Text("Log in wiht Facebook"
                  ,
                  style: TextStyle(
                    fontFamily: "maaja",
                    fontSize: 14,
                    color: Color.fromARGB(255, 1, 58, 105),
                    
                    
                  ),
                ),
                SizedBox(height: 16,),
                Text("Forgot password?",
                    style: TextStyle(
                      fontFamily: "maaja",
                      fontSize: 14,
                    )),
                     SizedBox(height: 16,),
                Text("--------------------------------------------------------------------------",style: TextStyle(color: Colors.grey),),
                
              ],
            ),
          ),
        ),
      ],
    );
  }
}