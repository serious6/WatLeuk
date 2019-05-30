// Flutter code sample for material.Card.2

// This sample shows creation of a [Card] widget that can be tapped. When
// tapped this [Card]'s [InkWell] displays an "ink splash" that fills the
// entire card.

import 'dart:collection';

import 'package:flutter/material.dart';

import 'model/translation.dart';

void main() => runApp(MyApp());

/// This Widget is the main application widget.
class MyApp extends StatelessWidget {
  static const String _title = 'WatLeuk';

  @override
  Widget build(BuildContext context) {
    final MyStatefulWidget _maskWidget = MyStatefulWidget();

    return MaterialApp(
      title: _title,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(_title),
          backgroundColor: Colors.lightBlueAccent,
        ),
        body: _maskWidget,
      ),
    );
  }
}

/// This is the stateless widget that the main application instantiates.
class MyStatefulWidget extends StatefulWidget {
  _TranslatorState currentAppState;

  MyStatefulWidget({Key key}) : super(key: key) {
    currentAppState = new _TranslatorState();
  }

  @override
  _TranslatorState createState() => currentAppState;
}

class _TranslatorState extends State<MyStatefulWidget> {
  Translation currentTranslation;
  final Queue<Translation> _translations = new Queue();

  String baseText = '';
  String translatedText = '';

  _TranslatorState() {
    buildData();
    currentTranslation = _translations.removeFirst();
    baseText = currentTranslation.baseText;
  }

  void buildData() {
    _translations.clear();
    _translations.add(new Translation("Kom rein!", "Kom binnen!"));
    _translations.add(new Translation("Hallo", "Hoi"));
    _translations.add(new Translation("heißen", "heeten"));
    _translations.add(new Translation("essen", "eeten"));
    _translations.add(new Translation("radfahren", "fietsen"));
    _translations.add(new Translation("kochen", "koken"));
    _translations.add(new Translation("Stockwerk", "verdieping"));
    _translations.add(new Translation("es regnet", "het regent"));
    _translations.add(new Translation("Bis bald! ", "tot ziens!"));
    _translations.add(new Translation("Silberzwiebeln", "zilveruitjes"));
    _translations.add(new Translation("Kühlschrank ", "koelkast"));
    _translations.add(new Translation("Nicht-Raucher", "niet-roker"));
    _translations.add(new Translation("Gouda ", "Gouda"));
    _translations.add(new Translation("Gemüse", "Groente"));
    _translations.add(new Translation("Stauballergie", "Stofallergie"));
    _translations.add(new Translation("Hochzeit", "Bruiloft"));
    _translations.add(new Translation("treffen ", "ontmoeten"));
    _translations.add(new Translation("herrlich ", "heerlijke"));
    _translations.add(new Translation("Frühstück ", "ontbijt"));
    _translations.add(new Translation("einkaufen ", "winkelen"));
    _translations.add(new Translation("Fußball spielen ", "voetballen"));
    _translations.add(
        new Translation("Computerspiele spielen", "computerspelletjes spelen"));
    _translations.add(new Translation("und", "en"));
    _translations.add(new Translation("oder", "of"));
    _translations.add(new Translation("warum ", "waarom"));
    _translations.add(new Translation("wann ", "wanneer"));
    _translations.add(new Translation("wie ", "hou"));
    _translations.add(new Translation("was ", "wat"));
    _translations.add(new Translation("wer ", "wie"));
    _translations.add(new Translation("aber ", "maar"));
    _translations.add(new Translation("wie schön!", "wat leuk!"));
    _translations.add(new Translation("Das stimmt", "Dat klopt"));
    _translations.add(new Translation("Ich spreche ein bisschen Niederländisch",
        "Ik spreek en beetje Nederlands"));
    _translations.add(new Translation("gar nicht", "helemal niet"));
    _translations.add(new Translation("sehr gut", "heel goed"));
    _translations.add(new Translation("bitte", "alsjeblieft"));
    _translations.add(new Translation("Burnout", "Overspannung"));
  }

  @override
  Widget build(BuildContext context) {
    return new Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          new Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  new Text(
                    baseText,
                    textAlign: TextAlign.center,
                    style:
                        TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold),
                  ),
                  new Text(
                    translatedText,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 22.0, fontWeight: FontWeight.normal),
                  ),
                ],
              ),
            ],
          ),
          new Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              new ButtonBar(
                alignment: MainAxisAlignment.spaceEvenly,
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  IconButton(
                    icon: Icon(Icons.remove_red_eye),
                    onPressed: () {
                      unmask();
                    },
                  ),
                  IconButton(
                    color: Colors.lightBlueAccent,
                    iconSize: 40,
                    icon: Icon(Icons.navigate_next),
                    onPressed: () {
                      nextTranslation();
                    },
                  ),
                ],
              ),
            ],
          ),
        ]);
  }

  void unmask() {
    setState(() {
      translatedText = currentTranslation.translatedText;
    });
  }

  void nextTranslation() {
    setState(() {
      if (_translations.isEmpty) {
        buildData();
      }
      currentTranslation = _translations.removeFirst();

      baseText = currentTranslation.baseText;
      translatedText = '';
    });
  }
}
