
import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:poc_app/Client.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {

  String unameErrorText = 'Username is wrong';
  String pwdErrorText = 'Password is wrong';

  final username = TextEditingController();
  final password = TextEditingController();

  @override
  void dispose() {
    username.dispose();
    password.dispose();
    super.dispose();
  }

  Future<String> authUser() async {

    String uname = username.text.toString();
    String pwd = password.text.toString();

    ApiClient client = new ApiClient();
    print(username);
    print(password);
    String url = "http://10.0.2.2:5000/api/commands/login?username=$uname&password=$pwd";
    print(url);
    String response = await client.getClient(url);
    print(response);

    if(response == "1") {
      print("Success");
      Navigator.pushReplacementNamed(context, "/loading");
    } else {
      print("Login failed");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       title: Text("Login to this cool app.",
       ),
        backgroundColor: Colors.orange[800],
        centerTitle: true,
    ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20, 50, 20, 20),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/Cordel.png',
              scale: 4),
              SizedBox(height: 20),
              Text('Cordel Norge AS', style: TextStyle(
                fontSize: 30.0,
                color: Colors.grey[700]
              ),
              ),
              SizedBox(height: 40.0),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Organization number',
                  labelStyle: TextStyle(
                    fontSize: 20.0,
                    color: Colors.deepOrange
                  ),
                ),
                controller: username,
              ),
              SizedBox(height: 50.0),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                  labelStyle: TextStyle(
                    fontSize: 20.0,
                      color: Colors.deepOrange
                  ),
                ),
                controller: password,
                obscureText: true,
              ),
              SizedBox(height: 30.0),
              Container(
                margin: EdgeInsets.all(25.0),
                child: SizedBox(width: 200.0,
                  child: RaisedButton(onPressed: () {
                    authUser();
                  },
                    child: Text('Login',
                    style: TextStyle(fontSize: 20.0,
                    color: Colors.grey[700],
                    )
                    ),
                    color: Colors.redAccent[500],

                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
