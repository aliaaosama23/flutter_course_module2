import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);

  // normal property
  String get resultPhrase {
    var resultText = 'you did it';

    if (resultScore <= 8) {
      resultText = 'Bad!';
    } else if (resultScore <= 12) {
      resultText = 'Pretty likable';
    } else if (resultScore >= 30) {
      resultText = 'Good';
    } else {
      resultText = "Awesome";
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text('your score is $resultScore'),
          Text(
            resultPhrase,
            style: TextStyle(
              fontSize: 36.0,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          TextButton(
              style: TextButton.styleFrom(
                  primary: Colors
                      .green), // ButtonStyle(foregroundColor: MaterialStateProperty.all(Colors.blue)),
              onPressed: resetHandler,
              child: Text(
                'restart quiz',
                // style: TextStyle(color: Colors.blue),
              )),
          OutlinedButton(
            onPressed: (){},
            child: Text('outlined button'),
            style: OutlinedButton.styleFrom(
              primary: Colors.orange,
              side: BorderSide(color: Colors.orange)
            ),
          )
        ],
      ),
    );
  }
}
