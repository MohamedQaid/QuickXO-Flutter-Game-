import 'package:flutter/material.dart';
import 'package:quick_xo_flutter_game/widgets/custom/custom_text.dart';

class CustomViewResult extends StatelessWidget {
  const CustomViewResult({
    super.key,
    required this.stPlayerXWin,
    required this.stPlayerOWin,
    required this.resultWin,
  });

  final int stPlayerXWin;
  final int stPlayerOWin;
  final String resultWin;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          Column(
            children: [
              const CustomText(stringText: 'pLayer X'),
              CustomText(stringText: '$stPlayerXWin')
            ],
          ),
          Column(
            children: [
              const CustomText(stringText: 'pLayer O'),
              CustomText(stringText: '$stPlayerOWin')
            ],
          ),
        ]),
        CustomText(stringText: resultWin),
      ],
    );
  }
}
