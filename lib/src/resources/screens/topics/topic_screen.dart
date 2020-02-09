import 'package:flutter/material.dart';
import 'package:flutter_app/src/resources/screens/topics/quiz_list.dart';
import 'package:flutter_app/src/services/models/topic.dart';

class TopicScreen extends StatelessWidget {
  final Topic topic;

  TopicScreen({this.topic});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      body: ListView(children: [
        Hero(
          tag: topic.img,
          child: Image.asset('assets/covers/${topic.img}',
              width: MediaQuery.of(context).size.width),
        ),
        Text(
          topic.title,
          style:
          TextStyle(height: 2, fontSize: 20, fontWeight: FontWeight.bold),
        ),
        QuizList(topic: topic)
      ]),
    );
  }
}