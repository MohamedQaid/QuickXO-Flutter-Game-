// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

class ProviderCheck extends ChangeNotifier {
  String _result = '';
  int _playerX = 0;
  int _playerO = 0;

  get playerX => _playerX;
  get playerO => _playerO;
  get result => _result;

  void clearResult(List borderXO) {
    borderXO.fillRange(0, borderXO.length, "");
    _result = '';
    notifyListeners();
  }

  void checkResult(List borderXO) {
    if (borderXO[0] == borderXO[1] &&
        borderXO[0] == borderXO[2] &&
        borderXO[0] != '') {
      _result = 'Player ${borderXO[0]}  Wins!';
      if (borderXO[0] == 'X') {
        _playerX += 1;
      } else {
        _playerO += 1;
      }
      notifyListeners();
    }
  }
}
