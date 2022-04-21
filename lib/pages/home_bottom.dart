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
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
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
                child: Column(
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
                                padding: EdgeInsets.symmetric(horizontal: 2.0),
                                child: Icon(Icons.accessibility),
                              ),
                            ),
                            TextSpan(
                              text: 'Challenges',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20.0),
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
                              image: AssetImage("assets/700_challenge.png"),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.circular(10)),
                        padding: const EdgeInsets.only(top: 135),
                        child: RichText(
                          text: const TextSpan(
                            children: [
                              WidgetSpan(
                                child: Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 2.0),
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
                          width: MediaQuery.of(context).size.width,
                          child: Row(
                            children: [
                              Container(
                                margin: const EdgeInsets.only(
                                    left: 30, right: 10.0),
                                height: 160,
                                width: 80,
                                decoration: const BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage('assets/home.jpg'),
                                  ),
                                  color: Colors.black,
                                  shape: BoxShape.circle,
                                  boxShadow: [
                                    BoxShadow(
                                        spreadRadius: 8.0,
                                        color: Colors.orange),
                                  ],
                                ),
                                padding:
                                    const EdgeInsets.only(top: 135, left: 8),
                                child: const Text(
                                  "DISTANCE",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ),
                              const SizedBox(
                                width: 25.0,
                              ),
                              Container(
                                margin: const EdgeInsets.only(right: 10.0),
                                height: 160,
                                width: 100,
                                decoration: const BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage('assets/home.jpg'),
                                      fit: BoxFit.fill),
                                  color: Colors.grey,
                                  shape: BoxShape.circle,
                                  boxShadow: [
                                    BoxShadow(
                                        spreadRadius: 8.0,
                                        color: Colors.blueGrey),
                                  ],
                                ),
                                padding:
                                    const EdgeInsets.only(top: 145, left: 35),
                                child: const Text(
                                  "STEP",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ),
                              const SizedBox(
                                width: 25.0,
                              ),
                              Container(
                                height: 150,
                                width: 80,
                                decoration: const BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage('assets/home.jpg'),
                                      fit: BoxFit.fill),
                                  color: Colors.grey,
                                  shape: BoxShape.circle,
                                  boxShadow: [
                                    BoxShadow(
                                        spreadRadius: 8.0, color: Colors.blue),
                                  ],
                                ),
                                padding:
                                    const EdgeInsets.only(top: 135, left: 8.0),
                                child: const Text(
                                  "CALORIES",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 50.0, left: 30),
                      child: Row(
                        children: [
                          Container(
                            height: 160,
                            width: 160,
                            decoration: BoxDecoration(
                              border: Border.all(width: 2.0),
                              color: Colors.blueGrey,
                              borderRadius: BorderRadius.circular(15),
                              boxShadow: const [
                                BoxShadow(
                                  color: Colors.black,
                                  blurRadius: 5.0,
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          Container(
                            height: 160,
                            width: 160,
                            decoration: BoxDecoration(
                              border: Border.all(width: 2.0),
                              color: Colors.lightBlue,
                              borderRadius: BorderRadius.circular(15),
                              boxShadow: const [
                                BoxShadow(
                                  color: Colors.black,
                                  blurRadius: 5.0,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15.0, left: 30),
                      child: Row(
                        children: [
                          Container(
                            height: 160,
                            width: 160,
                            decoration: BoxDecoration(
                              border: Border.all(width: 2.0),
                              color: Colors.orangeAccent,
                              borderRadius: BorderRadius.circular(15),
                              boxShadow: const [
                                BoxShadow(
                                  color: Colors.black,
                                  blurRadius: 5.0,
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          Container(
                            height: 160,
                            width: 160,
                            decoration: BoxDecoration(
                              border: Border.all(width: 2.0),
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(15),
                              boxShadow: const [
                                BoxShadow(
                                  color: Colors.black,
                                  blurRadius: 5.0,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(left: 30, top: 20),
                      height: 300,
                      width: MediaQuery.of(context).size.width,
                      child: RichText(
                        text: TextSpan(
                          style: Theme.of(context).textTheme.bodyLarge,
                          children: const [
                            WidgetSpan(
                              child: Padding(
                                padding: EdgeInsets.symmetric(horizontal: 2.0),
                                child: Icon(Icons.wine_bar),
                              ),
                            ),
                            TextSpan(
                              text: 'Recent Trophies',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20.0),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
