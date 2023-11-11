import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:pricepulse/Consts/AppColors.dart';
import 'package:pricepulse/Consts/TextStyles.dart';

class ItemTile extends StatelessWidget {
  const ItemTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: Container(
        padding : EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(color: Colors.grey.shade100,offset: Offset(0, 0.1),blurRadius: 1)
            ]
        ),
        height: 250,
        width: 200,
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  color: BGColor,
                  borderRadius: BorderRadius.circular(10)
              ),
              width: 200,
              height:150,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Image.asset('assets/images/sample.png', fit: BoxFit.cover,),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Samsung", style: MedBoldText.copyWith(color: SecondaryColor),),
                  Icon(EvaIcons.heartOutline,color: BGColor,),
                ],),
            ),
            Padding(padding: EdgeInsets.only(bottom: 8),
              child: Text("Samsung galaxy s21 ultra 5g", style:MedBoldText ,),
            ),
            Padding(
                padding: EdgeInsets.only(top: 8),
                child: Row(
                  children: [
                    Text("Rs",textAlign: TextAlign.left, style:MedBoldText.copyWith(color: PrimaryColor) ,),
                    SizedBox(width: 4,),
                    Text("210000",textAlign: TextAlign.left, style:MedBoldText.copyWith(color: PrimaryColor) ,),
                  ],
                )),

          ],
        ),
      ),
    );
  }
}
