import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';
import 'dart:async';
import 'package:intl/intl.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {


  List data;


  @override
  Widget build(BuildContext context) {

    data = ModalRoute.of(context).settings.arguments;

    print(data);

    return new Scaffold(
      appBar: new AppBar(
        title: Text("Home"),
        backgroundColor: Colors.orange[800],
        centerTitle: true,
      ),
      body: SafeArea(
          child: Container(
            decoration: BoxDecoration(
              color: Colors.grey[400],
            ),
            child: new Center(
              child: new Column(
                children: [
                  Row(
                    children: [
                      SizedBox(height: 130, width: 10),
                      Expanded(
                        child: Container(
                          height: 90,
                          padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Antall Tennants registrert",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 18,
                                ),
                              ),
                              SizedBox(height: 4),
                              Text(
                                "${data.length}",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 22,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 130, width: 10),
                      Expanded(
                        child: Container(
                          height: 100,
                          padding: EdgeInsets.fromLTRB(5, 5, 3, 5),
                          child: FlatButton(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                            color: Colors.white,
                            onPressed: () {
                              Navigator.pushNamed(context, "/tennant_view", arguments: data);
                            },
                            child: Text(
                                "Tennant info",
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 100, width: 10),
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(width: 10),
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: FlatButton(
                            onPressed: () {
                              Navigator.pushReplacementNamed(context, "/login");
                            },
                            child: Text(
                              "LogOut",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                    ],
                  ),
                ],
              ),
            ),
          ),
      ),
    );
  }
}


