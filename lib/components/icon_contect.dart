import 'package:bmi_calculator_finally/constans.dart';
import 'package:flutter/material.dart';

class IconContent extends StatelessWidget {
  final IconData ? icon ;
  final String ? labal ;
  IconContent({this.icon , this.labal});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, size: 80,),
        SizedBox(height: 15,),
        Text(labal! , style: KLabaleTextStyle,)
      ],
    );
  }
}