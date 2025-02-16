import 'package:flutter/material.dart';

class ProviderPlayOnBorder extends ChangeNotifier {
  bool _onTap = true;
  final List<String> _borderXO = [
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
  ];

  get onTap => _onTap;
  get borderXO => _borderXO;

  void playOnBorder(int index) {
    if (borderXO[index] == '') {
      _borderXO[index] = _onTap ? 'O' : 'X';
      _onTap = !_onTap;
      notifyListeners();
    }
  }
}
