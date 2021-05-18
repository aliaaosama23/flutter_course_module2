import 'package:flutter/material.dart';
import './result.dart';
import './quiz.dart';

// app strats here
void main() => runApp(MyApp());

// stateless is class provided by flutter
// يرث خصائص ويدكت علشان الكلاس دة يبقي ويدجت
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

// _ turn class to private class only used in thid file : main dart file
class _MyAppState extends State<MyApp> {
  // under score to make it private property used only in this file
  var _questionIndex = 0;
  var _totalScore=0;

  //  questions is list of string data
  final _questions = const [
    // map have key value pairs
    {
      //key is  string     //value  can be any type of data
      'questionText': 'what\'s your favourite color?',
      'answers': [
        {'text': 'Blue', 'score': 10},
        {'text': 'Green', 'score': 5},
        {'text': 'Red', 'score': 4},
        {'text': 'White', 'score': 3}
      ]
    },
    {
      'questionText': 'what\'s your favourite animal?',
      'answers': [
        {'text': 'Rabbit', 'score': 20},
        {'text': 'Snake', 'score': 21},
        {'text': 'Lion', 'score': 11},
        {'text': 'Elephant', 'score': 10}
      ]
    },
    {
      'questionText': 'who\'s your favourite instructor?',
      'answers': [
        {'text': 'Max', 'score':1},
        {'text': 'Max', 'score': 1},
        {'text': 'Max', 'score': 1},
        {'text': 'Max', 'score': 1}
      ]
    }
  ];

  // function or method take anonnymous function as an arguemnt
  void _answerQuestion(int score) {
    // function forces flutter to rerender and ui calls build again

    _totalScore+=score;

    setState(() {
      _questionIndex = _questionIndex + 1;
      print(_questionIndex);
    });

    if (_questionIndex < _questions.length) {
      print('we have more questios!');
    }else{
      print('no more questions');
    }
  }


  void _resetQuiz(){
    setState(() {
      _questionIndex=0;
      _totalScore=0;
    });
  }

  @override
  Widget build(BuildContext context) {
    // questions=[];  // this not allowed if questions is const

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'My Frist App',
          ),
        ),
        //Center(child: Text('you did it !'),):
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questions: _questions,
                questionIndex: _questionIndex)
            : Result(_totalScore,_resetQuiz),
      ),
    );
  }
}
