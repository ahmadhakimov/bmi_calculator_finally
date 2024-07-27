

import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  final IconData ? icon ;
  final VoidCallback ? onPrees ;
  RoundIconButton({required this.icon , required this.onPrees});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(onPressed: onPrees,
      shape: CircleBorder(),
      fillColor: Color(0xff4c4f5e),
      constraints: BoxConstraints.tightFor(width: 56.0 , height: 56.0),
      elevation: 6,
      child: Icon(icon),
    );
  }
}