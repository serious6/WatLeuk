import 'package:flutter/material.dart';
import 'package:watleuk/controller/translation_controller.dart';
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

  String _baseText = '';
  String _translatedText = '';

  _TranslatorState(TranslationController translationController) {
    _translationController = translationController;

    _baseText = translationController.getCurrentTranslation().getBaseText();
  }

  @override
  Widget build(BuildContext context) {
    final double _width = MediaQuery.of(context).size.width * 0.95;
    return new Scaffold(
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
        alignment: MainAxisAlignment.end,
        children: <Widget>[
          new Visibility(
            visible: !_endOfGame,
            child: new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                new RaisedButton(
                    color: Colors.red[800],
                    onPressed: _nextTranslationWithFailed,
                    child: IconButton(
                      color: Colors.black,
                      icon: Icon(Icons.navigate_next),
                    )),
                new RaisedButton(
                    color: Colors.green[400],
                    onPressed: _nextTranslationWithSuccess,
                    child: IconButton(
                      color: Colors.black,
                      icon: Icon(Icons.thumb_up),
                    )),
                new IgnorePointer(
                  ignoring: _watchPressed,
                  child: new RaisedButton(
                    onPressed: _unmask,
                    color: Colors.blue[400],
                    child: IconButton(icon: Icon(Icons.remove_red_eye)),
                  ),
                ),
              ],
            ),
          ),
          new Visibility(
            visible: _endOfGame,
            child: new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                new RaisedButton(
                    color: Colors.blue[400],
                    onPressed: _reset,
                    child: IconButton(
                      color: Colors.black,
                      icon: Icon(Icons.refresh),
                    )),
              ],
            ),
          ),
        ],
      ),
    );
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
      _nextTranslation();
    });
  }

  void _nextTranslation() {
    setState(() {
      _watchPressed = false;
      final Translation _translation =
          _translationController.getNextTranslation();
      if (_translation != null) {
        _baseText = _translation.getBaseText();
        _translatedText = '';
      } else {
        _baseText = 'Congrats! You finished..';
        _translatedText = 'Try again?';
        _endOfGame = true;
      }
    });
  }
}
