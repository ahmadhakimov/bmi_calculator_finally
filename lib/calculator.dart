import 'dart:math';

class Calculator{
  final int ? height ;
  final int ? weight ;
  double _bmi = 0 ;
  Calculator({required this.height , required this.weight});
  String calculatorBMI(){
    _bmi = weight! / pow(height!/100, 2);
    return _bmi.toStringAsFixed(1);
  }
  String getInterpretion(){
    if(_bmi >= 25 ){
      return 'shoma choqtar az hade nuiaz hastid . kami varzesh kunid';
    }else if(_bmi >= 18.5){
      return 'you have a normal body weight good job';
    }else{
      return ' shoma loqartarid mitavanid bishtar byxyrid';
    }
  }
  String getResult(){
    if(_bmi >= 25){
      return 'overweight';
    }else if (_bmi >= 18.5){
      return 'Normal';
    }else{
      return ' underweight';
    }
  }

}