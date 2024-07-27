import 'package:bmi_calculator_finally/constans.dart';
import 'package:flutter/material.dart';


class ReusebleCard extends StatelessWidget {
  final Color ? color ;
  final Widget ? child ;
  final VoidCallback ? onPress;
  ReusebleCard({this.color , this.child , this.onPress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: child,
        margin: EdgeInsets.all(15),
        decoration: BoxDecoration(
          color:color ?? KActiveCartColor,
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}