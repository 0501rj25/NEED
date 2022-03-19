import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class MyHomeBottom extends StatefulWidget {
  const MyHomeBottom({Key? key}) : super(key: key);

  @override
  State<MyHomeBottom> createState() => _MyHomeBottomState();
}

class _MyHomeBottomState extends State<MyHomeBottom> {
  DateTime currentdate = DateTime.now();
  @override
  Widget build(BuildContext context) {
    String _formattedate = DateFormat.yMMMd().format(currentdate);
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
                    child: Text(
                      'Today\n$_formattedate. ',
                      style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0,
                          fontStyle: FontStyle.normal),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            padding: const EdgeInsets.only(left: 30),
                            height: 30,
                            width: MediaQuery.of(context).size.width,
                            child: RichText(
                              text: TextSpan(
                                style: Theme.of(context).textTheme.bodyLarge,
                                children: const [
                                  WidgetSpan(
                                    child: Padding(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 2.0),
                                      child: Icon(Icons.accessibility),
                                    ),
                                  ),
                                  TextSpan(
                                    text: 'Challenges',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20.0),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: 170,
                              width: 340,
                              decoration: BoxDecoration(
                                  image: const DecorationImage(
                                    image:
                                        AssetImage("assets/700_challenge.png"),
                                    fit: BoxFit.cover,
                                  ),
                                  borderRadius: BorderRadius.circular(10)),
                              padding: const EdgeInsets.only(top: 135),
                              child: RichText(
                                text: const TextSpan(
                                  children: [
                                    WidgetSpan(
                                      child: Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 2.0),
                                        child: Icon(Icons.accessibility),
                                      ),
                                    ),
                                    TextSpan(
                                      text: 'Step up your fitness game',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15.0),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(top: 4.0, left: 5.0),
                            child: SizedBox(
                              height: 20,
                              width: 340,
                              child: Text(
                                "Hey Ramesh,heres your progress for the day",
                                style: TextStyle(color: Colors.grey),
                              ),
                            ),
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: 260,
                                child: Row(
                                  children: [
                                    Container(
                                      height: 150,
                                      width: 70,
                                      decoration: const BoxDecoration(
                                          color: Colors.amber,
                                          shape: BoxShape.circle),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 100,
                                child: Row(
                                  children: [
                                    Container(
                                      height: 150,
                                      width: 70,
                                      decoration: const BoxDecoration(
                                          color: Colors.amber,
                                          shape: BoxShape.circle),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
