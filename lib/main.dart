import 'package:flutter/material.dart';
import 'package:omstay_indonesia/view/getting_started.dart';

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
      ),
      home: GettingStarted(),
      // routes: {
      //   LoginScreen.routeName: (ctx) => LoginScreen(),
      //   SignupScreen.routeName: (ctx) => SignupScreen(),
      // },
    );
  }
}