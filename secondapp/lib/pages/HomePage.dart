import 'package:flutter/material.dart';
import 'package:secondapp/pages/DetailPage.dart';

class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

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
        child: ListView(children: [
          MyBox("What is a computer ?",
          "Computer is athing to calculate and of any other works",
          "https://cdn.pixabay.com/photo/2021/08/31/11/59/androgynous-6588615_960_720.jpg"),
          SizedBox(height: 20,),
          MyBox("What is  Flutter ?","Flutter is a tool to create a mobile application","https://cdn.pixabay.com/photo/2021/08/31/12/00/androgynous-6588618_960_720.jpg"),
          SizedBox(height: 20,),
          MyBox("What is Dart ?","Dart is the language used in Flutter","https://cdn.pixabay.com/photo/2021/08/31/11/58/woman-6588614_960_720.jpg"),
          SizedBox(height: 20,),
        ],),
      ),
    );
  }

  Widget MyBox(String title ,String subTitle,String img){
    return Container(
      padding: EdgeInsets.all(20),
      height: 150,
      decoration: BoxDecoration(
        color: Colors.grey,
        borderRadius:  BorderRadius.circular(20),
        image: DecorationImage(image: NetworkImage(img),
                                fit: BoxFit.cover,
                                colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.5), BlendMode.darken))
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        Text(title,
        style: TextStyle(
          fontSize: 24,
          color: Colors.white,
          fontWeight: FontWeight.bold
          ),
        ),
        SizedBox(height: 5,),
        Text(subTitle, style: TextStyle(fontSize: 12,color: Colors.white),),
        SizedBox(height: 15,),
        TextButton(
          onPressed: () {
          print("nect page >>");
          Navigator.push(context, MaterialPageRoute(builder: ((context) => DetailPage())));
        }, child: Text("read more",
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.white,
                          fontWeight: FontWeight.bold
          )))
      ]),
    );
  }
}