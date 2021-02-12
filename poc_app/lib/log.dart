import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';
import 'dart:async';
import 'package:intl/intl.dart';

class Log extends StatefulWidget {
  @override
  LogState createState() => LogState();
}

class LogState extends State<Log> {

  List data;

  @override
  Widget build(BuildContext context) {

    data = ModalRoute.of(context).settings.arguments;

    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.orange[800],
        title: Text("Hente info"),
      ),
      body: Container(
        decoration: BoxDecoration(
            color: Colors.grey[400]),
        child: new ListView.builder(
          itemCount: data == null ? 0 : data.length,
          itemBuilder: (BuildContext context, int index) {
            return new Container(
              padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
              child: new Center(
                child: new Column(
                  children: [
                    SizedBox(height: 5),
                    new Card(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(16, 16, 16, 16),
                        child: new Container(
                          child: new Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              new Text(
                                data[index]["tennant_name"],
                                style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 6),
                              new Text(
                                data[index]["error_log"],
                                style: TextStyle(
                                    fontSize: 20
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}