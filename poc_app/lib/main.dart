import 'package:flutter/material.dart';
import 'package:poc_app/loading.dart';
import 'package:poc_app/tennant_view.dart';
import 'Home.dart';
import 'package:poc_app/services/login.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: "/",
    routes: {
      "/": (context) => Login(),
      "/loading": (context) => Loading(),
      "/home": (context) => Home(),
      "/tennant_view": (context) => Tennant_View(),
    },
  ));
}

