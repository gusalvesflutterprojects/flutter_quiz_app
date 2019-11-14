import 'package:flutter/material.dart';

import './question.dart';
import './answerList.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function answerQuestion;

  Quiz({
    @required this.questions,
    @required this.questionIndex,
    @required this.answerQuestion,
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          questions[questionIndex]['questionText'],
        ),
        AnswerList(
          questions[questionIndex]['answers'],
          answerQuestion,
        ),
      ],
    );
  }
}
