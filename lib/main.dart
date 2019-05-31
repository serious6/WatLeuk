// Flutter code sample for material.Card.2

// This sample shows creation of a [Card] widget that can be tapped. When
// tapped this [Card]'s [InkWell] displays an "ink splash" that fills the
// entire card.

import 'package:flutter/material.dart';
import 'package:watleuk/screen/main_translation_screen.dart';

import 'controller/translation_controller.dart';

void main() => runApp(MyApp());

/// This Widget is the main application widget.
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
          )),
          backgroundColor: Colors.grey[700],
        ),
        body: _maskWidget,
      ),
    );
  }
}
