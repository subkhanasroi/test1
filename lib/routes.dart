
import 'package:flutter/material.dart';
import 'package:test1/login.dart';
import 'package:test1/register.dart';

final Map<String, WidgetBuilder> routes = {
  RegisterScreen.routeName: (context) => RegisterScreen(),
  LoginScreen.routeName: (context) => LoginScreen(),
};
