import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quick_xo_flutter_game/providers/provider_check.dart';
import 'package:quick_xo_flutter_game/providers/provider_play_on_border.dart';
import '../widgets/custom_border_play.dart';
import '../widgets/custom_btn_again_game.dart';
import '../widgets/custom_view_result.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final provPlayOnBorder = context.watch<ProviderPlayOnBorder>();
    final provCheckWin = context.watch<ProviderCheck>();
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xff262746),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          child: Column(
            children: [
              Expanded(
                  flex: 2,
                  child: CustomViewResult(
                    resultWin: provCheckWin.result,
                    stPlayerOWin: provCheckWin.playerO,
                    stPlayerXWin: provCheckWin.playerX,
                  )),
              Expanded(
                  flex: 5,
                  child: CustomBorderPlay(
                    onTap: provCheckWin.gameOver
                        ? null
                        : (int index) {
                            provPlayOnBorder.playOnBorder(index);
                            provCheckWin.checkResult(provPlayOnBorder.borderXO);
                          },
                    borderXO: provPlayOnBorder.borderXO,
                    winOdds: provCheckWin.oddsWin,
                  )),
              Expanded(
                  flex: 2,
                  child: CustomBtnAgainGame(
                    onTap: () {
                      provCheckWin.clearResult(provPlayOnBorder.borderXO);
                    },
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
