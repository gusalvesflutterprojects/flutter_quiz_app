import 'package:flutter/material.dart';

import 'quiz.dart';
import 'result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var totalScore = 0;

  @override
  Widget build(BuildContext context) {
    const _questions = const [
      {
        'questionText': 'What\'s your favorite color?',
        'answers': [
          {'text': 'Black', 'score': 10},
          {'text': 'Red', 'score': 7},
          {'text': 'Green', 'score': 4},
          {'text': 'White', 'score': 1}
        ],
      },
      {
        'questionText': 'What\'s your favorite animal?',
        'answers': [
          {'text': 'Rabbit', 'score': 2},
          {'text': 'Snake', 'score': 10},
          {'text': 'Elephant', 'score': 4},
          {'text': 'Lion', 'score': 7}
        ],
      },
      {
        'questionText': 'Who\'s your favorite instructor?',
        'answers': [
          {'text': 'Max', 'score': 1},
          {'text': 'Max', 'score': 1},
          {'text': 'Max', 'score': 1},
          {'text': 'Max', 'score': 1}
        ],
      },
    ];

    void _answerQuestion(answerScore) {
      setState(() => _questionIndex++);
      setState(() => totalScore += answerScore);
    }

    void _restartQuiz() {
      setState(() => _questionIndex = 0);
      setState(() => totalScore = 0);
    }

    bool quizInProgress() => _questionIndex < _questions.length;

    return MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.purple,
          appBar: AppBar(
            backgroundColor: Colors.deepPurple,
            title: Text('Quiz App'),
          ),
          body: quizInProgress()
              ? Quiz(
                  answerQuestion: _answerQuestion,
                  questions: _questions,
                  questionIndex: _questionIndex,
                )
              : Result(totalScore, _restartQuiz)),
    );
  }
}
