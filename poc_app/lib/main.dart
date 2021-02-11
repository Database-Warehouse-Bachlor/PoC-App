import 'package:flutter/material.dart';
import 'package:poc_app/loading.dart';
import 'package:poc_app/tennant_view.dart';
import 'Home.dart';
import 'package:poc_app/services/login.dart';
import 'package:poc_app/log.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: "/login",
    routes: {
      "/login": (context) => Login(),
      "/loading": (context) => Loading(),
      "/log": (context) => Log(),
      "/home": (context) => Home(),
      "/home/tennant_view": (context) => Tennant_View(),
    },
  ));
}

