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

/**
 * Body with multiple widget 
 * using concept of invisible widget for formatting 
 * use invisible widget like coloumn or row --> kind of list 
 * 
 */
class MyApp extends StatelessWidget // class name in capital
{
  @override //bcz we have overriden the build function of Material.dart
  Widget build(BuildContext context) {
    var chooseOne = ['What\'s your name?', 'How are you?']; //just example

    //function to be used with onPressed of ElevatedButton
    void functionUse() {
      print('lEARNING RELATION BETWEEN BUTTON AND CALL ');
    }

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Medha'),
        ),
        body: Column(children: <Widget>[
          // Row or Column invisible widget
          //tells dart that it holds list of widget
          Text('My name is medha'),
          ElevatedButton(
              onPressed: functionUse, //pass reference to the function
              child: Text('Medha')), // onPressed -> functinon | child -> text
          ElevatedButton(onPressed: functionUse, child: Text('Medha1')),
        ]),
      ),
    );
  }
}

/** 
 * Body with single widget 
 * 
class MyApp extends StatelessWidget // class name in capital
{
  Widget build(BuildContext context) {
    // return MaterialApp( home: Text( 'Hello'),);
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Medha'),
        ),
        //   body: Text('This is my default text!'),   --> to have multiple widget in body
        body: Text('This is my default text!'),
      ),
    );
  }
}

*/
