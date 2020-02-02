import 'package:flutter/material.dart';

class SliderGrid extends StatefulWidget {
  @override
  _SliderGridState createState() => _SliderGridState();
}

class _SliderGridState extends State<SliderGrid> {

  double _value = 0.0;
  void _setvalue(double value) => setState(() => _value = value);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: new EdgeInsets.all(32.0),
      child: new Center(
        child: new Column(
          children: <Widget>[
            new Text('Value: ${(_value * 100).round()}'),
            new Slider(value: _value, onChanged: _setvalue)
          ],
        ),
      ),
    );
  }
}
