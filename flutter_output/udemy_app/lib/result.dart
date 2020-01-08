import 'package:flutter/material.dart';
import 'main.dart';
class Result extends StatelessWidget {
  final int resultScore;
  final Function resultHandler;
  Result(this.resultScore,this.resultHandler);

  String get resultPhrase{
    String resultText;
    if(resultScore <= 8){
      resultText = 'You are awsome & innocent!';
    }else if(resultScore <= 12){
      resultText = 'Preety Likeable';
    }else if(resultScore <= 16){
      resultText = 'You are .. Strange!';
    }else{
      resultText ='You are so Bad';
    }
    return resultText;
  }


  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(resultPhrase,style:
            TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.bold
            ),),
          FlatButton(
            child: Text('resetQuiz'),
            textColor: Colors.blue,
            onPressed:resultHandler,
          )
        ],
      ),
    );
  }
}
