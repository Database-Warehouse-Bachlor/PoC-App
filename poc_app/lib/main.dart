import 'package:flutter/material.dart';
import 'package:poc_app/loading.dart';
import 'package:poc_app/tennant_view.dart';
import 'Home.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: "/",
    routes: {
      "/": (context) => Loading(),
      "/home": (context) => Home(),
      "/tennant_view": (context) => Tennant_View(),
    },
  ));
}

