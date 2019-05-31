import 'dart:collection';

import 'package:watleuk/controller/data_supply.dart';
import 'package:watleuk/controller/progress_tracker.dart';
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

  Translation getNextTranslation() {
    Translation _next = _pickRandomTranslation();
    if (_next != null) {
      _progressTracker.setCurrentTranslation(_next);
    }
    return _next;
  }

  Translation _pickRandomTranslation() {
    if (_basic.isEmpty) {
      return null;
    }

    final Translation _translation =
        (_basic.toList(growable: false)..shuffle()).first;

    return _translation;
  }

  Translation getCurrentTranslation() {
    if (_progressTracker.getCurrentTranslation() == null) {
      getNextTranslation();
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
}
