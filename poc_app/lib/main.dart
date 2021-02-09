import 'package:flutter/material.dart';
import 'package:poc_app/tennant_view.dart';
import 'Home.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: "/",
    routes: {
      "/": (context) => Home()
    },
  ));
}

