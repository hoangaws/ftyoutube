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
  const Choice(
      title: 'GIẤY PHÉP', image: 'gplx.jpeg', link: 'https://gplx.gov.vn/'),
  const Choice(
      title: 'VI PHẠM ',
      image: 'vipham.jpeg',
      link: 'http://www.csgt.vn/tra-cuu-phuong-tien-vi-pham.html'),
  const Choice(
      title: 'ĐĂNG KIỂM',
      image: 'dangkiem.jpeg',
      link: 'http://www.vr.org.vn/ptpublic_web/ThongTinPTPublic.aspx'),
  const Choice(
      title: 'GIẤY PHÉP', image: 'gplx.jpeg', link: 'https://gplx.gov.vn/'),
  const Choice(
      title: 'VI PHẠM ',
      image: 'vipham.jpeg',
      link: 'http://www.csgt.vn/tra-cuu-phuong-tien-vi-pham.html'),
  const Choice(
      title: 'ĐĂNG KIỂM',
      image: 'dangkiem.jpeg',
      link: 'http://www.vr.org.vn/ptpublic_web/ThongTinPTPublic.aspx'),
  const Choice(
      title: 'GIẤY PHÉP', image: 'gplx.jpeg', link: 'https://gplx.gov.vn/'),
  const Choice(
      title: 'VI PHẠM ',
      image: 'vipham.jpeg',
      link: 'http://www.csgt.vn/tra-cuu-phuong-tien-vi-pham.html'),
  const Choice(
      title: 'ĐĂNG KIỂM',
      image: 'dangkiem.jpeg',
      link: 'http://www.vr.org.vn/ptpublic_web/ThongTinPTPublic.aspx'),
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
        SliderImage(height: 180, width: width),
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
