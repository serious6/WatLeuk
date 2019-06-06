import 'dart:collection';

import 'package:watleuk/controller/data_supply.dart';
import 'package:watleuk/controller/progress_tracker.dart';
import 'package:watleuk/model/deck.dart';
import 'package:watleuk/model/translation.dart';

class TranslationController {
  final ProgressTracker _progressTracker = new ProgressTracker();
  final DataSupplyController _dataSupplyController = new DataSupplyController();

  // ------------------------------------------------------------------------
  // ProgressQueues;
  final Queue<Translation> _basic = new Queue();
  final Queue<Translation> _expert = new Queue();
  final Queue<Translation> _favourite = new Queue();

  // ------------------------------------------------------------------------

  TranslationController() {
    reset();
  }

  void reset() {
    _progressTracker.setCurrentTranslation(null);

    _basic.clear();
    _expert.clear();
    _favourite.clear();

    _basic.addAll(_dataSupplyController.buildData());
  }

  Translation getNextTranslation(final Deck selectedDeck) {
    Translation _next = _pickRandomTranslation(selectedDeck);
    if (_next != null) {
      _progressTracker.setCurrentTranslation(_next);
    }
    return _next;
  }

  Translation _pickRandomTranslation(final Deck selectedDeck) {
    Queue<Translation> _currentQueue = _getDeckByName(selectedDeck);

    if (_currentQueue.length < 1) {
      return null;
    }

    final Translation _translation =
        (_currentQueue.toList(growable: false)..shuffle()).first;

    return _translation;
  }

  Translation getCurrentTranslation() {
    if (_progressTracker.getCurrentTranslation() == null) {
      getNextTranslation(Deck.Deck1);
    }

    return _progressTracker.getCurrentTranslation();
  }

  void reportFailedTranslation() {
    _progressTracker.reportFailedTranslation();

    _moveBetweenDecks(Deck.Deck2, Deck.Deck1);
  }

  void reportSuccessfulTranslation() {
    _progressTracker.reportSuccessfulTranslation();

    _moveBetweenDecks(Deck.Deck1, Deck.Deck2);
  }

  int getDeckSize(final Deck deck) {
    final Queue<Translation> _currentDeck = _getDeckByName(deck);
    if (_currentDeck != null) {
      return _currentDeck.toList(growable: false).length;
    } else {
      return -1;
    }
  }

  void _moveBetweenDecks(final Deck _source, final Deck _target) {
    final Translation _current = getCurrentTranslation();
    final Queue<Translation> _sourceDeck = _getDeckByName(_source);
    final Queue<Translation> _targetDeck = _getDeckByName(_target);

    if (_sourceDeck.contains(_current)) {
      _sourceDeck.remove(_current);
      _targetDeck.add(_current);
    }
  }

  void updateFavourite(final Deck _sourceDeck, bool _favourite) {
    if (_sourceDeck != null) {
      if (!_favourite) {
        // unfavourite
        _moveBetweenDecks(Deck.Favourite, Deck.Deck1);
      } else {
        _moveBetweenDecks(_sourceDeck, Deck.Favourite);
      }
    }
  }

  Queue<Translation> _getDeckByName(Deck _deck) {
    if (Deck.Deck1 == _deck) {
      return _basic;
    } else if (Deck.Deck2 == _deck) {
      return _expert;
    } else if (Deck.Favourite == _deck) {
      return _favourite;
    } else {
      return null;
    }
  }
}
