import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  String questionText;
  @override
  Question(this.questionText);
  Widget build(BuildContext context) {
    return Text(questionText);
  }
}
