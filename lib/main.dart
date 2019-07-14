import 'package:flutter/material.dart';

import 'package:complete_guide/quiz.dart';
import 'package:complete_guide/result.dart';

// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  //static const _questions = [
  final _questions = const [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': ['black', 'red', 'green', 'white'],
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': ['rabbit', 'lion', 'snake', 'elephant'],
    },
    {
      'questionText': 'Who\'s your favorite instructor?',
      'answers': ['max', 'angela', 'lecheta', 'other'],
    },
  ];

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print('there are more questions');
    } else {
      print('no more questions');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My App'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                questions: _questions,
                questionIndex: _questionIndex,
                answerQuestion: _answerQuestion,
              )
            : Result(),
      ),
    );
  }
}
