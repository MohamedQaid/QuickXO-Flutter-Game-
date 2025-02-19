import 'package:flutter/material.dart';

class ProviderCheck extends ChangeNotifier {
  String _result = '';
  int _playerX = 0;
  int _playerO = 0;
  bool _gameOver = false;

  get playerX => _playerX;
  get playerO => _playerO;
  get result => _result;
  get gameOver => _gameOver;

  void clearResult(List borderXO) {
    borderXO.fillRange(0, borderXO.length, "");
    _result = '';
    _gameOver = false;
    notifyListeners();
  }

  void checkResult(List borderXO) {
    List<List<int>> oddsOfWinning = [
      [0, 1, 2],
      [3, 4, 5],
      [6, 7, 8],
      [0, 3, 6],
      [1, 4, 7],
      [2, 5, 8],
      [0, 4, 8],
      [2, 4, 6],
    ];
    for (var checkOdds in oddsOfWinning) {
      if (borderXO[checkOdds[0]] != '' &&
          borderXO[checkOdds[0]] == borderXO[checkOdds[1]] &&
          borderXO[checkOdds[0]] == borderXO[checkOdds[2]]) {
        _result = 'Player ${borderXO[checkOdds[0]]}  Wins!';
        updateResult(borderXO[checkOdds[0]]);
        _gameOver = true;
        notifyListeners();
        return;
      }
    }

    if (!borderXO.contains('')) {
      _result = 'It\'s a Draw! 😲';
    }
  }

  void updateResult(String winPlayer) {
    winPlayer == 'X' ? _playerX++ : _playerO++;

    notifyListeners();
  }
}
