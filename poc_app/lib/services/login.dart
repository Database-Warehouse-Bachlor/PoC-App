
import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {

  String username = 'admin';
  String password = 'admin';

  String unameErrorText = 'Username is wrong';
  String pwdErrorText = 'Password is wrong';

  bool _unameValidation = false;
  bool _pwdValidation = false;

  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void dispose() {
    usernameController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  Future<void> authUser() {
    String unameInput = usernameController.text;
    String pwdInput = passwordController.text;

    if(!(unameInput == username)) {
      print('Username is wrong');
      print('Needed uname: $username');
      print('Input value: $unameInput');
    }
    if(!(pwdInput == password)) {
      print('Password is wrong');
      print(pwdInput);
    }
    if(unameInput == username && pwdInput == password) {
        print('Login success!');
        Navigator.pushNamed(context, '/');
    }
  }

  bool validateTextField(String input) {
    if(input.isEmpty) {
      setState(() {
        _unameValidation = true;
        _pwdValidation = true;
      });
    }
    if(input == username) {
      setState(() {
        _unameValidation = false;
      });
    }
    if(input == password) {
      setState(() {
        _pwdValidation = false;
      });
    }
    if(!(input == username)) {
      setState(() {
        _unameValidation = true;
      });
    }
    return true;
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
                  errorText: _unameValidation ? unameErrorText : null,
                  border: OutlineInputBorder(),
                  labelText: 'Organization number',
                  labelStyle: TextStyle(
                    fontSize: 20.0,
                    color: Colors.deepOrange
                  ),
                ),
                controller: usernameController,
              ),
              SizedBox(height: 50.0),
              TextField(
                decoration: InputDecoration(
                  errorText: _pwdValidation ? pwdErrorText : null,
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                  labelStyle: TextStyle(
                    fontSize: 20.0,
                      color: Colors.deepOrange
                  ),
                ),
                controller: passwordController,
                obscureText: true,
              ),
              SizedBox(height: 30.0),
              Container(
                margin: EdgeInsets.all(25.0),
                child: SizedBox(width: 200.0,
                  child: RaisedButton(onPressed: () {
                    validateTextField(usernameController.text);
                    validateTextField(passwordController.text);
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
