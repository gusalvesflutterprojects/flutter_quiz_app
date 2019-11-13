import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  var questionIndex = 0;

  void answerQuestion() {
    setState(() {
      questionIndex = questionIndex + 1;
    });
    print(questionIndex);
  }

  final questions = [
    'What\'s my favorite animal?',
    'What\'s my favorite hobby?',
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'My first app',
          ),
        ),
        body: Column(
          children: [
            Text(questions[questionIndex]),
            RaisedButton(
              child: Text('Alternative 1'),
              onPressed: answerQuestion,
            ),
            RaisedButton(
              child: Text('Alternative 2'),
              onPressed: answerQuestion,
            ),
            RaisedButton(
              child: Text('Alternative 3'),
              onPressed: answerQuestion,
            ),
            RaisedButton(
              child: Text('Alternative 4'),
              onPressed: answerQuestion,
            )
          ],
        ),
      ),
    );
  }
}
