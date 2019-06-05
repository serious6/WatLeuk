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

  // ------------------------------------------------------------------------

  TranslationController() {
    reset();
  }

  void reset() {
    _progressTracker.setCurrentTranslation(null);
    _basic.clear();
    _expert.clear();

    _basic.addAll(_dataSupplyController.buildData());
  }

  Translation getNextTranslation(Deck selectedDeck) {
    Translation _next = _pickRandomTranslation(selectedDeck);
    if (_next != null) {
      _progressTracker.setCurrentTranslation(_next);
    }
    return _next;
  }

  Translation _pickRandomTranslation(Deck selectedDeck) {
    final Queue<Translation> _selectedQueue =
        (Deck.Deck1 == selectedDeck ? _basic : _expert);

    if (_selectedQueue.isEmpty) {
      return null;
    }

    final Translation _translation =
        (_selectedQueue.toList(growable: false)..shuffle()).first;

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

    final Translation _current = _progressTracker.getCurrentTranslation();
    if (_expert.contains(_current)) {
      _expert.remove(_current);
      _basic.add(_current);
    }
  }

  void reportSuccessfulTranslation() {
    _progressTracker.reportSuccessfulTranslation();

    final Translation _current = _progressTracker.getCurrentTranslation();
    if (_basic.contains(_current)) {
      _basic.remove(_current);
      _expert.add(_current);
    }
  }

  int getDeckSize(final Deck deck) {
    if (Deck.Deck1 == deck) {
      if (_basic != null) {
        return _basic.toList(growable: false).length;
      }
    } else if (Deck.Deck2 == deck) {
      if (_basic != null) {
        return _expert.toList(growable: false).length;
      }
    } else {
      return -1;
    }
  }
}
