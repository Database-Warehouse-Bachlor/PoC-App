import 'package:flutter/material.dart';
import 'Home.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: "/",
    routes: {
      "/": (context) => Home()
    },
  ));
}

