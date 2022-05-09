import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'AppBar'),
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
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
          appBar: AppBar(
              title: Text(widget.title),
              leading: IconButton(
                icon: Icon(Icons.menu),
                onPressed: () {
                  print('Menu button pressed');
                },
              ),
              actions: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.notifications_none),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.search),
                ),
              ],
              elevation: 20,
              flexibleSpace: Container(
                decoration: BoxDecoration(
                 image:  DecorationImage(
                   image: NetworkImage("https://media4.giphy.com/media/FcuiZUneg1YRAu1lH2/giphy-downsized.gif"),
                   fit: BoxFit.cover,
                   colorFilter: ColorFilter.mode(
                    Colors.black.withOpacity(0.5), BlendMode.darken))
                    )
              ),
              bottom: TabBar(
                tabs: [
                  Tab(icon: Icon(Icons.home),text: 'Home',),
                  Tab( icon: Icon(Icons.list_alt),text: 'Feed',),
                  Tab( icon: Icon(Icons.person),text: 'Profile',),
                  Tab( icon: Icon(Icons.settings),text: 'Setting',),
                ],
              ),
              ),
          body: Center(
            child: Stack(
              alignment: AlignmentDirectional.topEnd,
              children: [
                Container(
                  color: Colors.blue[100],
                  alignment: const Alignment(1.7, 1.3),
                  child: Container(
                    height: 200,
                    width: 200,
                    decoration: BoxDecoration(
                      color: Colors.blue[500],
                      borderRadius: BorderRadius.circular(100),
                    ),
                  ),
                ),
                Container(
                  alignment: const Alignment(-1.7, -1.3),
                  child: Container(
                    height: 200,
                    width: 200,
                    decoration: BoxDecoration(
                      color: Colors.blue[400],
                      borderRadius: BorderRadius.circular(100),
                    ),
                  ),
                ),
                // Container(
                //   height: 100,
                //   width: 100,
                //   color: Colors.blue[600],
                // )
              ],
            ),
          )),
    );
  }
}
