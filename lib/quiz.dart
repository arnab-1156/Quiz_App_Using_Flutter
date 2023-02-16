// ignore_for_file: prefer_const_constructors_in_immutables, use_key_in_widget_constructors

import 'package:flutter/material.dart';

import './answer.dart';

import './question.dart';

class Quiz extends StatelessWidget {
  final ValueSetter<int> answerQuestion;
  final List<Map<String, Object>> questions;
  final int questionIndex;

  Quiz({required this.answerQuestion, required this.questions, required this.questionIndex});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          questions[questionIndex]['question'] as String,
        ),
        ...(questions[questionIndex]['answers'] as List<Map<String, Object>>).map((answer) {
          return Answer(() => answerQuestion(answer['score'] as int), answer['text'] as String);
        }).toList(),
      ],
    );
  }
}
