import 'dart:async';

import 'package:flutter/material.dart';
import 'package:test1/login.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final splashDelay = 2;
  @override
  void initState() {
    super.initState();
    _loadWidget();
  }

  _loadWidget() async {
    var _duration = Duration(seconds: splashDelay);
    return Timer(_duration, navigationPage);
  }

  void navigationPage() {
    Navigator.pushReplacement(context,
        MaterialPageRoute(builder: (BuildContext context) => LoginScreen()));
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(top: 250, left: 25),
              child: Image(
                image: AssetImage('assets/awan_logo.png'),
              ),
            ),
            Container(
              child: Column(
                children: [
                  Image(
                    image: AssetImage('assets/awan_clean.png'),
                  ),
                  Image(
                    image: AssetImage('assets/housekeeper.png'),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
