import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:flutter_app/src/resources/shared/navigationBar/topic_drawer.dart';
import 'package:flutter_app/src/resources/screens/topics/topic_item.dart';
import 'package:flutter_app/src/resources/shared/shared_import.dart';
import 'package:flutter_app/src/services/services_import.dart';

class TopicsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: Global.topicsFSRef.getData(),
      builder: (BuildContext context, AsyncSnapshot snap) {
        if (snap.hasData) {
          List<Topic> topics = snap.data;
          return Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.lightBlue,
              title: Text('Topics screen'),
              actions: [
                IconButton(
                  icon: Icon(FontAwesomeIcons.userCircle, color: Colors.white),
                  onPressed: () => Navigator.pushNamed(context, '/profile'),
                )
              ],
            ),
            drawer: TopicDrawer(topics: snap.data),
            body: GridView.count(
              primary: false,
              padding: const EdgeInsets.all(20.0),
              crossAxisSpacing: 10.0,
              crossAxisCount: 2,
              children: topics.map((topic) => TopicItem(topic: topic)).toList(),
            ),
            bottomNavigationBar: AppBottomNav(),
          );
        } else {
          return ColorLoader();
        }
      },
    );
  }
}
