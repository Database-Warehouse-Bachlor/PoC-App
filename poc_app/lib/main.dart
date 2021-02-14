import 'dart:io';

import 'package:flutter/material.dart';
import 'package:poc_app/loading.dart';
import 'package:poc_app/tennant_view.dart';
import 'Home.dart';
import 'package:poc_app/services/login.dart';
import 'package:poc_app/log.dart';


void main() {

  HttpOverrides.global = new MyHttpOverrides();
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

class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext context) {
    return super.createHttpClient(context)
      ..badCertificateCallback = (X509Certificate cert, String host, int port) => true;
  }
}

