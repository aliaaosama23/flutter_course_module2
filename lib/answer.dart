// import material file form flutter package

import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;
  final String answerText;

  // Answer constructor is a pointer at the answerQuestion
  // this pointer stored in this property : selectHandler
  Answer(this.selectHandler,this.answerText);

  @override
  Widget build(BuildContext context) {
    // container to control width
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.blue),
          foregroundColor: MaterialStateProperty.all(Colors.white),
        ),
        onPressed: selectHandler,
        child: Text(answerText),
      ),
    );
  }
}
