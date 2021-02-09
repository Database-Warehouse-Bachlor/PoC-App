import 'package:flutter/material.dart';
import 'Home.dart';
import 'package:poc_app/services/login.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: "/login",
    routes: {
      "/": (context) => Home(),
      "/login": (context) => Login()
    },
  ));
}

