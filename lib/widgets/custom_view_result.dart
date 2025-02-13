
import 'package:flutter/material.dart';

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
            children: [Text('play2'), Text('5')],
          ),
          Column(
            children: [
              Text('play2'),
              Text('4'),
            ],
          ),
        ]),
        Text('result')
      ],
    );
  }
}
