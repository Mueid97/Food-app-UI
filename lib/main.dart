import 'package:flutter/material.dart';
import 'package:foodpandda/home/home_screen.dart';
import 'package:foodpandda/login_signup/login.dart';
import 'package:foodpandda/login_signup/signup.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.pink),
      home: HomeScreen(),
      routes: {
        '/': (context) => SignUp(),
        '/signup': (context) => SignUp(),
        '/login': (context) => LogIn(),
      },
    );
  }
}
