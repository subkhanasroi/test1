import 'package:flutter/material.dart';
import 'package:test1/common/styles.dart';
import 'package:test1/page/splash_screen.dart';

class HouseKeeper extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: tdMain(context),
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
