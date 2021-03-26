import 'package:flutter/material.dart';
import 'package:test1/Register/main_register.dart';
import 'package:test1/Register/upload_data.dart';
import 'file:///C:/Users/lenovo/Documents/test1/lib/Login/login.dart';

final Map<String, WidgetBuilder> routes = {
  MainRegister.routeName: (context) => MainRegister(),
  LoginScreen.routeName: (context) => LoginScreen(),
  PersonalDataPage.routeName: (context) => PersonalDataPage(),
  // HomepageScreen.routeName: (context) => HomepageScreen(),
};
