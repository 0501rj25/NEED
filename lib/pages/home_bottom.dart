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
                            height: 200,
                            width: MediaQuery.of(context).size.width,
                            child: RichText(
                              text: TextSpan(
                                style: Theme.of(context).textTheme.bodyLarge,
                                children: const [
                                  //TextSpan(text: 'Created with '),
                                  WidgetSpan(
                                    child: Padding(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 2.0),
                                      child: Icon(Icons.accessibility),
                                    ),
                                  ),
                                  TextSpan(
                                    text: '  Challenges',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20.0),
                                  ),
                                ],
                              ),
                            ),
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
