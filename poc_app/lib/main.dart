import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: "/login",
    routes: {
      "/": (context) => Loading(),
      "/login": (context) => Login(),
      "/home": (context) => Home(),
      "/tennants": (context) => Tennants(),
      "/log": (context) => Log()
    },
  ));
}

