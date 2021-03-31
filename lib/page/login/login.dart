import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:test1/common/constans/image.dart';
import 'package:test1/page/login/forget_password.dart';
import 'package:test1/page/register/main_register.dart';
import 'package:test1/tool/helper.dart';
// s

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  GlobalKey<ScaffoldState> _scaffoldKey;

  @override
  void initState() {
    super.initState();
    _scaffoldKey = new GlobalKey<ScaffoldState>();
  }

  // TextEditingController _email = TextEditingController();
  // TextEditingController _password = TextEditingController();

  final _formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
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
                image: AssetImage(kImgLogo1),
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

class NoAccountText extends StatefulWidget {
  const NoAccountText({
    Key key,
  }) : super(key: key);

  @override
  _NoAccountTextState createState() => _NoAccountTextState();
}

class _NoAccountTextState extends State<NoAccountText> {
  Helper _helper;

  void initState() {
    super.initState();
    _helper = new Helper();
  }

  void _toRegisterPage() {
    _helper.jumpToPage(context, page: MainRegister());
  }

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
            onTap: _toRegisterPage,
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
