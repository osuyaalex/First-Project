import 'package:flutter/material.dart';
import 'package:newproject/src/screens/home.dart';
import 'package:newproject/src/screens/login.dart';
import 'package:newproject/src/widgets/Register.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Food App',
      theme: ThemeData(

        primarySwatch: Colors.red,
      ),
      home: RegisterationScreen(),
    );
  }
}

