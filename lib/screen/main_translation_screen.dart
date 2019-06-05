import 'package:flutter/material.dart';
import 'package:watleuk/controller/translation_controller.dart';
import 'package:watleuk/model/deck.dart';
import 'package:watleuk/model/translation.dart';

class MainTranslationScreen extends StatefulWidget {
  _TranslatorState _currentAppState;

  MainTranslationScreen(TranslationController _translationController, {Key key})
      : super(key: key) {
    _currentAppState = new _TranslatorState(_translationController);
  }

  @override
  _TranslatorState createState() => _currentAppState;
}

class _TranslatorState extends State<MainTranslationScreen> {
  TranslationController _translationController;

  bool _watchPressed = false;
  bool _endOfGame = false;
  bool _deck0Selected = true;

  int _deckSize1 = 0;
  TextStyle _textStyleButtonDeck1 = new TextStyle(color: Colors.black);
  Color _colorButtonDeck1 = Colors.white;
  int _deckSize2 = 0;
  TextStyle _textStyleButtonDeck2 = new TextStyle(color: Colors.white);
  Color _colorButtonDeck2 = Colors.blue[500];

  String _baseText = '';
  String _translatedText = '';

  Deck _selectedDeck = Deck.Deck1;

  _TranslatorState(TranslationController translationController) {
    _translationController = translationController;

    _baseText = translationController.getCurrentTranslation().getBaseText();
    _deckSize1 = _translationController.getDeckSize(Deck.Deck1);
    _deckSize2 = _translationController.getDeckSize(Deck.Deck2);
  }

  @override
  Widget build(BuildContext context) {
    final double _width = MediaQuery.of(context).size.width * 0.95;
    return new Scaffold(
      appBar: new AppBar(
        actions: <Widget>[
          new Visibility(
            visible: !_endOfGame,
            child: new Center(
              child: new Text(
                'Deck:',
              ),
            ),
          ),
          new Visibility(
            visible: !_endOfGame,
            child: new Card(
              color: _colorButtonDeck1,
              child: new FlatButton(
                onPressed: _deckSize1 > 0
                    ? () {
                        _setSelectedDeck(Deck.Deck1);
                      }
                    : null,
                child: new Center(
                  child: new Column(
                    children: <Widget>[
                      new Text(
                        'Backlog',
                        style: _textStyleButtonDeck1,
                      ),
                      new Text(
                        _deckSize1.toString(),
                        style: _textStyleButtonDeck1,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          new Visibility(
            visible: !_endOfGame,
            child: new Card(
              color: _colorButtonDeck2,
              child: new FlatButton(
                onPressed: _deckSize2 > 0
                    ? () {
                        _setSelectedDeck(Deck.Deck2);
                      }
                    : null,
                child: new Center(
                  child: new Column(
                    children: <Widget>[
                      new Text(
                        'Known',
                        style: _textStyleButtonDeck2,
                      ),
                      new Text(
                        _deckSize2.toString(),
                        style: _textStyleButtonDeck2,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      body: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Visibility(
              visible: _endOfGame,
              child:
                  new Image.asset("graphics/crown.png", fit: BoxFit.scaleDown),
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    new Container(
                      width: _width,
                      child: new Text(
                        _baseText,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 22.0, fontWeight: FontWeight.bold),
                      ),
                    ),
                    new Container(
                      width: _width,
                      child: new Text(
                        _translatedText,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontStyle: FontStyle.italic,
                            fontSize: 20.0,
                            fontWeight: FontWeight.normal),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ]),
      bottomNavigationBar: new ButtonBar(
        alignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          new Visibility(
            visible: !_endOfGame,
            replacement: new RaisedButton(
                color: Colors.blue[400],
                onPressed: _reset,
                child: IconButton(
                  color: Colors.black,
                  icon: Icon(Icons.refresh),
                )),
            child: new Row(
              children: <Widget>[
                new RaisedButton(
                    color: Colors.red,
                    onPressed: _nextTranslationWithFailed,
                    child: IconButton(
                      icon: Icon(Icons.thumb_down),
                    )),
                new IgnorePointer(
                  ignoring: _watchPressed,
                  child: new RaisedButton(
                    onPressed: _unmask,
                    color: Colors.grey[300],
                    child: IconButton(icon: Icon(Icons.remove_red_eye)),
                  ),
                ),
                new RaisedButton(
                    color: Colors.green[400],
                    onPressed: _nextTranslationWithSuccess,
                    child: IconButton(
                      icon: Icon(Icons.thumb_up),
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void _setSelectedDeck(Deck selection) {
    setState(() {
      if (Deck.Deck1 == selection) {
        _textStyleButtonDeck1 = new TextStyle(color: Colors.black);
        _textStyleButtonDeck2 = new TextStyle(color: Colors.white);
        _colorButtonDeck1 = Colors.white;
        _colorButtonDeck2 = Colors.blue[500];
      } else if (Deck.Deck2 == selection) {
        _textStyleButtonDeck2 = new TextStyle(color: Colors.black);
        _textStyleButtonDeck1 = new TextStyle(color: Colors.white);
        _colorButtonDeck2 = Colors.white;
        _colorButtonDeck1 = Colors.blue[500];
      } else {
        _textStyleButtonDeck1 = new TextStyle(color: Colors.white);
        _textStyleButtonDeck2 = new TextStyle(color: Colors.white);
        _colorButtonDeck2 = Colors.blue[500];
        _colorButtonDeck1 = Colors.blue[500];
      }
      _selectedDeck = selection;
    });
  }

  void _unmask() {
    setState(() {
      _watchPressed = true;
      _translatedText =
          _translationController.getCurrentTranslation().getTranslatedText();
    });
  }

  void _nextTranslationWithSuccess() {
    _translationController.reportSuccessfulTranslation();
    _nextTranslation();
  }

  void _nextTranslationWithFailed() {
    _translationController.reportFailedTranslation();
    _nextTranslation();
  }

  void _reset() {
    setState(() {
      _translationController.reset();
      _endOfGame = false;
      _setSelectedDeck(Deck.Deck1);
      _nextTranslation();
    });
  }

  void _nextTranslation() {
    setState(() {
      _watchPressed = false;
      final Translation _translation =
          _translationController.getNextTranslation(_selectedDeck);
      if (_translation != null) {
        _baseText = _translation.getBaseText();
        _translatedText = '';
      } else {
        _baseText = 'Congrats! You finished..';
        _translatedText = 'Try again?';
        _endOfGame = true;
      }
      _deckSize1 = _translationController.getDeckSize(Deck.Deck1);
      _deckSize2 = _translationController.getDeckSize(Deck.Deck2);
    });
  }
}
