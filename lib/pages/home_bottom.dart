import 'package:flutter/material.dart';

class MyHomeBottom extends StatefulWidget {
  const MyHomeBottom({Key? key}) : super(key: key);

  @override
  State<MyHomeBottom> createState() => _MyHomeBottomState();
}

class _MyHomeBottomState extends State<MyHomeBottom> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: Scaffold(
        body: Center(
          child: Row(
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
                      "Today",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0,
                          fontStyle: FontStyle.normal),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
