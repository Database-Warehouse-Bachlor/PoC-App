import 'package:flutter/material.dart';
import 'Home.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: "/login",
    routes: {
      "/": (context) => Home()
    },
  ));
}

