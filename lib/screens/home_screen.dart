import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quick_xo_flutter_game/providers/provider_play_on_border.dart';
import '../widgets/custom_border_play.dart';
import '../widgets/custom_btn_again_game.dart';
import '../widgets/custom_view_result.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final provPlayOnBorder = context.watch<ProviderPlayOnBorder>();

    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xff262746),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          child: Column(
            children: [
              const Expanded(flex: 2, child: CustomViewResult()),
              Expanded(
                  flex: 5,
                  child: CustomBorderPlay(
                    onTap: (int index) {
                      provPlayOnBorder.playOnBorder(index);
                    },
                    borderXO: provPlayOnBorder.borderXO,
                  )),
              const Expanded(flex: 2, child: CustomBtnAgainGame()),
            ],
          ),
        ),
      ),
    );
  }
}
