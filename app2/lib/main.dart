import 'package:app2/pages/ContactPage.dart';
import 'package:app2/pages/HomePage.dart';
import 'package:app2/pages/calc.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({ Key? key }) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
int _currentIndex = 0;
final tabs = [HomePage(),CalculatePage(),ContactPage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabs[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: "HomePage"),
          BottomNavigationBarItem(icon: Icon(Icons.calculate),label: "Calculate"),
          BottomNavigationBarItem(icon: Icon(Icons.contact_mail),label: "Contact")
        ],
        onTap: (index){
          setState(() {
            print(index);
            _currentIndex = index;
          });
        },
      ),
    );
  }
}


