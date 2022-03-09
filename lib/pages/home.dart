import 'package:flutter/material.dart';
import 'package:flutter_need/pages/home_bottom.dart';
import 'package:flutter_need/pages/settings.dart';
import 'package:flutter_need/pages/shop.dart';
import 'activity.dart';
import 'favorites.dart';

class MyHome extends StatefulWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  _MyHomeState createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  //int currentItem = 0;
  var bottomData = [
    const MyHomeBottom(),
    const MyShop(),
    const MyActivity(),
    const MyFavorites(),
    const MySettings()
  ];
  int selectedItem = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: Scaffold(
        body: Center(
          child: bottomData[selectedItem],
        ),
        bottomNavigationBar: BottomNavigationBar(
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
          currentIndex: selectedItem,
          onTap: (setValue) {
            setState(() {
              selectedItem = setValue;
            });
          },
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
