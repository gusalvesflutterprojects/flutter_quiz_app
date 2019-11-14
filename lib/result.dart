import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int score;
  final Function restartQuiz;

  Result(this.score, this.restartQuiz);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            'Your score is $score',
            style: TextStyle(fontSize: 64),
          ),
          RaisedButton(
            color: Colors.lightGreen,
            textColor: Colors.black54,
            child: Text('Restart quiz', style: TextStyle(fontFamily: 'Arial'),),
            onPressed: () => restartQuiz(),
          )
        ],
      ),
    );
  }
}
