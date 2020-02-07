import 'package:flutter/material.dart';
import 'package:omstay_indonesia/view/dashboard.dart';
import 'package:omstay_indonesia/view/getting_started.dart';
import 'package:omstay_indonesia/view/login_screen.dart';
import 'package:omstay_indonesia/view/signup_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: Color(0xFF3EBACE),
        accentColor: Color(0xFFD8ECF1),
        scaffoldBackgroundColor: Color(0xFFF3F5F7)
      ),
      home: GettingStarted(),
      routes: {
        LoginScreen.routeName: (ctx) => LoginScreen(),
        SignUpScreen.routeName: (ctx) => SignUpScreen(),
        Dashboard.routeName: (ctx) => Dashboard(),
        
      },
    );
  }
}