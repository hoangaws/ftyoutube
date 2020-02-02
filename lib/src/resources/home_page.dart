import 'package:flutter/material.dart';
import 'package:flutter_app/src/resources/widgets/choice_card.dart';
import 'package:flutter_app/src/resources/widgets/drawer_menu.dart';
import 'package:flutter_app/src/resources/widgets/slider_image.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

const List<Choice> choices = const <Choice>[
  const Choice(title: 'GIẤY PHÉP', image: 'gplx.jpeg',  ),
  const Choice(title: 'VI PHẠM ', image: 'vipham.jpeg', ),
  const Choice(title: 'ĐĂNG KIỂM', image: 'dangkiem.jpeg', ),
];

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(children: <Widget>[
        SliderImage(height: 250, width: width),
        Container(
          child: GridView(
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisSpacing: 2,
                mainAxisSpacing: 2,
                crossAxisCount: 3,
              ),
              children: List.generate(choices.length, (index) {
                return Container(
                  child: ChoiceCard(choice: choices[index]),
                );
              })),
        ),
      ]),
      drawer: Drawer(
          child:
              DrawerMenu()), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
