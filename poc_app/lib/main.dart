import 'package:flutter/material.dart';
import 'package:poc_app/loading.dart';
import 'Home.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: "/",
    routes: {
      "/": (context) => Loading(),
      "/login": (context) => Login(),
      "/home": (context) => Home(),
    },
  ));
}

