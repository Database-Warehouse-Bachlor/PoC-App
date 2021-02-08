import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: "/",
    routes: {
      "/": (context) => Loading(),
      "/home": (context) => Home(),
      "/tennants": (context) => Tennants(),
      "/log": (context) => Log()
    },
  ));
}

