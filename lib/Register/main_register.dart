import 'package:flutter/material.dart';
import 'package:test1/Register/personal_screen.dart';



class MainRegister extends StatelessWidget {
  static String routeName = "/register";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.grey[300]),
      debugShowCheckedModeBanner: false,
      title: 'Register',
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.black),
            onPressed: () => Navigator.of(context).pop(),
          ),
          title: Text('Register'),
        ),
        body: RegisterPage(),
      ),
    );
  }
}
