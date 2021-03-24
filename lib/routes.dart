import 'package:flutter/material.dart';
import 'package:test1/Register/main_register.dart';
import 'package:test1/Register/register_verification.dart';
import 'package:test1/Register/upload_data.dart';
import 'package:test1/Register/login.dart';

final Map<String, WidgetBuilder> routes = {
  MainRegister.routeName: (context) => MainRegister(),
  LoginScreen.routeName: (context) => LoginScreen(),
  PersonalDataPage.routeName: (context) => PersonalDataPage(),
  Verification.routeName: (context) => Verification(),
  // HomepageScreen.routeName: (context) => HomepageScreen(),
};
