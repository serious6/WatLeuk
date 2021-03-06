import 'package:watleuk/model/translation.dart';

class ProgressTracker {
  Translation _currentTranslation;

  void setCurrentTranslation(Translation _current) {
    this._currentTranslation = _current;
  }

  Translation getCurrentTranslation() {
    return _currentTranslation;
  }

  void reportFailedTranslation() {
    _currentTranslation.setFailedTranslation();
  }

  void reportSuccessfulTranslation() {
    _currentTranslation.setSuccessfulTranslation();
  }
}
