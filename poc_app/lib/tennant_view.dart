import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';
import 'dart:async';
import 'package:intl/intl.dart';

class Tennant_View extends StatefulWidget {
  @override
  _Tennant_ViewState createState() => _Tennant_ViewState();
}

class _Tennant_ViewState extends State<Tennant_View> {

  final String url = "api.mocki.io/v1/a50e1e00";
  List data;

  @override
  void initState() {
    super.initState();
    print(url);
    this.getJsonData();
  }

  Future<String> getJsonData() async {
    Response response = await get("http://api.mocki.io/v1/a50e1e00");

    print(response.body);

    setState(() {
      data = jsonDecode(response.body);

      print(data.length);
    });
    return "Success";
  }


  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: Text("Hente info"),
      ),
      body: new ListView.builder(
        itemCount: data == null ? 0 : data.length,
        itemBuilder: (BuildContext context, int index) {
          return new Container(
            child: new Center(
              child: new Column(
                children: [
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
                                  fontSize: 20
                              ),
                            ),
                            SizedBox(height: 6),
                            new Text(
                              data[index]["city"],
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
    );
  }
}
