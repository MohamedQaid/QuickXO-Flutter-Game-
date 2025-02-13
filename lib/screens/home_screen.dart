import 'package:flutter/material.dart';

import '../widgets/custom_border_play.dart';
import '../widgets/custom_btn_again_game.dart';
import '../widgets/custom_view_result.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xff262746),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 12.0),
          child: Column(
            children: [
              Expanded(flex: 2, child: CustomViewResult()),
              Expanded(flex: 5, child: CustomBorderPlay()),
              Expanded(flex: 2, child: CustomBtnAgainGame()),
            ],
          ),
        ),
      ),
    );
  }
}
