import 'package:flutter/material.dart';

import 'custom/custom_text.dart';

class CustomBorderPlay extends StatelessWidget {
  const CustomBorderPlay({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: 9,
      gridDelegate:
          const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
      itemBuilder: (context, index) {
        return Container(
          alignment: Alignment.center,
          margin: const EdgeInsets.all(4.0),
          decoration: BoxDecoration(
              color: const Color(0xff00537A),
              borderRadius: BorderRadius.circular(12.0),
              border: Border.all(color: const Color(0xff00A0DB))),
          child: const CustomText(
            stringText: 'X',
            fontSize: 35,
          ),
        );
      },
    );
  }
}
