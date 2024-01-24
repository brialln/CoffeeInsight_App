import 'package:coffee_insight/pages/home_page.dart';
import 'package:coffee_insight/styles/app_colors.dart';
import 'package:flutter/material.dart';

import 'pages/signup_page.dart';
import 'pages/login_page.dart';
import 'pages/forgot-pass_page.dart';
import 'pages/front_page.dart';

import 'pages/main_page.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
             fontFamily: 'Poppins',
             scaffoldBackgroundColor: AppColors.background,
             brightness: Brightness.light,
             
      ),
      initialRoute:'/',
      routes: {
        '/':(context) => FrontPage(),
        '/login':(context) => LoginPage(),
        '/signup': (context) => SignUpPage(),
        '/forgot-pass': (context) => ForgotPassPage(),
        '/home':(context) => HomePage(),
        '/main': (context) => MainPage(),
      },
    );
  }
}