import 'package:flutter/material.dart';
import 'package:flutter_app/src/resources/screens/quizs/quiz_screen.dart';
import 'package:flutter_app/src/resources/shared/progress_bar.dart';
import 'package:flutter_app/src/services/models/topic.dart';

class QuizList extends StatelessWidget {
  final Topic topic;

  QuizList({Key key, this.topic});

  @override
  Widget build(BuildContext context) {
    return Column(
        children: topic.quizzes.map((quiz) {
          return Card(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero),
            elevation: 4,
            margin: EdgeInsets.all(4),
            child: InkWell(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (BuildContext context) =>
                        QuizScreen(quizId: quiz.id),
                  ),
                );
              },
              child: Container(
                padding: EdgeInsets.all(8),
                child: ListTile(
                  title: Text(
                    quiz.title,
                    style: Theme
                        .of(context)
                        .textTheme
                        .title,
                  ),
                  subtitle: Text(
                    quiz.description,
                    overflow: TextOverflow.fade,
                    style: Theme
                        .of(context)
                        .textTheme
                        .subhead,
                  ),
                  leading: QuizBadge(topic: topic, quizId: quiz.id),
                ),
              ),
            ),
          );
        }).toList());
  }
}