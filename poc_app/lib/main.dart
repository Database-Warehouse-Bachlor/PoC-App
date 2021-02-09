import 'package:flutter/material.dart';
import 'package:poc_app/services/login.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: "/login",
    routes: {
      //"/": (context) => Loading(),
      "/login": (context) => Login(),
     // "/home": (context) => Home(),
    //  "/tennants": (context) => Tennants(),
   //   "/log": (context) => Log()
    },
  ));
}

