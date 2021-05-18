import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  // final means that questionText will never
  // change its value after it intailized in the contructor
  final String questionText;

  // question text is postional argument: 
  //this mean the frist argument pass to constructor its value go to intailze the questionText property
  // to convert to named argument : {thisquestionText}
  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      // symmetric is named (special) constructor for EdgeInsets class
      // EdgeInsets has multiple special constructors
      margin: EdgeInsets.symmetric(vertical: 10.0),
      child: Text(
        // this postional argument
        questionText,
        // this named argument
        style: TextStyle(fontSize: 24.0),
        textAlign: TextAlign.center,
      ),
    );
  }
}
