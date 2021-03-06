import 'package:flutter/material.dart';
import 'package:flutter_app/src/app2/widgets/web_view.dart';

class Choice {
  const Choice({this.title, this.image, this.link});

  final String title;
  final String image;
  final String link;
}

class ChoiceCard extends StatefulWidget {
  const ChoiceCard({Key key, this.choice}) : super(key: key);
  final Choice choice;

  @override
  _ChoiceCardState createState() => _ChoiceCardState();
}

class _ChoiceCardState extends State<ChoiceCard> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
              builder: (BuildContext context) => MyWebView(
                    title: widget.choice.title,
                    selectedUrl: widget.choice.link,
                  )));
        },
        child: Card(
          child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Image(
                  image: AssetImage('assets/images/' + widget.choice.image),
                  fit: BoxFit.cover,
                ),
                Container(
                  child: Text(widget.choice.title),
                )
              ]),
        ));
  }
}
