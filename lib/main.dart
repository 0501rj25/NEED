import 'package:flutter/material.dart';
import 'package:flutter_need/login.dart';
import 'package:flutter_need/register.dart';
import 'forget.dart';
import 'home.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'login',
    routes: {
      'login': (context) => const MyLogin(),
      'register': (context) => const MyRegister(),
      'home': (context) => const MyHome(),
      'forget': (context) => const MyForget()
    },
  ));
}
