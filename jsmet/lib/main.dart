import 'package:flutter/material.dart';
import 'package:http/http.dart'as http;
import'dart:async';
import'dart:convert';

void main() {
  runApp(const MyApp());
}
class Album{
  final int userId;
  final int id;
  final String title;

  Album({
    required this.userId,
    required this.id,
    required this.title,
  });

  factory Album.fromJson(Map<String, dynamic> json) {
    return Album(
      userId: json['userId'],
      id: json['id'],
      title: json['title'],
    );
  }

}

Future<Album> fetchAlbum() async {
  final response = await http.get(Uri.parse("https://jsonplaceholder.typicode.com/albums/3"));

  if (response.statusCode == 200) {
    print(response.body);
    print(jsonDecode(response.body));
    print(Album.fromJson(jsonDecode(response.body)));
    return Album.fromJson(jsonDecode(response.body));
  }else{
    throw Exception('Failed to load album');
  }
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late Future<Album> futureAlbum;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    futureAlbum = fetchAlbum();
  }
  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: FutureBuilder<Album>(
          future: futureAlbum,
          builder: (context, snapshot) {
            if(snapshot.hasData){
              return Text(snapshot.data!.userId.toString());
          }
          else if(snapshot.hasError){
            return Text("${snapshot.error}");
          }
          return const CircularProgressIndicator();
        
        }
        )
      )
    );
  }
}
