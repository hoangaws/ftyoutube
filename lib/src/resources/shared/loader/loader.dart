import 'package:flutter/material.dart';
import 'package:flutter_app/src/resources/shared/loader/color_loader.dart';


class Loader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      height: 250,
      child: ColorLoader4()
    );
  }
}

class LoadingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Loader(),
      ),
    );
  }
}