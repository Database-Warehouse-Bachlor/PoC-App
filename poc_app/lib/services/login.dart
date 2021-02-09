
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       title: Text("Login to this cool app.",
       ),
        centerTitle: true,
    ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20, 50, 20, 20),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Login', style: TextStyle(
                fontSize: 30.0,
                color: Colors.grey[700]
              ),
              ),
              SizedBox(height: 70.0),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Organization number',
                  labelStyle: TextStyle(
                    fontSize: 20.0,
                    color: Colors.blue
                  ),
                ),
              ),
              SizedBox(height: 50.0),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                  labelStyle: TextStyle(
                    fontSize: 20.0,
                      color: Colors.blue
                  ),
                ),
                obscureText: true,
              ),
              SizedBox(height: 30.0),
              Container(
                margin: EdgeInsets.all(25.0),
                child: SizedBox(width: 200.0,
                  child: RaisedButton(onPressed: () {
                      SpinKitFadingCircle(
                        color: Colors.blue,
                      );
                   // Navigator.pushReplacementNamed(context, '/');
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
