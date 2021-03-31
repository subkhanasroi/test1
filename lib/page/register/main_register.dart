import 'package:flutter/material.dart';
import 'package:test1/page/register/personal_screen.dart';

class MainRegister extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text('Register'),
      ),
      body: RegisterPage(),
    );
  }
}
