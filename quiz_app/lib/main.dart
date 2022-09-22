/**
 * in pubspec.yaml we have dependemcies 
 * to inform about that we do import those pacakages 
 * we can import form our own folder as well
 * but flutter provide special pacakages
 * we will be using material.dart 
 */
import 'package:flutter/material.dart';

void main() {
  runApp(
      MyApp()); // runApp is a method of material.dart that takes our widget tree class and runs that
}

// void main() ==> runApp(MyApp());    --> Short Notation

/**
 * StatelessWidget is a Base class present in material.dart pacakage
 * we need to override the build method of StatelessWidget class 
 * build function has special input parameter BuildContext 
 * build function return type is Widget 
 */
class MyApp extends StatelessWidget // class name in capital
{
  Widget build(BuildContext context) {
    return MaterialApp(
      // MaterialApp is a Class which is taking argument of type Text : constructor
      home: Text(
          'Hello'), // home:   --> this is used based on concept of named argument --> useful when we have lot of argmnets
    ); //
  }
}
