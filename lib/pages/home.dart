import 'package:flutter/material.dart';

class MyHome extends StatefulWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  _MyHomeState createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: Scaffold(
        body: Row(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.only(top: 50.0, left: 30.0),
                  height: 100,
                  width: MediaQuery.of(context).size.width,
                  //color: Colors.amber,
                  child: const Text(
                    "Today\n ",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                        fontStyle: FontStyle.normal),
                  ),
                ),
              ],
            )
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentIndex,
          onTap: (index) => setState(() => currentIndex = index),
          elevation: 15.0,
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.grey.shade900,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white54,
          selectedIconTheme:
              const IconThemeData(size: 30.0, color: Colors.cyan),
          unselectedIconTheme:
              const IconThemeData(size: 20.0, color: Colors.white),
          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.shopping_bag,
              ),
              label: 'Shop',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.directions_run,
              ),
              label: 'Activity',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.favorite,
              ),
              label: 'Favorites',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.settings,
              ),
              label: 'Settings',
            ),
          ],
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
