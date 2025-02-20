import 'package:flutter/material.dart';
import 'package:quick_xo_flutter_game/widgets/custom/custom_text.dart';

class CustomBtnAgainGame extends StatelessWidget {
  const CustomBtnAgainGame({
    super.key,
    this.onTap,
  });
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: GestureDetector(
        onTap: onTap,
        child: Container(
            padding: const EdgeInsets.all(15.0),
            decoration: BoxDecoration(
                color: const Color(0xff00537A),
                borderRadius: BorderRadius.circular(12.0)),
            child: const CustomText(stringText: 'Play Again')),
      ),
    );
  }
}
