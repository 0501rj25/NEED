import 'package:flutter/material.dart';
import 'package:flutter_need/pages/login.dart';
import 'package:flutter_need/pages/register.dart';
import 'pages/forget.dart';
import 'pages/home.dart';

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
