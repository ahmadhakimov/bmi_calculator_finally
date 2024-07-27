import 'package:bmi_calculator_finally/constans.dart';
import 'package:flutter/material.dart';

class BottomButton extends StatelessWidget {
  final String ? title ;
  final VoidCallback ? onTap;
  BottomButton({required this.title , required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(child: Text(title !, style: KLargetextButton,)),
        color: KBottomContainarColor,
        margin: EdgeInsets.only(top :10),
        width: double.infinity,
        height: KBottonContainerHieght,
      ),
    );
  }
}