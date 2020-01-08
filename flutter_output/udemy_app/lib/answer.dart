import 'package:flutter/material.dart';

class Answer extends StatelessWidget {

  final Function selectionHandler;
  final String answerText;
  Answer(this.selectionHandler,this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8.0),
      width: double.infinity,
      child: ButtonTheme(
        shape: new RoundedRectangleBorder(
          borderRadius: new BorderRadius.circular(30.0),
        ),
        minWidth: 300.0,
        height: 50.0,
        child: RaisedButton(
          elevation: 30.0,
          textColor: Colors.white,
          child: Text(answerText),
          onPressed: selectionHandler ,
        ),
      ),
    );
  }
}
