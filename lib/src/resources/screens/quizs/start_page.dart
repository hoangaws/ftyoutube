
import 'package:flutter/material.dart';
import 'package:flutter_app/src/resources/screens/quizs/quiz_state.dart';
import 'package:flutter_app/src/services/models/quiz.dart';
import 'package:provider/provider.dart';

class StartPage extends StatelessWidget {
  final Quiz quiz;
  final PageController controller;
  StartPage({this.quiz, this.controller});

  @override
  Widget build(BuildContext context) {
    var state = Provider.of<QuizState>(context);

    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(quiz.title, style: Theme.of(context).textTheme.headline),
          Divider(),
          Expanded(child: Text(quiz.description)),
          ButtonBar(
            alignment: MainAxisAlignment.center,
            children: <Widget>[
              FlatButton.icon(
                onPressed: state.nextPage,
                label: Text('Start Quiz!'),
                icon: Icon(Icons.poll),
                color: Colors.green,
              )
            ],
          )
        ],
      ),
    );
  }
}