import 'package:eee/constant.dart';
import 'package:eee/screens/delivery/components/body.dart';
import 'package:eee/screens/delivery/home.dart';
import 'package:eee/screens/delivery/message.dart';
import 'package:eee/screens/delivery/more.dart';
import 'package:eee/screens/delivery/order.dart';
import 'package:flutter/material.dart';

class DeliveryPage extends StatefulWidget {
  const DeliveryPage({ Key? key }) : super(key: key);

  @override
  State<DeliveryPage> createState() => _DeliveryPageState();
  
}

class _DeliveryPageState extends State<DeliveryPage> {
  int _currentIndex = 0;
final tabs = [HomePages(), DeliveryPage(),OrderPage(),MessagePages(),MorePage()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
       bottomNavigationBar: BottomNavigationBar(
         selectedItemColor: kPrimaryColor,
         unselectedItemColor: Colors.grey,
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.delivery_dining),label: "Delivery"),
          BottomNavigationBarItem(icon: Icon(Icons.document_scanner),label: "Order"),
          BottomNavigationBarItem(icon: Icon(Icons.mail),label: "Message"),
          BottomNavigationBarItem(icon: Icon(Icons.more),label: "More"),
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