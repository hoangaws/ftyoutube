import 'package:flutter/material.dart';
import 'package:flutter_app/src/services/services_import.dart';
import 'package:provider/provider.dart';

class Progress extends StatelessWidget {
  const Progress({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final report = Provider.of<Report>(context);
    return SizedBox(
      height: 44,
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
//          children: report.progress.map((kind) {
//            return Text(_convertToStringFromProgressKind(kind));
//          }).toList(),
        ),
      ),
    );
  }

  String _convertToStringFromProgressKind(ProgressKind kind) {
    switch (kind) {
      case ProgressKind.correct:
        return '🍀';
      case ProgressKind.incorrect:
        return '❌';
      case ProgressKind.notYet:
        return '▫️';
      case ProgressKind.current:
        return '🔹';
    }
    assert(false, 'invalid kind: $kind');
    return '';
  }
}

enum ProgressKind {
  correct,
  incorrect,
  current,
  notYet,
}
