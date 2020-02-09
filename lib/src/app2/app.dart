import 'package:flutter/material.dart';
import 'package:flutter_app/src/app2/home_page.dart';

class MyApp extends StatelessWidget {
  final appTitle = "Tra cứu giao thông";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appTitle,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: appTitle),
    );
  }
}
