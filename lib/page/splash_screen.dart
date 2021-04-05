import 'dart:async';

import 'package:flutter/material.dart';
import 'package:test1/common/constans.dart';
import 'package:test1/page/login/login.dart';
import 'package:test1/tool/helper.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  Helper _helper;
  final splashDelay = 2;

  @override
  void initState() {
    super.initState();
    _helper = new Helper();
    _loadWidget();
  }

  _loadWidget() async {
    var _duration = Duration(seconds: splashDelay);
    return Timer(_duration, _toLoginScreen);
  }

  void _toLoginScreen() {
    _helper.jumpToPage(context, page: LoginScreen());
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(top: 250, left: 25),
              child: Image(
                image: AssetImage(kImgLogo),
              ),
            ),
            Container(
              child: Column(
                children: [
                  Image(
                    image: AssetImage(kImgLogo1),
                  ),
                  Image(
                    image: AssetImage(kImgLogo2),
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
