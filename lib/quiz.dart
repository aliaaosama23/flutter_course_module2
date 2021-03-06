import 'package:flutter/material.dart';
import './answer.dart';
import './question.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function answerQuestion;

  Quiz(
      {@required this.questions,
      @required this.answerQuestion,
      @required this.questionIndex});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Question(questions[questionIndex]['questionText']
            as String), //Text(questions.elementAt(0)),
        // column has a nested list to solve this we use speard opreator
        // ... to add nested list values to the main list (column)
        ...(questions[questionIndex]['answers'] as List<Map<String,Object>>)
            .map((answer) => Answer(()=>answerQuestion(answer['score']), answer['text']))
            .toList(),
      ],
    );
  }
}
