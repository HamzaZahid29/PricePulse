import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:pricepulse/Consts/TextStyles.dart';

class OptionTile extends StatelessWidget {
  String st;


  OptionTile(this.st);

  @override
  Widget build(BuildContext context) {
    return Padding(
    padding: EdgeInsets.all(1),
    child: Container(
      decoration: BoxDecoration(

        border: Border.all(color: Colors.grey.shade100),
        color: Colors.white
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 10,horizontal: 20),
        child: Row(
          children: [
            Expanded(child: Text(st,style: SmallBoldText.copyWith(color: Colors.grey.shade700),)),
            Icon(EvaIcons.arrowIosForwardOutline,color: Colors.grey.shade700,),
          ],
        ),
      ),
    ),
    );
  }
}
