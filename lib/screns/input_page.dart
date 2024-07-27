
import 'package:bmi_calculator_finally/calculator.dart';
import 'package:bmi_calculator_finally/components/Buttom_Button.dart';
import 'package:bmi_calculator_finally/components/Round_Icon_button.dart';
import 'package:bmi_calculator_finally/constans.dart';
import 'package:bmi_calculator_finally/components/icon_contect.dart';
import 'package:bmi_calculator_finally/screns//result_page.dart';
import 'package:bmi_calculator_finally/components/reusable_card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


enum Gender{male , female}

class InputPage extends StatefulWidget {

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender ? selectedGender ;
  int height = 160 ;
  int weight = 60;
  int age = 20 ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff0A0D22),
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
              child: Row(
                children: [
                  Expanded(child: ReusebleCard(
                    onPress: (){
                      setState(() {
                        selectedGender = Gender.male;
                      });
                    },
                    color: selectedGender == Gender.male ? KActiveCartColor:KInactiveCartColor,
                    child: IconContent(
                      icon: FontAwesomeIcons.mars,
                      labal: 'male',
                    ),
                  )),
                  Expanded(child: ReusebleCard(
                    onPress: (){
                      setState(() {
                        selectedGender = Gender.female;
                      });
                    },
                    color: selectedGender == Gender.female ? KActiveCartColor : KInactiveCartColor,
                    child: IconContent(
                      icon: FontAwesomeIcons.venus,
                      labal: 'female',
                    ),
                  )),

                ],
              )
          ),
          Expanded(child:ReusebleCard(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Height' , style: KLabaleTextStyle,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.alphabetic,
                  children: [
                    Text(height.toString(), style: KNumberTextstyle,),
                    Text('CM', style: KLabaleTextStyle,)
                  ],
                ),
                SliderTheme(
                  data: SliderTheme.of(context).copyWith(
                    trackHeight: 1,
                    inactiveTrackColor: Color(0xff8d8e98),
                    activeTrackColor: Colors.white,
                    overlayColor: Color(0x1feb1555),
                    thumbColor: Color(0xffeb1555),
                    thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15),
                    overlayShape: RoundSliderOverlayShape(overlayRadius: 30),

                  ),
                  child: Slider(
                      value: height.toDouble(),
                      min: 120,
                      max: 220,
                      onChanged:(double NewValue) {
                          setState(() {
                          height = NewValue.round();
                        });
                      }
                  ),
                )],
            ),
          ),

          ),
          Expanded(
              child: Row(
                children: [
                  Expanded(child: ReusebleCard(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Weight' , style: KLabaleTextStyle,),
                        Text(weight.toString() , style: KNumberTextstyle,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundIconButton(icon: FontAwesomeIcons.minus,
                            onPrees: (){
                              setState(() {
                                weight -- ;
                              });
                            },
                            ),
                            SizedBox(width: 10,),
                            RoundIconButton(icon: FontAwesomeIcons.plus,
                            onPrees: (){
                              setState(() {
                                weight ++ ;
                              });
                            },
                            ),
                          ],
                        )
                      ],
                    ),
                  )),
                  Expanded(child: ReusebleCard(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('age' , style: KLabaleTextStyle,),
                        Text(age.toString() , style: KNumberTextstyle,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundIconButton(icon: FontAwesomeIcons.minus,
                              onPrees: (){
                                setState(() {
                                  age -- ;
                                });
                              },
                            ),
                            SizedBox(width: 10,),
                            RoundIconButton(icon: FontAwesomeIcons.plus,
                              onPrees: (){
                                setState(() {
                                  age ++ ;
                                });
                              },
                            ),
                          ],
                        )
                      ],
                    ),
                  )),
                ],
              ),
          ),
          BottomButton(title: 'Calculate',onTap:
              (){
            Calculator calculator = Calculator(height: height, weight: weight);
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => Resultpage(
                  bmiresult: calculator.calculatorBMI() ,
                  resultText: calculator.getResult(),
                  interpratation: calculator.getInterpretion(),
                )));
          }
            ,),
        ],
      ),
        );
  }


}








