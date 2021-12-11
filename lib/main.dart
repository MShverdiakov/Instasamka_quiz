import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

//  void main() {
//    runApp(MyApp());
//  }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'Вопрос': 'Любимая песня инстасамки',
      'Ответы': [
        {'Text': 'Хлопай', 'score': 10},
        {'Text': 'Lipsi Ha', 'score': 7},
        {'Text': 'Juicy', 'score': 5},
        {'Text': 'Жопа Джуси', 'score': 1},
      ]
    },
    {
      'Вопрос': 'Как будет называться её следующая песня?',
      'Ответы': [
        {'Text': 'Жопа Juicy Жопа', 'score': 5},
        {'Text': 'Jopa Джуси Jopa', 'score': 2},
        {'Text': 'MONEYKEN спасибо за сына', 'score': 10},
        {'Text': 'Ничего лучше Хлопай уже не будет', 'score': 7},
      ],
    },
    {
      'Вопрос': 'Будущий муж инстасамки',
      'Ответы': [
        {'Text': 'MONEYKEN', 'score': 5},
        {'Text': 'MONEYKEN', 'score': 5},
        {'Text': 'MONEYKEN', 'score': 5},
        {'Text': 'Денис', 'score': 1},
      ]
    },
  ];

  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
      setState(() {
      _questionIndex = 0;
      _totalScore = 0;
      });
  }

  void _answerQuestion(int score) {
    _totalScore += score;
    
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
  }

  @override
  Widget build(BuildContext contex) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.redAccent[700],
          title: Text('Викторина по Инстасамке!'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questions: _questions,
                questionIndex: _questionIndex,
              )
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
