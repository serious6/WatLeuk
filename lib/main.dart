import 'package:flutter/material.dart';
import 'package:watleuk/screen/main_translation_screen.dart';

import 'controller/translation_controller.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  static const String _title = 'WatLeuk';

  final TranslationController _translationController =
      new TranslationController();

  @override
  Widget build(BuildContext context) {
    final MainTranslationScreen _maskWidget =
        MainTranslationScreen(_translationController);

    return MaterialApp(
      title: _title,
      home: Scaffold(
        appBar: AppBar(
          title: new Center(
              child: new Text(
            _title,
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.grey),
          )),
          backgroundColor: Colors.white,
        ),
        body: _maskWidget,
      ),
    );
  }
}
