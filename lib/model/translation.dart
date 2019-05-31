class Translation {
  String _baseText;
  String _translatedText;

  int _ratio = 0;

  Translation(this._baseText, this._translatedText);

  setSuccessfulTranslation() {
    if (_ratio < 1) {
      this._ratio++;
    }
  }

  setFailedTranslation() {
    if (_ratio >= 0) {
      this._ratio--;
    }
  }

  int getRatio() {
    return _ratio;
  }

  String getBaseText() {
    return this._baseText;
  }

  String getTranslatedText() {
    return this._translatedText;
  }
}
