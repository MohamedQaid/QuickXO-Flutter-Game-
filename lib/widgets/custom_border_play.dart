import 'package:flutter/material.dart';
import 'custom/custom_text.dart';

class CustomBorderPlay extends StatelessWidget {
  const CustomBorderPlay({
    super.key,
    required this.onTap,
    required this.borderXO,
  });
  final void Function(int)? onTap;
  final List<String> borderXO;
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: borderXO.length,
      gridDelegate:
          const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            if (onTap != null) {
              onTap!(index);
            }
          },
          child: Container(
            alignment: Alignment.center,
            margin: const EdgeInsets.all(4.0),
            decoration: BoxDecoration(
                color: const Color(0xff00537A),
                borderRadius: BorderRadius.circular(12.0),
                border: Border.all(color: const Color(0xff00A0DB))),
            child: CustomText(
              stringText: borderXO[index],
              fontSize: 35,
            ),
          ),
        );
      },
    );
  }
}
