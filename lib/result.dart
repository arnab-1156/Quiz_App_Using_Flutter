// ignore_for_file: prefer_const_constructors_in_immutables, use_key_in_widget_constructors, prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    var resultText = 'You did it!';
    if (resultScore >= 40) {
      resultText = 'Awesome!!!You are literally a born Quizzer!!!';
    } else if (resultScore < 40 && resultScore >= 30) {
      resultText = 'You have a pretty good general knowledge!';
    } else if (resultScore < 30 && resultScore >= 20) {
      resultText = 'Not Bad! But you need to improve!';
    } else {
      resultText = 'Start studying my child! You are in a poor condition!';
    }
    return resultText;
  }

  String get scoredisplay {
    return 'Your Total Score: $resultScore';
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          Text(
            scoredisplay,
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          TextButton(
            child: Text("Restart the Quiz!"),
            style: TextButton.styleFrom(foregroundColor: Colors.blue),
            onPressed: resetHandler,
          )
        ],
      ),
    );
  }
}
