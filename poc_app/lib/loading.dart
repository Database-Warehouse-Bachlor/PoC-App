import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:http/http.dart';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  final String url = "api.mocki.io/v1/a50e1e00";
  List data;

  @override
  void initState() {
    super.initState();
    print(url);
    this.getJsonData();
  }

  Future<String> getJsonData() async {
    var response = await get("http://api.mocki.io/v1/a50e1e00");

    print(response.body);

    setState(() {
      var convertDataToJson = jsonDecode(response.body);
      data = convertDataToJson;

      Navigator.pushReplacementNamed(context, "/login", arguments: data);

    });
  }

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        backgroundColor: Colors.blue[900],
        body: Center(
          child: SpinKitRotatingCircle(
            color: Colors.white,
            size: 80.0,
          ),
        ),
      );
    }
  }

