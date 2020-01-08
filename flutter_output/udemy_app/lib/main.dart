import 'package:flutter/material.dart';
import 'package:udemy_app/quiz.dart';
import 'package:udemy_app/result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _totalScroll = 0;

  void _resetQuiz(){
    setState(() {
      _questionIndex = 0;
      _totalScroll = 0;
    });
  }

  void _answerQuestion(int score){
    _totalScroll += score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }


  @override
  Widget build(BuildContext context) {
    const _questions = [
      {
        'questionText': 'What\'s your favorite color?',
        'answers': [
          {'text': 'Black', 'score': 10},
          {'text': 'Red', 'score': 5},
          {'text': 'Green', 'score': 3},
          {'text': 'White', 'score': 1},
        ],
      },
      {
        'questionText': 'What\'s your favorite animal?',
        'answers': [
          {'text': 'Rabbit', 'score': 3},
          {'text': 'Snake', 'score': 11},
          {'text': 'Elephant', 'score': 5},
          {'text': 'Lion', 'score': 9},
        ],
      },
      {
        'questionText': 'Who\'s your favorite instructor?',
        'answers': [
          {'text': 'Max', 'score': 3},
          {'text': 'John', 'score': 2},
          {'text': 'Marry', 'score': 3},
          {'text': 'Snow', 'score': 5},
        ],
      },
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My first App'),
        ),
        body: _questionIndex < _questions.length ?
            Quiz(questions: _questions,
              answerQuestion: _answerQuestion,
              questionIndex: _questionIndex,
            ) : Result(_totalScroll,_resetQuiz)
      ),
    );
  }
}

