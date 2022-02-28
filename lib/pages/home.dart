import 'package:flutter/material.dart';

class MyHome extends StatefulWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  _MyHomeState createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    var borderRadius2 = const BorderRadius.only(
        bottomLeft: Radius.circular(20), bottomRight: Radius.circular(20));
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Need App"),
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.comment),
              tooltip: 'Comment Icon',
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.settings),
              tooltip: 'Setting Icon',
              onPressed: () {},
            ),
          ],
          backgroundColor: Colors.cyan[500],
          leading: IconButton(
            icon: const Icon(Icons.menu),
            tooltip: 'Menu Icon',
            onPressed: () {},
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Container(
                height: 150,
                width: 400,
                decoration: const BoxDecoration(
                  color: Colors.black,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black,
                      blurRadius: 5.0,
                    ),
                  ],
                  image: DecorationImage(
                      image: AssetImage('assets/blood.png'), fit: BoxFit.cover),
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              SingleChildScrollView(
                child: Container(
                  height: 150,
                  width: 400,
                  decoration: const BoxDecoration(
                    color: Colors.black,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black,
                        blurRadius: 5.0,
                      ),
                    ],
                    image: DecorationImage(
                        image: AssetImage('assets/blood2.jpg'),
                        fit: BoxFit.cover),
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
