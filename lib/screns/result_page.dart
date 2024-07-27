import 'package:bmi_calculator_finally/components/Buttom_Button.dart';
import 'package:bmi_calculator_finally/constans.dart';
import 'package:bmi_calculator_finally/components/reusable_card.dart';
import 'package:flutter/material.dart';

class Resultpage extends StatelessWidget {
final String ? bmiresult , resultText , interpratation ;
Resultpage({required this.bmiresult , required this.resultText , required this.interpratation});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
    title: Text('result page'),
    ),
body: Column(
  crossAxisAlignment: CrossAxisAlignment.stretch,

  children: [Expanded(child: Container(
      alignment: Alignment.bottomLeft,
      padding: EdgeInsets.all(15),
      child: Text('YOUR RESULT' , style: KTitleTextstyle,)),),
            Expanded(flex: 5,
              child: ReusebleCard(
              child: Column(
                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                // crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [Text(resultText !.toUpperCase() , style: KResultTextstyle,),
                          Text(bmiresult !, style: KBMITextstyle,),
                  Column(
                    children: [
                      Text('Normal BMI range' , style: KGreyTextstyle,),
                      Text('18.5 - 25 kg/m2' , style: KBodyTextstyle,)
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: Text(interpratation ! , style: KBodyTextstyle,textAlign: TextAlign.center,),
                  ),
                ],
              ),
            ),),
    BottomButton(title: 'RE-CALCULATE', onTap: (){
      Navigator.pop(context);
    },),
  ],
),
    );
  }
}
