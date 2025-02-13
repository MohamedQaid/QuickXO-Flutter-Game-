import 'package:flutter/material.dart';
import 'package:quick_xo_flutter_game/widgets/custom/custom_text.dart';

class CustomViewResult extends StatelessWidget {
  const CustomViewResult({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          Column(
            children: [
              CustomText(stringText: 'pLayer X'),
              CustomText(stringText: '5')
            ],
          ),
          Column(
            children: [
              CustomText(stringText: 'pLayer O'),
              CustomText(stringText: '3')
            ],
          ),
        ]),
        CustomText(stringText: ' Player  X  wins!'),
      ],
    );
  }
}
