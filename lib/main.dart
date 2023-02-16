// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, avoid_print

import 'package:flutter/material.dart';

import './quiz.dart';

import './result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    if (_questionIndex < _questions.length) {
      print('We have more questions!');
    } else {
      print('No more questions!');
    }

    _totalScore += score;

    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }

  final _questions = const [
    {
      'question': 'Name the component of blood that fights infection.',
      'answers': [
        {'text': 'Red Blood Cells (RBC)', 'score': 5},
        {'text': 'White Blood Cells (WBC)', 'score': 0},
        {'text': 'Leucocytes', 'score': 0},
        {'text': 'Platelets', 'score': 0},
      ],
    },
    {
      'question': 'Where is the Reserve Bank of India located?',
      'answers': [
        {'text': 'Kolkata', 'score': 0},
        {'text': 'Mumbai', 'score': 5},
        {'text': 'Delhi', 'score': 0},
        {'text': 'Orissa', 'score': 0},
      ],
    },
    {
      'question': 'Who is the author of the book, Goosebumps?',
      'answers': [
        {'text': 'Sir Arthur Conan Doyle', 'score': 0},
        {'text': 'J.K. Rowling', 'score': 0},
        {'text': 'Charles Dickens', 'score': 0},
        {'text': 'R.L. Stine', 'score': 5},
      ],
    },
    {
      'question': 'Which is the national sport of Japan?',
      'answers': [
        {'text': 'Fencing', 'score': 0},
        {'text': 'Sumo Wrestling', 'score': 5},
        {'text': 'Tennis', 'score': 0},
        {'text': 'Swimming', 'score': 0},
      ],
    },
    {
      'question': 'Which country\'s border touches the maximum countries?',
      'answers': [
        {'text': 'Russia', 'score': 0},
        {'text': 'Netherlands', 'score': 0},
        {'text': 'China', 'score': 5},
        {'text': 'India', 'score': 0},
      ],
    },
    {
      'question': 'What is the name of the current President of India?',
      'answers': [
        {'text': 'Ram Nath Kovind', 'score': 0},
        {'text': 'Pranab Mukherjee', 'score': 0},
        {'text': 'Droupadi Murmu', 'score': 5},
        {'text': 'Zail Singh', 'score': 0},
      ],
    },
    {
      'question': 'From where does the Nile river originate?',
      'answers': [
        {'text': 'Mississippi River', 'score': 0},
        {'text': 'Lake Victoria', 'score': 5},
        {'text': 'River Thames', 'score': 0},
        {'text': 'Danube River', 'score': 0},
      ],
    },
    {
      'question': 'Who was the inventor of Telephone?',
      'answers': [
        {'text': 'Alexander Graham Bell', 'score': 5},
        {'text': 'Alfred Nobel', 'score': 0},
        {'text': 'Charles Babbage', 'score': 0},
        {'text': 'Guglielmo Marconi', 'score': 0},
      ],
    },
    {
      'question': 'Who is known as the father of Economics?',
      'answers': [
        {'text': 'David Ricardo', 'score': 0},
        {'text': 'Adam Smith', 'score': 5},
        {'text': 'John Maynard Keynes', 'score': 0},
        {'text': 'Karl Marx', 'score': 0},
      ],
    },
    {
      'question': 'Where was the session of Congress held in 1919?',
      'answers': [
        {'text': 'Bombay', 'score': 0},
        {'text': 'Chandigarh', 'score': 0},
        {'text': 'Amritsar', 'score': 5},
        {'text': 'Tamil Nadu', 'score': 0},
      ],
    },
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('WELCOME TO MY QUIZ APP'),
        ),
        body: (_questionIndex < _questions.length)
            ? Quiz(
                answerQuestion: _answerQuestion,
                questions: _questions,
                questionIndex: _questionIndex)
            : Result(_totalScore,_resetQuiz),
      ),
    );
  }
}
