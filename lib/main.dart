import 'package:flutter/material.dart';
import 'package:flutter_app1/pages/home_page.dart';
import 'package:flutter_app1/pages/login_page.dart';
import 'package:flutter_app1/pages/main_page.dart';
import 'package:flutter_app1/styles/app_colors.dart';

void main() {
  runApp(MyApp() );
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Urbanist',
        scaffoldBackgroundColor: AppColors.background,
        brightness: Brightness.dark,
        ),
      initialRoute: '/',
      routes: {
        '/':(context) => LoginPage(), //added to avoid the error 'No route defined for /
        '/home':(context) => HomePage(),
        '/main':(context) => MainPage(),
      }
    );
  }
}