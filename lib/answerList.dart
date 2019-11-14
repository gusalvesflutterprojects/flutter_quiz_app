import 'package:flutter/material.dart';

import 'answer.dart';

class AnswerList extends StatelessWidget {
  final List answers;
  final Function _answerQuestion;

  AnswerList(this.answers, this._answerQuestion);

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.purple,
        width: double.infinity,
        child: Column(children: <Widget>[
          ...answers.map((answer) {
            return Answer(_answerQuestion, answer);
          }),
        ]));
  }
}
