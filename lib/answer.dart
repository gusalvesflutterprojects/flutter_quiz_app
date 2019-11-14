import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;
  final Map<String, Object> answer;

  Answer(this.selectHandler, this.answer);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: RaisedButton(
        color: Colors.lightGreen,
        textColor: Colors.black54,
        child: Text(answer['text'], style: TextStyle(fontFamily: 'Arial'),),
        onPressed: () => selectHandler(answer['score']),
      ),
    );
  }
}