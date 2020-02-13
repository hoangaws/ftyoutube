import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HeadBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.lightBlue,
      title: Text('Topics'),
      actions: [
        IconButton(
          icon: Icon(FontAwesomeIcons.userCircle, color: Colors.white),
          onPressed: () => Navigator.pushNamed(context, '/profile'),
        )
      ],
    );
  }
}


