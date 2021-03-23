import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:test1/register.dart';

class LoginScreen extends StatefulWidget {
  static String routeName = '/Login';
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        padding: EdgeInsets.only(top: 125),
        child: Center(
          child: Column(
            children: [
              Text(
                "WELCOME",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Image(
                image: AssetImage('assets/awan_clean.png'),
              ),
              Container(
                padding: EdgeInsets.only(left: 50, right: 50, top: 100),
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.circular(10)),
                      child: Email(),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.circular(10)),
                      child: Password(),
                    ),
                    Row(
                      children: [
                        Text("Forgot Password?",
                            style: TextStyle(
                              fontSize: 13,
                            )),
                        GestureDetector(
                          onTap: () {},
                          child: Text(
                            "Click Here",
                            style: TextStyle(
                                fontSize: 13, color: Colors.blue[400]),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 50,
                width: 125,
                child: FlatButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  color: Colors.blue,
                  onPressed: () {},
                  child: Text(
                    "Login",
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Container(
                padding: EdgeInsets.only(left: 75, right: 75),
                child: Row(
                  children: [
                    Text("Dont Have an account?",
                        style: TextStyle(
                          fontSize: 16,
                        )),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, RegisterScreen.routeName);
                      },
                      child: Text(
                        "Sign Up",
                        style: TextStyle(fontSize: 16, color: Colors.blue[400]),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Email extends StatelessWidget {
  const Email({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: TextStyle(fontSize: 20),
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.email),
        border: InputBorder.none,
        hintText: 'Email',
      ),
    );
  }
}

class Password extends StatelessWidget {
  const Password({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: TextStyle(fontSize: 20),
      decoration: InputDecoration(
        border: InputBorder.none,
        prefixIcon: Icon(Icons.lock),
        hintText: 'Password',
      ),
    );
  }
}
