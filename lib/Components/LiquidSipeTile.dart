import 'package:flutter/material.dart';
import 'package:pricepulse/Consts/AppColors.dart';
import 'package:pricepulse/Consts/TextStyles.dart';

class LiquidSipeTile extends StatelessWidget {
  Color color1 , color2 ;
  String st;


  LiquidSipeTile(this.color1, this.color2, this.st);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      decoration: BoxDecoration(
          gradient:  LinearGradient(
            stops: [0.2, 1.0],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: <Color>[
              color1, // Replace with start color
              color2, // Replace with end color
            ],
          ) ),
      child: Padding(
        padding: EdgeInsets.all(20),
        child: Row(
          children: [
            Expanded(
                flex : 2,
                child: Text(
                    st,
                  style: HeadingText,
                )),
            Expanded(
                child: Image.asset('assets/images/sample.png'))
          ],
        ),
      ),
    );
  }
}
