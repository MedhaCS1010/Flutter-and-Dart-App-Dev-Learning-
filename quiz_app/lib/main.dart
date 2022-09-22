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

// void main() ==> runApp(MyApp());    --> Short Notatio

/**
 * StatelessWidget is a Base class present in material.dart pacakage
 * we need to override the build method of StatelessWidget class 
 * build function has special input parameter BuildContext 
 * build function return type is Widget 
 */
class MyApp extends StatelessWidget // class name in capital
{
  Widget build(BuildContext context) {
    // return MaterialApp( home: Text( 'Hello'),);
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Medha'),
        ),
        body: Text('This is my default text!'),
      ),
    );
  }
}
