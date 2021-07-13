import 'package:flutter/material.dart';

import 'floating_container.dart';

class BAFCC extends StatelessWidget {
  const BAFCC({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        Image.asset(
          '../../assets/images/tournament.jpg',
          height: 500,
        ),
        Positioned(
            top: 255,
            child: FloatingContainer(
                DateTime.now(), 'moreButtonText', 'turnajName')),
      ],
    );
  }
}
