import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetQuiz;

  Result(this.resultScore, this.resetQuiz);

  String get resultPhrase {
    String resultText;

    if (resultScore <= 0) {
      resultText = 'Сам ты кал';
    } else if (resultScore <= 8) {
      resultText = 'Денис, серьезно?';
    } else if (resultScore <= 12) {
      resultText = 'Претти кул';
    } else if (resultScore <= 16) {
      resultText = 'Твоя пусси явно джуси';
    } else {
      resultText = 'Разрешаю похлопать \n жопой в честь победы';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhrase,
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            child: Text('Пройти тест сначала'),
            onPressed: resetQuiz,)
        ],
      ),
    );
  }
}
