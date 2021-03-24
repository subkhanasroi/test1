import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:test1/Register/main_register.dart';
// s

class LoginScreen extends StatefulWidget {
  static String routeName = '/Login';
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  // TextEditingController _email = TextEditingController();
  // TextEditingController _password = TextEditingController();

  final _formKey = GlobalKey();
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
                child: Form(
                  key: _formKey,
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
                      ForgotPassword(),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              ButtonLogin(),
              SizedBox(
                height: 25,
              ),
              NoAccountText(),
            ],
          ),
        ),
      ),
    );
  }
}

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text("Forgot Password?",
            style: TextStyle(
              fontSize: 13,
            )),
        GestureDetector(
          onTap: () {},
          child: Text(
            "Click Here",
            style: TextStyle(fontSize: 13, color: Colors.blue[400]),
          ),
        ),
      ],
    );
  }
}

class NoAccountText extends StatelessWidget {
  const NoAccountText({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 75, right: 75),
      child: Row(
        children: [
          Text("Dont Have an account?",
              style: TextStyle(
                fontSize: 16,
              )),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, MainRegister.routeName);
            },
            child: Text(
              "Sign Up",
              style: TextStyle(fontSize: 16, color: Colors.blue[400]),
            ),
          ),
        ],
      ),
    );
  }
}

class ButtonLogin extends StatelessWidget {
  const ButtonLogin({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: 125,
      child: MaterialButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        color: Colors.blue,
        onPressed: () {},
        child: Text(
          "Login",
          style: TextStyle(
            fontSize: 18,
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
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter some text';
        }
        return null;
      },
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
