import 'package:flutter/material.dart';
import 'package:pricepulse/Consts/AppColors.dart';
import 'package:pricepulse/Consts/TextStyles.dart';
class SquareBtn extends StatelessWidget {
  String st;
  Function ff;


  SquareBtn(this.st, this.ff);

  @override
  Widget build(BuildContext context) {
    return TextButton(onPressed: (){ff;},
        style: ButtonStyle(
          elevation: MaterialStateProperty.all(3),
          backgroundColor: MaterialStateProperty.all(SecondaryColor)
        ),
        child: Padding(
      padding: const EdgeInsets.symmetric(vertical: 4,horizontal: 25),
      child: Text(st,style: SmallBoldText.copyWith(color: Colors.white),),
    ));
  }
}
