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
  var questionIndex = 0; // variable used to choose question number

  void answerQuestion() {
    // function to dynamically change the question to be displayed
    questionIndex = questionIndex + 1;
    print(questionIndex); // just debugging purpose
  }

  @override //bcz we have overriden the build function of Material.dart
  Widget build(BuildContext context) {
    var questions = ['What\'s your name?', 'How are you?']; //just example

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Medha'),
        ),
        body: Column(children: <Widget>[
          Text(questions[
              questionIndex]), //Change question Index dynamically whenever press a button

          ElevatedButton(
              onPressed: answerQuestion, // reference to answerQuestion function
              child: Text('Medha')),

          ElevatedButton(onPressed: answerQuestion, child: Text('Medha1')),
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
